import React, { useState, useEffect } from "react";
import { Link, useParams } from "react-router-dom";
import axios from "axios";
import { Paper, Typography, Button, CardMedia } from '@mui/material';
import ResponsiveAppBar from "./ResponsiveAppBar";
import ReactMarkdown from 'react-markdown';


function PostDetails() {

    const {id} = useParams();

    const [post, setPost] = useState({titre:"", featuredText:"", contenu:"", createdAt:"", url_image:""});

    useEffect(() => {

        console.log({id});
        axios.get(`/api/article/${id}`)
        .then((result) => {
            console.log(result);
            setPost(result.data);
            
        }).catch((err) => {
            console.log(err);
        });
    }, []);



    return(
        <div>
            <ResponsiveAppBar/>
            {post && (
                <div>
                <Paper elevation={3} style={{ padding: '2px', maxWidth: '600px', margin: '20px 170px' }}>
                    <CardMedia
                        component="img"
                        height="300"
                        image={`/uploads/posts/${post.url_image}`} // Remplacez par la propriété d'image de votre post
                        alt={post.titre}
                    />
                    <Typography variant="h4" gutterBottom>
                        {post.titre}
                    </Typography>
                    <Typography variant="subtitle1" color="textSecondary" gutterBottom>
                        Par {`author`} le {new Date(post.createdAt).toLocaleDateString('fr-FR')}
                    </Typography>
                    <Typography variant="body1" paragraph>
                        <ReactMarkdown>

                        {post.contenu}
                        </ReactMarkdown>
                    </Typography>
                    
                </Paper>
                </div>
            )}
        </div>
    );
}

export default PostDetails;