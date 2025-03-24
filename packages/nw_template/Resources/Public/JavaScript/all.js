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

// modal
document.querySelector("#top .menu").addEventListener("click", function() {
    //document.getElementById("top").classList.toggle("sticky");
    document.body.classList.toggle("modal");
});
document.addEventListener('DOMContentLoaded', function() {
    var closeBtn = document.querySelector('.close-btn');

    closeBtn.addEventListener('click', function(event) {
        document.body.classList.remove("modal"); // Navigation schließen
    });
}); 
window.addEventListener("scroll", addScrolled);



