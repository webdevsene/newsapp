import React from 'react';

export default function (props) {
    return <div>Hello {props.fullName}</div>;
}


export function getCurrentDate(separator=''){

    let newDate = new Date()
    let date = newDate.getDate();
    let month = newDate.getMonth() + 1;
    let year = newDate.getFullYear();

    // Obtenir le numéro du jour de la semaine (0 = Dimanche, 1 = Lundi, ..., 6 = Samedi)
    let numeroJour = newDate.getDay();

    // Tableau des noms de jours de la semaine
    const joursSemaine = ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi'];
    
    // Obtenir le nom du jour de la semaine à partir du tableau
    let nomJour = joursSemaine[numeroJour];
    
    
    return `${nomJour} ${date}, ${month<10?`0${month}`:`${month}`}${separator}${year}`
}


export function AfficherJourSemaine (date=null) {
    // Obtenir la date actuelle
    //const date = new Date();
  
    // Obtenir le numéro du jour de la semaine (0 = Dimanche, 1 = Lundi, ..., 6 = Samedi)
    const numeroJour = date.getDay();
  
    // Tableau des noms de jours de la semaine
    const joursSemaine = ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi'];
  
    // Obtenir le nom du jour de la semaine à partir du tableau
    const nomJour = joursSemaine[numeroJour];
  
    return nomJour;
  }