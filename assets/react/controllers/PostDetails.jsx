import React, { useState, useEffect } from "react";
import { Link, useParams } from "react-router-dom";
import axios from "axios";
import { Paper, Typography, Button, CardMedia } from '@mui/material';
import ResponsiveAppBar from "./ResponsiveAppBar";
import ReactMarkdown from 'react-markdown';
import "./../../css/blogposts.css";


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
                <div>

                    {/*<!-- Page content-->*/}
                    <div className="container mt-5">
                        <div className="row">
                            <div className="col-lg-8">
                                {/*<!-- Post content-->*/}
                                <article>
                                    {/*<!-- Post header-->*/}
                                    <header className="mb-4">
                                        {/*<!-- Post title-->*/}
                                        <h1 className="fw-bolder mb-1">{post.titre}</h1>
                                        {/*<!-- Post meta content-->*/}
                                        <div className="text-muted fst-italic mb-2">Par {`author`} le {new Date(post.createdAt).toLocaleDateString('fr-FR')}</div>
                                        {/*<!-- Post categories-->*/}
                                        <a className="badge bg-secondary text-decoration-none link-light" href="#!">Categorie Categorie</a>
                                        <a className="badge bg-secondary text-decoration-none link-light" href="#!">Freebies</a>
                                        <a className="badge bg-secondary text-decoration-none link-light" href="#!">Nombre de vue</a>
                                        <a className="badge bg-secondary text-decoration-none link-light" href="#!">Nombre de commentaires</a>
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
                                        <p className="fs-5 mb-4">{decodeHtml(post.contenu)} </p>
                                    </section>
                                </article>
                                {/*<!-- Comments section-->*/}
                                <section className="mb-5">
                                    <div className="card bg-light">
                                        <div className="card-body">
                                            {/*<!-- Comment form-->*/}
                                            <form className="mb-4"><textarea className="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea></form>
                                            {/*<!-- Comment with nested comments-->*/}
                                            <div className="d-flex mb-4">
                                                {/*<!-- Parent comment-->*/}
                                                <div className="flex-shrink-0"><img className="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                <div className="ms-3">
                                                    <div className="fw-bold">Commenter Name</div>
                                                    If you're going to lead a space frontier, it has to be government; it'll never be private enterprise. Because the space frontier is dangerous, and it's expensive, and it has unquantified risks.
                                                    {/*<!-- Child comment 1-->*/}
                                                    <div className="d-flex mt-4">
                                                        <div className="flex-shrink-0"><img className="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                        <div className="ms-3">
                                                            <div className="fw-bold">Commenter Name</div>
                                                            And under those conditions, you cannot establish a capital-market evaluation of that enterprise. You can't get investors.
                                                        </div>
                                                    </div>
                                                    {/*<!-- Child comment 2-->*/}
                                                    <div className="d-flex mt-4">
                                                        <div className="flex-shrink-0"><img className="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                        <div className="ms-3">
                                                            <div className="fw-bold">Commenter Name</div>
                                                            When you put money directly to a problem, it makes a good headline.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            {/*<!-- Single comment-->*/}
                                            <div className="d-flex">
                                                <div className="flex-shrink-0"><img className="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                <div className="ms-3">
                                                    <div className="fw-bold">Commenter Name</div>
                                                    When I look at the universe and all the ways the universe wants to kill us, I find it hard to reconcile that with statements of beneficence.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
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

                </div>
            )}


        </>
    );
}

export default PostDetails;
