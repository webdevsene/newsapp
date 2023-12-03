import React, { useState } from "react";
import { createRoot } from "react-dom/client";
import { Link, BrowserRouter as Router, Routes, Route, useParams } from "react-router-dom";
import Swal from "sweetalert2";
import axios from "axios";


const AddComment = ({ article_id }) => {


    const [contenu, setContenu] = useState('');

    const [isSaving, setIsSaving] = useState(false);

    const saveRecord = () => {
        setIsSaving(true);

        let formData = new FormData();

        formData.append('article_id', article_id);
        formData.append('contenu', contenu);

        if (article_id === "" || contenu === "") {
            
            Swal.fire({
                title: 'Error!',
                text: 'Commentaire ne doit pas être vide',
                icon: 'error',
                showConfirmButton: true,
                showCloseButton: true
            });

            setIsSaving(false);
        }else{

            // console.log(formData); return false;

            axios.post('/api/comments/add', formData)
                 .then(function (result) {
                     
                     Swal.fire({
                         position: "top-end",
                         icon: "success",
                         title: "Your work has been saved",
                         showConfirmButton: true,
                         timer: 1500
                     });
                     setIsSaving(false);
                     setContenu('');                      
                 })
                 .catch(function (error) {
                    Swal.fire({
                        position: "top-end",
                        icon: "error",
                        title: "Commentaire doit contenir du text",
                        showConfirmButton: true,
                        timer: 1500
                    });

                    setIsSaving(false);
                 })
        }

    }


    const handleUser = () => {

        


        Swal.fire({
            position: "center",
            icon: "warning",
            title: "Inscription requise pour envoyer un commentaire !",
            showConfirmButton: true,
            timer: 1500
        });
    }

    return (
        <>
            {/*<!-- Comment form-->*/}
            <form className="mb-4">
                <label htmlFor="contenu"></label>
                <textarea className="form-control mb-2" 
                        rows="3" 
                        placeholder="Envoyer un commentaire"
                        onChange={(event) => {setContenu(event.target.value)}}
                        onClick={handleUser}
                        value={contenu}
                        id="contenu"
                        name="contenu"
                >
                </textarea>

                <button type="button"
                        className="btn btn-outline-primary float-right"
                        disabled={isSaving}
                        onClick={saveRecord}
                >
                    Envoyer
                </button>
                
            </form>
        </>
    )
}

export default AddComment;

