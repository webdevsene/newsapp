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
import HistoryEduIcon from '@mui/icons-material/HistoryEdu';
import CalendarMonthIcon from '@mui/icons-material/CalendarMonth';


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


            <div className="container p-0">
                <div className="row">

                    <div className="col-lg-9">

                        <div className="card">
                            <div className="card header">
                                <h2 className="text-left mt-1 p-2 mb-3"><NewspaperIcon/> Actualité </h2>
                                
                            </div>
                            <div className="card-body">
                    
                                <div className="row align-left">
                                        {listArticle.map((res, keys)=>{
                                            return (

                                                <Card sx={{ mx: 1, mb: 3, maxWidth: 305, paddingLeft: 0 }}>
                                                        
                                                        <a href={`/site/postdetails/${res.id}`}>
                                                            <CardMedia
                                                                sx={{ height: 140, width: 345}}
                                                                image={`/uploads/posts/${res.url_image}`}

                                                                title="green iguana/"
                                                                
                                                            
                                                            />

                                                        </a>
                                                        <CardContent>
                                                        
                                                        <Typography gutterBottom variant="inherit" component="div">
                                                            <TextTruncate
                                                                line={2}
                                                                element="span"
                                                                truncateText="…"
                                                                text= {res.titre}
                                                            />
                                                            
                                                            
                                                        </Typography>
                                                            
                                                        <Typography variant="body2" color="text.secondary">
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
                                                                <p className="card-text mx-2">
                                                                    <small className="text-muted"> <HistoryEduIcon/>{res.createdby}, <CalendarMonthIcon/>{res.pubDate}</small> 
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

                    {/*<!-- Side widgets-->*/}
                    <div className="col-lg-3">
                        {/*<!-- Search widget-->*/}
                        <div className="card mb-4">
                            <div className="card-header">Search</div>
                            <div className="card-body">
                                <div className="input-group">
                                    <input className="form-control" type="text" placeholder="Enter search term..." aria-label="Enter search term..." aria-describedby="button-search" />
                                    <button className="btn btn-primary" id="button-search" type="button">Go!</button>
                                </div>
                            </div>
                        </div>

                        {/** <!-- Categories widget-->
                         * 
                        */}
                        <div className="card mb-4">
                            <div className="card-header">Categories</div>
                            <div className="card-body">
                                <div className="row">
                                    <div className="col-sm-6">
                                        <ul className="list-unstyled mb-0">
                                            <li><a href="#!">Web Design</a></li>
                                            <li><a href="#!">HTML</a></li>
                                            <li><a href="#!">Freebies</a></li>
                                        </ul>
                                    </div>
                                    <div className="col-sm-6">
                                        <ul className="list-unstyled mb-0">
                                            <li><a href="#!">JavaScript</a></li>
                                            <li><a href="#!">CSS</a></li>
                                            <li><a href="#!">Tutorials</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>


                        {/*#<!-- Side widget-->*/}
                        {/* Commentaire à l'intérieur des balises JSX */}
                        <div className="card mb-4">
                            <div className="card-header">Side Widget</div>
                            <div className="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5 card component!</div>
                        </div>
                    </div>                    

                </div>

            </div>
            

            <Footer/>
        
        </>
        


    );
    
}

export default ListArticle;