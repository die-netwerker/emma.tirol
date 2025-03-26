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

//Animationen
document.addEventListener("DOMContentLoaded", function () {
    const selectors = [
        ".frame-type-netwerk_teaserblack ul.items > li",
        ".frame-type-netwerk_hero header",
        ".frame-type-netwerk_textimages .images img",
        ".frame-type-netwerk_teasertext .items li",
    ]; // Hier kannst du beliebig viele Selektoren hinzufügen

    const items = document.querySelectorAll(selectors.join(", "));

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add("visible");
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.2 });

    items.forEach(item => observer.observe(item));
});

//mit Verzögerung pro Element
document.addEventListener("DOMContentLoaded", function () {
    const items = document.querySelectorAll(".frame-type-netwerk_teaser ul.teaser > li");

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach((entry, index) => {
            if (entry.isIntersecting) {
                setTimeout(() => {
                    entry.target.classList.add("visible");
                }, index * 180); // 150ms Verzögerung pro Element
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.2 });

    items.forEach(item => observer.observe(item));
});


