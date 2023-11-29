
function makeDateBoxEvent(month) {
    var day = 0;
    if (month == '2') {
        day = 28;
    }
    if (month == '1'||month == '3'||month == '5'||month == '7'||month == '8'||month == '10'||month == '12') {
        day = 31;
    }
    if (month == '4'||month == '6'||month == '9'||month == '11') {
        day = 30;
    }
    var check = document.getElementById("saveCheck");
    if (check.value == '1') {
        for (var idx = 1; idx <= 35; idx++){
            var dateBox = document.getElementById("dateBox" + idx);
            dateBox.remove();
        }
    }
    for (var idx = 1; idx <= 35; idx++){
        var dateBox = document.createElement('div'); 
        dateBox.id = "dateBox" + idx;
        dateBox.className = "dateBox";
        if (day >= idx) {
            dateBox.onclick = (function(index) {
                return function() { modalOpen(index); };
            })(idx);           
        }
        document.getElementById("calendarBox").appendChild(dateBox);
        var todayBox = document.createElement('div');
        todayBox.id = "todayBox" + idx;
        todayBox.className = "todayBox";
        if (day < idx) {
            continue;
        }
        todayBox.innerHTML = idx;
        document.getElementById("dateBox" + idx).appendChild(todayBox);
        var scheduleCountBox = document.createElement('div'); 
        scheduleCountBox.id = "scheduleCountBox" + idx;
        scheduleCountBox.className = "scheduleCountBox";
        document.getElementById("todayBox" + idx).appendChild(scheduleCountBox);
        scheduleCountInput(idx,month)
    }
    check.setAttribute('value', '1');
    var monthArea = document.getElementById("monthArea");
    monthArea.innerText = month + "월";

    
}
function modalOpen(idx)  {
    modalAppearEvent(idx);
}
function yearUp() {
    pageYear = parseInt(pageYear) + 1;
    var yearArea = document.getElementById("yearArea");
    var year = yearArea.innerHTML.slice(0, -1);
    yearArea.innerText = parseInt(year) + 1 + "년";  
    console.log(pageYear);
}
function yearDown() {
    pageYear = parseInt(pageYear) - 1;
    var yearArea = document.getElementById("yearArea");
    var year = yearArea.innerHTML.slice(0, -1);
    yearArea.innerText = parseInt(year) - 1 + "년";    
    console.log(pageYear);
}

function scheduleCountInput(idx,month) {
    var idxString = idx;
    if (idx < 10) {
        idxString = '0' + idx;
    }
    var dateString = pageYear + "-" + month + "-" + idxString;
    var scheduleList= scheduleTreeJson[dateString];
    if (scheduleList == null) {
        return;
    }
    var scheduleCount = scheduleList.length;
    if (scheduleCount >= 10) {
        scheduleCount = '9+';
    }
    document.getElementById("scheduleCountBox" + idx).innerHTML = scheduleCount;
}