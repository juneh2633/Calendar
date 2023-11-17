function modalAppearEvent(idx) {
    var modalPage = document.getElementById("modalPage");
    modalPage.style.display = "flex";
    var modalDate = document.getElementById("modalDate");
    modalDate.innerHTML = idx + "일";
}
function modalDisappearEvent() {
    var modalPage = document.getElementById("modalPage");
    modalPage.style.display = "none";    
}