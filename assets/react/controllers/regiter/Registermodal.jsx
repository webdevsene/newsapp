import { Button, Dialog } from '@mui/material';
import React from 'react'
import Registerform from './Registerform';

const Registermodal = ({isOpen, onClose}) => {

    const handleClose = () => {
        onClose();
    };


    return (
        <>
            <Dialog open={isOpen} onClose={handleClose} fullWidth maxWidth="sm">
                {/* Contenu du modal, remplacez par votre formulaire */}
                <div>
                    <h2 className='fs-4 fw-bolder mt-3 text-center'>Recevez notre daily Brief en devenant membre</h2>
                    <Registerform />
                    {/* Ajoutez d'autres éléments du formulaire ou du contenu du modal 
                    <Button onClick={handleClose}>Fermer</Button>
                    */}
                </div>
            </Dialog>
        </>
    )
};

export default Registermodal
