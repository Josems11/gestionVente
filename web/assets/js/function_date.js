function date_heure(idHour,idDate)
{
  dateAnio = new Date;
  annee = dateAnio.getFullYear();
  moi = dateAnio.getMonth();
  mois = new Array('Janvier', 'F&eacute;vrier', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Ao&ucirc;t', 'Septembre', 'Octobre', 'Novembre', 'D&eacute;cembre');
  j = dateAnio.getDate();
  jour = dateAnio.getDay();
  jours = new Array('Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi');
  h = dateAnio.getHours();
  if(h<10)
  {
    h = "0"+h;
  }
  m = dateAnio.getMinutes();
  if(m<10)
  {
    m = "0"+m;
  }
  document.getElementById(idDate).innerHTML = jours[jour] + ' ' + j + ' ' + mois[moi] + ' ' + annee;
  setTimeout('date_heure("'+idDate+'");','1000');
  return true;
}