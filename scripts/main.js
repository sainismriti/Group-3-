const myImage = document.querySelector("img");

// Path: scripts/main.js
// Get the banner element
const banner = document.getElementById(“banner”);
// Get the current window width
let windowWidth = window.innerWidth;
// Apply the window width to the banner
banner.style.width = windowWidth + “px”;
// Add a resize event listener to the window
window.addEventListener(“resize”, function() {
    // Get the new window width
    windowWidth = window.innerWidth;
    // Apply the new window width to the banner
    banner.style.width = windowWidth + “px”;
});