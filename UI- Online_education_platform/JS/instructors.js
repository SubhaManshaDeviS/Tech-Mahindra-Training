
document.querySelectorAll(".read-more").forEach(button => {
    button.addEventListener("click", function() {
        const details = this.nextElementSibling;
        details.style.display = details.style.display === "block" ? "none" : "block";
    });
});
