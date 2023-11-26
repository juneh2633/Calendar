function doubleCheckEvent() {
    var idValue = document.getElementById("idValue").value;
    var pattern = /^[a-zA-Z0-9]{6,30}$/;
    if (!pattern.test(idValue)) {
        alert("아이디 형식이 올바르지 않습니다.");
        return;
    }   
    alert("사용가능한 아이디입니다.")
    var idInputBox=document.getElementById("idValue");
    idInputBox.disabled = true;
    idInputBox.style.backgroundColor = "white";
    idInputBox.style.color = "black";
    document.getElementById("doubleCheck").value=1;
    //window.location.href="../Calendar/action/doubleCheckAction.jsp?idValue="+idValue;
}
