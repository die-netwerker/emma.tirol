if(document.getElementById("main").querySelectorAll(".frame-type-netwerk_hero").length != "0") {
    document.body.classList.add("hero");
} else {
    document.body.classList.add("nohero");
}; 


//Modal für Kontakt
document.querySelectorAll(".open-modal").forEach(button => {
    button.addEventListener("click", openModal);
});

function openModal() {
    document.body.classList.add("modal");
}

// Modal schließen
document.querySelectorAll(".close-btn").forEach(closeElement => {
    closeElement.addEventListener("click", closeModal);
});

function closeModal() {
    document.body.classList.remove("modal");
    document.body.classList.remove("mobile-modal");
}

//Modal für Responsive
document.querySelectorAll(".open-mobile-modal").forEach(button => {
    button.addEventListener("click", openMobileModal);
});

function openMobileModal() {
    document.body.classList.add("mobile-modal");
}


