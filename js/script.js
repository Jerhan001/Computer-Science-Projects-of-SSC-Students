document.addEventListener("DOMContentLoaded", function () {
    // Hide the preloader when the content is fully loaded
    window.addEventListener("load", function () {
        const preloader = document.querySelector(".preloader");
        preloader.style.opacity = "0";
        setTimeout(() => {
            preloader.style.display = "none";
        }, 1000); // Adjust the delay as needed
    });
});
