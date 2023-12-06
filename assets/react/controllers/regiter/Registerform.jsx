import React from 'react'
import PropTypes from 'prop-types'

const  Registerform = ()  => {
  return (
    <>
      <div className="container px-5 my-5">
            <form id="contactForm" >
                <div className="mb-3">
                    <label className="form-label" htmlFor="emailAddress">Email </label>
                    <input className="form-control" id="emailAddress" type="email" placeholder="Email Address" data-sb-validations="required,email" />
                    <div className="invalid-feedback" data-sb-feedback="emailAddress:required">Email Address is required.</div>
                    <div className="invalid-feedback" data-sb-feedback="emailAddress:email">Email Address Email is not valid.</div>
                </div>
                <div className="mb-3">
                    <label className="form-label" htmlFor="prenomNom">Prenom &amp; nom</label>
                    <input className="form-control" id="prenomNom" type="text" placeholder="Prenom &amp; nom" data-sb-validations="required" />
                    <div className="invalid-feedback" data-sb-feedback="prenomNom:required">Prenom &amp; nom is required.</div>
                </div>
                <div className="mb-3">
                    <label className="form-label" htmlFor="nomUtilisateur">Pseudo</label>
                    <input className="form-control" id="nomUtilisateur" type="text" placeholder="Nom utilisateur" data-sb-validations="required" />
                    <div className="invalid-feedback" data-sb-feedback="nomUtilisateur:required">Nom utilisateur is required.</div>
                </div>
                <div className="mb-3">
                    <label className="form-label" htmlFor="motDePass">Mot de pass</label>
                    <input className="form-control" id="motDePass" type="text" placeholder="Mot de pass" data-sb-validations="required" />
                    <div className="invalid-feedback" data-sb-feedback="motDePass:required">Mot de pass is required.</div>
                </div>
                <div className="d-grid">
                    <button className="btn btn-primary btn-lg " id="submitButton" type="submit">Submit</button>
                </div>
            </form>
        </div>
    </>
  )
};

export default Registerform

