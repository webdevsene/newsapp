import React, { useState } from "react";
import { createRoot } from "react-dom/client";
import { Link, BrowserRouter as Router, Routes, Route, useParams } from "react-router-dom";
import Swal from "sweetalert2";
import axios from "axios";
import Registermodal from "./regiter/Registermodal";


const AddComment = ({ article_id, userData  }) => {


    const [contenu, setContenu] = useState('');

    const [isSaving, setIsSaving] = useState(false);


    const [isModalOpen, setModalOpen] = useState(false);

    const handleOpenModal = () => {

        console.log(userData);

        /**ici on peut mettre le test if app.user open modal else doanythink */
        if (userData ) {
            setModalOpen(true);
            
        }else{

        }
    };
  
    const handleCloseModal = () => {
      setModalOpen(false);
    };




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
                         title: "Votre commentaire est ajouté avec succès",
                         showConfirmButton: true,
                         timer: 1500
                     });
                     setIsSaving(false);
                     setContenu('');
                     
                     window.location.reload(true);
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
                        onClick={handleOpenModal}
                        value={contenu}
                        id="contenu"
                        name="contenu"
                >
                </textarea>

                <button type="button"
                        className="btn btn-outline-danger float-right"
                        disabled={isSaving}
                        onClick={saveRecord}
                >
                    <i className="fa fa-paper-plane"></i> Envoyer
                </button>
                
            </form>

            {/* Composant modal intégré */}
            <Registermodal isOpen={isModalOpen} onClose={handleCloseModal} />

            
        </>
    )
}

export default AddComment;

