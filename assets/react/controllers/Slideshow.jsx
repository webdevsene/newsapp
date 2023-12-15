import React, { useEffect, useState } from 'react';
import { Fade } from 'react-slideshow-image';
import Box from '@mui/material/Box';
import Grid from '@mui/material/Grid';
import { CardMedia, Container } from '@mui/material';
import ImageList from '@mui/material/ImageList';
import ImageListItem from '@mui/material/ImageListItem';
import ImageListItemBar from '@mui/material/ImageListItemBar';
import IconButton from '@mui/material/IconButton';
import InfoIcon from '@mui/icons-material/Info';
import ListArticle from './ListArticle';
import axios from 'axios';
import ResponsiveAppBar from './ResponsiveAppBar';


const fadeImages = [
  {
    url: 'https://images.unsplash.com/photo-1509721434272-b79147e0e708?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
    caption: 'First Slide'
  },
  {
    url: 'https://images.unsplash.com/photo-1506710507565-203b9f24669b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1536&q=80',
    caption: 'Second Slide'
  },
  {
    url: 'https://images.unsplash.com/photo-1536987333706-fc9adfb10d91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
    caption: 'Third Slide'
  },
];


const itemData = [
    {
      img: 'https://images.unsplash.com/photo-1551963831-b3b1ca40c98e',
      title: 'Breakfast',
      author: '@bkristastucchio',
      rows: 2,
      cols: 2,
      featured: true,
    },
    {
      img: 'https://images.unsplash.com/photo-1551782450-a2132b4ba21d',
      title: 'Burger',
      author: '@rollelflex_graphy726',
    },
    {
      img: 'https://images.unsplash.com/photo-1522770179533-24471fcdba45',
      title: 'Camera',
      author: '@helloimnik',
    },
    {
      img: 'https://images.unsplash.com/photo-1444418776041-9c7e33cc5a9c',
      title: 'Coffee',
      author: '@nolanissac',
      cols: 2,
    }
  ];
  
  
  function Slideshow () {
      
    const [grandeUnes, setGrandeUnes] = useState([]);

    const [headlines, setHeadlines] = useState([]);

    /*useEffect(()=>{
        axios.get('/api/postsgrandeune')
             .then(result => {
                 setGrandeUnes(result.data);
                
             }).catch((err) => {
                
             });

             
    }, []);*/


    useEffect(()=>{

      const req1 = axios.get('/api/postsgrandeune');
      const req2 = axios.get('/api/headlines');

      Promise.all([req1, req2])
             .then(result => {
                setGrandeUnes(result[0].data);
                setHeadlines(result[1].data);

             })
             .catch(errors => {
                console.error('Erreurs lors des requêtes Axios:', errors);
            });

             
    }, []);





    return (

        //
      <>

        <div className="p-0 container">
            <div className="row m-0">


                <div className="p-0 col-sm-8">

                  <div className="slide-container" >

                      <Fade>
                          {grandeUnes["data"] ?  grandeUnes['data'].map(fadeImage => {
                              return (<>
                                                                                  
                                  <div>
                                      <img style={{ width: '100%', height: 360 }} 
                                          src={`/uploads/posts/${fadeImage.url_image}`}
                                          loading="lazy"
                                      />

                                      <a href={`/site/postdetails/${fadeImage.id}`}>
                                        <ImageListItemBar
                                            title={fadeImage.titre}
                                            subtitle={ `par @${fadeImage.createdby} dans la catégorie ${fadeImage.categorie}`}
                                        />                                        

                                      </a>

                                  </div>
                              </>)
                          }) : ""}                                
                      </Fade>
                          
                  </div>
                </div>


                <div className="p-0 col-sm-4 mt-0">

                    {headlines["data"] && headlines["data"].map(item => {
                      
                      return (
                        <>
                          <div className='mx-0'
                               style={{ width: '100%'}}
                          >

                          <ImageListItem cols={1} rows={2}
                                         
                          >


                            

                            <CardMedia
                              sx={{ height: 180}}
                              image={`/uploads/posts/${item.url_image}`}
                              
                              title="green iguana/"
                              alt={item.titre}
                              loading="lazy"
                              
                              
                            />

                            <a href={`/site/postdetails/${item.id}`}>

                              <ImageListItemBar
                                  title={item.titre}
                                  subtitle={`par ${item.createdby}`}
                                  position='bottom'
                                  actionIcon={
                                  <IconButton
                                      sx={{ color: 'rgba(255, 255, 255, 0.54)' }}
                                      aria-label={`info about ${item.titre}`}
                                  >
                                      <InfoIcon />
                                  </IconButton>
                                  }
                                 
                              />
                            </a>
                            </ImageListItem>
                          </div>                                               
                          
                        </>
                      )
                    })}

                </div>

            </div>
        </div>
      
      </>


    )
}

export default Slideshow;