function modalAppearEvent(idx) {
    var modalPage = document.getElementById("modalPage");
    modalPage.style.display = "flex";
    var modalDate = document.getElementById("modalDate");
    modalDate.innerHTML = idx + "일";
    var scheduleDay = document.getElementById("scheduleDay");
    var scheduleMonth = document.getElementById("scheduleMonth");
    var scheduleYear = document.getElementById("scheduleYear");

    scheduleDay.value = idx;
    scheduleMonth.value = document.getElementById("monthArea").innerText.slice(0, -1);
    scheduleYear.value = document.getElementById("yearArea").innerText.slice(0, -1);
    console.log(scheduleDay.value);
    console.log(scheduleMonth.value);
    console.log(scheduleYear.value);

}
function modalDisappearEvent() {
    var modalPage = document.getElementById("modalPage");
    modalPage.style.display = "none";    
}
function insertSchedule() {
    var modalInputTime = document.getElementById("modalInputTime");
    if (modalInputTime.value == "") {
        alert("시간을 넣어주세요");
        return;
    }
    var modalInputSchedule = document.getElementById("modalInputSchedule");
    if (modalInputSchedule.value=="") {
        alert("일정을 넣어주세요");
        return;
    }
    console.log(modalInputTime.value);
    console.log(modalInputSchedule.value);
    document.inputScheduleForm.submit();
}