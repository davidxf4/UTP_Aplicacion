function nobackbutton() {
    window.location.hash = "lusor";
    window.location.hash = "Lusor" //chrome 
    window.onhashchange = function () { window.location.hash = "lusor"; }
}

