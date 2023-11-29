function modalAppearEvent(idx,month) {
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
    showSchedule(idx, month);
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
function showSchedule(idx, month) {
    var scheduleList = scheduleTreeJson[dateToString(idx, month)];
    if (scheduleList == null) {
        //일정이 없는경우
        return;
    }   
    
    document.getElementById("modalFooter").remove();;

    
    var modalFooter = document.createElement('div'); 
    modalFooter.id = "modalFooter";
    modalFooter.className = "modalFooter"; 
    document.getElementById("modalPage").appendChild(modalFooter);
    console.log("스케쥴리스트", scheduleList);
    for (var idx = 0; idx < scheduleList.length; idx++){
        var scheduleElementTime = scheduleList[idx].scheduleTime.slice(0, -3);;
        var scheduleElementText = scheduleList[idx].scheduleText;
        var scheduleBox = document.createElement('div'); 
        scheduleBox.id = "scheduleBox" + idx;
        scheduleBox.className = "scheduleBox";  
        document.getElementById("modalFooter").appendChild(scheduleBox);
        //
        var scheduleUpdateBox = document.createElement('div'); 
        scheduleUpdateBox.id = "scheduleUpdateBox" + idx;
        scheduleUpdateBox.className = "scheduleUpdateBox";  
        document.getElementById("modalFooter").appendChild(scheduleUpdateBox);
        //
        var scheduleTime = document.createElement('div'); 
        scheduleTime.id = "scheduleTime"+ idx;
        scheduleTime.className = "scheduleTime"; 
        document.getElementById("scheduleBox" + idx).appendChild(scheduleTime);
        document.getElementById("scheduleTime" + idx).innerHTML = scheduleElementTime;
        //
        var scheduleText = document.createElement('div'); 
        scheduleText.id = "scheduleText"+ idx;
        scheduleText.className = "scheduleText";  
        document.getElementById("scheduleBox" + idx).appendChild(scheduleText);
        document.getElementById("scheduleText" + idx).innerHTML = scheduleElementText;
        //
        var scheduleUpdate = document.createElement('input'); 
        scheduleUpdate.id = "scheduleUpdate" + idx;
        scheduleUpdate.className = "scheduleUpdate";
        scheduleUpdate.type = "button";
        scheduleUpdate.value = "수정";
        document.getElementById("scheduleBox" + idx).appendChild(scheduleUpdate);
        //
        var scheduleDelete = document.createElement('input'); 
        scheduleDelete.id = "scheduleDelete" + idx;
        scheduleDelete.className = "scheduleDelete";
        scheduleDelete.type = "button";
        scheduleDelete.value = "삭제";
        document.getElementById("scheduleBox" + idx).appendChild(scheduleDelete);
        //
        var scheduleBox = document.createElement('div'); 
        scheduleBox.id = "scheduleBox" + idx;
        scheduleBox.className = "scheduleBox";  
        document.getElementById("modalFooter").appendChild(scheduleBox);
        var scheduleUpdateBox = document.createElement('div'); 
        scheduleUpdateBox.id = "scheduleUpdateBox" + idx;
        scheduleUpdateBox.className = "scheduleUpdateBox";  
        document.getElementById("modalFooter").appendChild(scheduleUpdateBox);  
    }
}