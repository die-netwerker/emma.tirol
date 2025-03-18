if(document.getElementById("main").querySelectorAll(".frame-type-netwerk_hero").length != "0") {
    document.body.classList.add("hero");
} else {
    document.body.classList.add("nohero");
}; 

function addScrolled() {
    let sp = window.scrollY;
    if (sp >= 8) {
        document.body.classList.add("scrolled");
    } else {
        document.body.classList.remove("scrolled");
    }
};
window.addEventListener("scroll", addScrolled);



