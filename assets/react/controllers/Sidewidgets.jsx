import { ImageListItem } from '@mui/material';
import axios from 'axios';
import React, { useEffect, useState } from 'react'

export default function Sidewidgets() {

    const [widgets, setWidgets] = useState({id:"", titre:"", contenu:"", urlImage:"", createdAt:"", updatedAt:""});


    useEffect(() => {

        axios.get(`/api/widgets`)
        .then((result) => {

            console.log(result.data);

            setWidgets(result.data);
            
        }).catch((err) => {
            console.log(err);
        });


    }, []);
    
    
    return (
        <>
            {/*<!-- Side widgets-->*/}
            <div className="col-lg-4">


                {/**side widget lien radio rewmi.fm */}
                <div className="card mb-4">

                    <fieldset className="border p-1">
                        <legend className="float-none w-auto h6 fw-bold">Rewmi FM 97.5</legend>
                        <audio className='w-100' controls>
                            <source src="http://stream-15.zeno.fm/nkzsqg16t8quv?zs=OA_jz27RSNmWiGWKQeDxvg" type="audio/mpeg"/>
                        </audio>
                    </fieldset>
                </div>


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


                {widgets['widgets'] && widgets['widgets'].map((res) =>{

                    return (
                        <>



                            {/*#<!-- Side widget-->*/}
                            {/* Commentaire à l'intérieur des balises JSX */}
                            <div className="card mb-4">
                                <div className="card-header">Side Widget</div>
                                <div className="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5 card component!</div>
                            </div>


                            {/*#<!-- Side widget-->*/}
                            {/* group promo consulting */}
                            <div className="card mb-4">

                                <fieldset className="border p-1">
                                    <legend className="float-none w-auto h6 fw-bold">{res.titre}</legend>

                                    <ImageListItem key={res.urlImage}>
                                        <img
                                            srcSet={`/uploads/posts/${res.urlImage}`}
                                            src={`/uploads/posts/${res.urlImage}`}
                                            alt={res.titre}
                                            loading="lazy"
                                        />
                                    </ImageListItem>

                                </fieldset>

                            </div>
                        </>
                    );
                })}


            </div>

        </>
    )
}
