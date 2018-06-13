//Variables associées à la fiche RFC1149
var onglet_rfc1149 = document.getElementById("rfc1149");
var content_rfc1149 = document.getElementById("rfc1149_article");
var anchor_nav_rfc1149 = document.getElementById("anchor_nav_rfc1149");

//Variables associées à la fiche RFC2549
var onglet_rfc2549 = document.getElementById("rfc2549");
var content_rfc2549 = document.getElementById("rfc2549_article");
var anchor_nav_rfc2549 = document.getElementById("anchor_nav_rfc2549");

//Variables associées à la fiche RFC6214
var onglet_rfc6214 = document.getElementById("rfc6214");
var content_rfc6214 = document.getElementById("rfc6214_article");
var anchor_nav_rfc6214 = document.getElementById("anchor_nav_rfc6214");

//Fonction affichant les informations de la fiche RFC1149 et cachant les autres
function afficher_rfc1149() {
//La boucle if permet de réaliser le changement visuel sur la navigation d'en-tête et jouer sur l'aspect visuel
    if (onglet_rfc1149.getAttribute("aria-selected") == "false"){
        onglet_rfc1149.setAttribute("aria-selected", "true");
        onglet_rfc2549.setAttribute("aria-selected", "false");
        onglet_rfc6214.setAttribute("aria-selected", "false");

//Modifie le css afin de transformer l'onglet en onglet actif
        onglet_rfc1149.setAttribute("style", "border-top: 1em solid white;");
        onglet_rfc2549.style.removeProperty("border-top");
        onglet_rfc6214.style.removeProperty("border-top");
    };

    content_rfc1149.hidden = false;
    anchor_nav_rfc1149.hidden = false;

    content_rfc2549.hidden = true;
    anchor_nav_rfc2549.hidden = true;

    content_rfc6214.hidden = true;
    anchor_nav_rfc6214.hidden = true;

}

//Fonction affichant les informations de la fiche RFC2549 et cachant les autres
function afficher_rfc2549() {
//La boucle if permet de réaliser le changement visuel sur la navigation d'en-tête et jouer sur l'aspect visuel
    if (onglet_rfc2549.getAttribute("aria-selected") == "false"){
        onglet_rfc2549.setAttribute("aria-selected", "true");
        onglet_rfc1149.setAttribute("aria-selected", "false");
        onglet_rfc6214.setAttribute("aria-selected", "false");

//Modifie le css afin de transformer l'onglet en onglet actif
        onglet_rfc2549.setAttribute("style", "border-top: 1em solid white;");
        onglet_rfc1149.style.removeProperty("border-top");
        onglet_rfc6214.style.removeProperty("border-top");
    };

    content_rfc1149.hidden = true;
    anchor_nav_rfc1149.hidden = true;

    content_rfc2549.hidden = false;
    anchor_nav_rfc2549.hidden = false;

    content_rfc6214.hidden = true;
    anchor_nav_rfc6214.hidden = true;
}

//Fonction affichant les informations de la fiche RFC6214 et cachant les autres
function afficher_rfc6214(){
//La boucle if permet de réaliser le changement visuel sur la navigation d'en-tête et jouer sur l'aspect visuel
    if (onglet_rfc6214.getAttribute("aria-selected") == "false"){
        onglet_rfc6214.setAttribute("aria-selected", "true");
        onglet_rfc1149.setAttribute("aria-selected", "false");
        onglet_rfc2549.setAttribute("aria-selected", "false");

//Modifie le css afin de transformer l'onglet en onglet actif
        onglet_rfc6214.setAttribute("style", "border-top: 1em solid white;");
        onglet_rfc1149.style.removeProperty("border-top");
        onglet_rfc2549.style.removeProperty("border-top");
    };

    content_rfc1149.hidden = true;
    anchor_nav_rfc1149.hidden = true;

    content_rfc2549.hidden = true;
    anchor_nav_rfc2549.hidden = true;

    content_rfc6214.hidden = false;
    anchor_nav_rfc6214.hidden = false;
}

//Lors du chargement de la page, permet de cacher tous les éléments externes
window.addEventListener("load", function(event){
    onglet_rfc1149.style.cssText = "border-top: 1em solid white;";

    content_rfc2549.hidden = true;
    anchor_nav_rfc2549.hidden = true;

    content_rfc6214.hidden = true;
    anchor_nav_rfc6214.hidden = true;
})

//Appel les fonction associées pour le changement "d'onglet"
onglet_rfc1149.addEventListener("click", afficher_rfc1149);
onglet_rfc2549.addEventListener("click", afficher_rfc2549);
onglet_rfc6214.addEventListener("click", afficher_rfc6214);