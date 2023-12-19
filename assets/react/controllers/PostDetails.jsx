import React, { useState, useEffect } from "react";
import { Link, useParams } from "react-router-dom";
import axios from "axios";
import { Paper, Typography, Button, CardMedia, Divider } from '@mui/material';
import ResponsiveAppBar from "./ResponsiveAppBar";
import ReactMarkdown from 'react-markdown';
import "./../../css/blogposts.css";
import Footer from "./Footer";
import ReactHtmlParser from 'html-react-parser';
import AddComment from "./AddComment";
import ForumIcon from '@mui/icons-material/Forum';
import SmsIcon from '@mui/icons-material/Sms';
import VisibilityIcon from '@mui/icons-material/Visibility';
import CategoryIcon from '@mui/icons-material/Category';

function PostDetails() {

    const {id} = useParams();

    const [post, setPost] = useState({titre:"", featuredText:"", contenu:"", categorie:"", createdAt:"", url_image:"", createdBy:"", commentsCount:0, viewCount:0});


    const [comments, setComments] = useState({id:"", contenu:"", createdAt:"", createdBy:""});

    useEffect(() => {

        console.log({id});
        axios.get(`/api/article/${id}`)
        .then((result) => {
            setPost(result.data);
            
        }).catch((err) => {
            console.log(err);
        });

        axios.get(`/api/articles/${id}/comments`)
             .then((reponse) => {
                setComments(reponse.data);
             })
             .catch((error)=>{
                console.log(error);
             });


    }, []);


    /*C'est ma méthode préférée pour décoder les caractères HTML. 
    L'avantage d'utiliser ce code est que les balises sont également préservées.*/
    function decodeHtml(html) {
        var txt = document.createElement("textarea");
        txt.innerHTML = html;
        return txt.value;
    }

    return(
        <>
            <ResponsiveAppBar/>

            {post && (
                <>

                    {/*<!-- Page content-->*/}
                    <div className="container mt-5">
                        <div className="row">
                            <div className="col-lg-8">
                                {/*<!-- Post content-->*/}
                                <article>
                                    {/*<!-- Post header-->*/}
                                    <header className="mb-4">
                                        {/*<!-- Post title-->*/}
                                        <h1 className="fs-4 fw-bolder mb-1">{post.titre}</h1>
                                        {/*<!-- Post meta content-->*/}
                                        <div className="text-muted fst-italic mb-2">Par {post.createdby} le {new Date(post.createdAt).toLocaleDateString('fr-FR')}</div>
                                        {/*<!-- Post categories-->*/}
                                        <a className="badge bg-secondary text-decoration-none link-light mx-1" href="#!"> <VisibilityIcon/>  {post.viewCount} vues</a>
                                        <a className="badge bg-secondary text-decoration-none link-light" href="#!"> <CategoryIcon/> {post.categorie}</a>
                                    </header>
                                    {/*<!-- Preview image figure-->*/}
                                    <figure className="mb-4">
                                            <img className="img-fluid rounded" 
                                                src={`/uploads/posts/${post.url_image}`}
                                                alt="..."
                                                style={{ width: '100%', height: 328 }} 
                                                loading="lazy" 
                                            />
                                    </figure>
                                    {/*<!-- Post content-->*/}
                                    <section className="mb-5">
                                        <p className="fs-5 mb-4">{post.featuredText}</p>
                                        {ReactHtmlParser(decodeHtml(post.contenu)) } 
                                    </section>
                                </article>


                                {/**ici en-tête du box commentaire */}
                                <h5 className=""><ForumIcon/> {post.commentsCount} Commentaire{post.commentsCount > 1 ? 's' : ''} </h5>
                                <hr 
                                    style={{
                                        background: "#F6432D",
                                        height: "2px",
                                        border: "none",
                                    }}
                                
                                />
                                <Divider/>

                                {/*<!-- Comments section-->*/}

                                {comments && (
                                    <section className="mb-5">
                                        <div className="card bg-light">
                                            <div className="card-body">
                                                <h5><SmsIcon/> Laisser un commentaire</h5>
                                                
                                                <AddComment article_id={id} />

                                                {/*<!-- Single comment-->*/}
                                                
                                                {comments['comments'] ? comments['comments'].map(clef => {
                                                    return (
                                                        <>
                                                            <div className="d-flex mt-3">
                                                                <div className="flex-shrink-0"><img className="rounded-circle" src="https://www.gravatar.com/avatar/$hashedEmail?s=50" alt="..." /></div>
                                                                <div className="ms-3">
                                                                    <div className="fw-bold">De {clef.createdBy}, <small className="text-muted fst-italic">le {clef.createdAt}</small></div> 
                                                                        {clef.contenu}
                                                                </div>
                                                            </div>
                                                        
                                                        </>
                                                    );
                                                }) : ""}

                                            </div>
                                        </div>
                                    </section>

                                )}
                            </div>





                            {/*<!-- Side widgets-->*/}
                            <div className="col-lg-4">
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

                </>
            )}

            <Footer/>
        </>
    );

}

export default PostDetails;
