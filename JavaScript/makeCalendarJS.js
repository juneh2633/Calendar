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
        var scheduleBox = document.createElement('div'); 
        scheduleBox.id = "scheduleBox" + idx;
        scheduleBox.className = "scheduleBox";
        document.getElementById("todayBox" + idx).appendChild(scheduleBox);
    }
    check.setAttribute('value', '1');
    var monthArea = document.getElementById("monthArea");
    monthArea.innerText = month + "월";
}

function modalOpen(idx)  {
    modalAppearEvent(idx);
}
function yearUp() {
    var yearArea = document.getElementById("yearArea");
    var year = yearArea.innerHTML.slice(0, -1);
    yearArea.innerText = parseInt(year)+1 + "년";    
}
function yearDown() {
    var yearArea = document.getElementById("yearArea");
    var year = yearArea.innerHTML.slice(0, -1);
    yearArea.innerText = parseInt(year)-1 + "년";    
}