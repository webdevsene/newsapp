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


function ListArticle() {

    const  [listArticle, setListArticle] = useState([])

    const  [imageFileName, setImageFileName] = useState([])
  
    useEffect(() => {
        fetchListArticle()
    }, [])


    const fetchListArticle = () => {
        axios.get('/api/article')
        .then(function (response) {
            console.log(response);
            setListArticle(response.data);

        })
        .catch(function (error) {
            console.log(error);
        })
    }



    return (
        
        

            <div className="container">
                    <div className="card">
                        <div className="card header">
                            <h2 className="text-left mt-1 p-2 mb-3"><NewspaperIcon/> Actualité </h2>
                            
                        </div>
                        <div className="card-body">
                
                            <div className="row align-left">
                                    {listArticle.map((res, key)=>{
                                        return (

                                            

                                            <Card sx={{ mx: 1, mb: 3, maxWidth: 305 }}>
                                                <CardMedia
                                                sx={{ height: 140 }}
                                                image={`/uploads/posts/${res.url_image}`}

                                                title="green iguana/"
                                                
                                                
                                                />
                                                <CardContent>
                                                <Typography gutterBottom variant="h6" component="div">
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
                                                <Button size="small">Share</Button>
                                                <Button size="small">Learn More</Button>
                                                </CardActions>
                                          </Card>
                                              
                                        )
                                    })}
                            </div>
                            
                        </div>
                    </div>
            </div>

    );
    
}

export default ListArticle;