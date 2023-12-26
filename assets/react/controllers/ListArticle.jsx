import React, {useState, useEffect} from "react";
import axios from "axios";
import NewspaperIcon from '@mui/icons-material/Newspaper';
import Card from '@mui/material/Card';
import CardMedia from '@mui/material/CardMedia';
import CardContent from '@mui/material/CardContent';
import CardActions from '@mui/material/CardActions';
import Typography from '@mui/material/Typography';
import Button from '@mui/material/Button';
import TextTruncate from 'react-text-truncate';
import ResponsiveAppBar from "./ResponsiveAppBar";
import Slideshow from "./Slideshow";
import Footer from "./Footer";
import CalendarMonthIcon from '@mui/icons-material/CalendarMonth';
import VisibilityIcon from '@mui/icons-material/Visibility';
import Sidewidgets from "./Sidewidgets";


function ListArticle() {

    const  [listArticle, setListArticle] = useState([])

    const  [imageFileName, setImageFileName] = useState([])
  
    useEffect(() => {
        fetchListArticle()
    }, [])


    const fetchListArticle = () => {
        axios.get('/api/article')
        .then(function (response) {
            setListArticle(response.data);

        })
        .catch(function (error) {
            console.log(error);
        })

    }



    return (
        
        <>

            <ResponsiveAppBar/>

            <Slideshow/>


            <div className="container p-0 mt-2">
                <div className="row">

                    <div className="col-lg-8">

                        <div className="card">
                            <div className="card header">
                                <h2 className="text-left mt-1 p-2 mb-3"><NewspaperIcon/> Actualité </h2>
                                
                            </div>
                            <div className="card-body">
                    
                                <div className="row align-left">
                                        {listArticle.map((res, keys)=>{
                                            return (

                                                <Card sx={{ mx: 1, mb: 3, maxWidth: 292, paddingLeft: 0 }}>
                                                        
                                                        <a href={`/site/postdetails/${res.id}`}>
                                                            <CardMedia
                                                                sx={{ height: 140, width: 345}}
                                                                image={`/uploads/posts/${res.url_image}`}

                                                                title="green iguana/"
                                                                
                                                            
                                                            />

                                                        </a>
                                                        <CardContent>
                                                        
                                                        <Typography gutterBottom variant="h5" align="justify" component="div">
                                                            <TextTruncate
                                                                line={2}
                                                                element="span"
                                                                truncateText="…"
                                                                text= {res.titre}
                                                            />
                                                            
                                                            
                                                        </Typography>
                                                            
                                                        <Typography variant="inherit" align="justify" color="text.secondary">
                                                            <TextTruncate
                                                                line={3}
                                                                truncateText="..."
                                                                text={res.featuredText}
                                                            />
                                                        </Typography>
                                                        </CardContent>
                                                        <CardActions>
                                                                
                                                            <div className="d-flex justify-content-between">
                                                                <Button color="error" size="small"  href={`/site/postdetails/${res.id}`}>Lire plus</Button>                                     
                                                                <p className="card-text mx">
                                                                    <small className="text-muted"><CalendarMonthIcon/>{res.pubDate}, <VisibilityIcon/>{` lu ${res.viewCount} fois`}</small> 
                                                                </p>

                                                            </div>

                                                        </CardActions>
                                                </Card>

                                                
                                            )
                                        })}
                                </div>
                                
                            </div>
                        </div>

                    </div>


                    <Sidewidgets/>
                    
                </div>

            </div>
            

            <Footer/>
        
        </>
        


    );
    
}

export default ListArticle;