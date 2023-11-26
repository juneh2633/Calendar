function checkSignup() {
    var doubleCheckValue = document.getElementById("doubleCheck").value;
    var idValue = document.getElementById("idValue").value;
    var passwordValue = document.getElementById("passwordValue").value;
    var passwordCheckValue = document.getElementById("passwordCheckValue").value;
    var phonenumberValue = document.getElementById("phonenumberValue").value;
    var nameValue = document.getElementById("nameValue").value;
    var pattern = /^[a-zA-Z0-9]{6,30}$/;
    var numPattern = /^\d{11}$/ 
    var namePattern = /^[가-힣a-zA-Z]{1,30}$/;
    if (doubleCheckValue == "0") {
        alert("중복확인을 해주세요.");
        return;        
    }
    if (!pattern.test(idValue)) {
        alert("아이디 형식이 올바르지 않습니다.");
        return;
    }
    if (!pattern.test(passwordValue)) {
        alert("비밀번호 형식이 올바르지 않습니다.");
        return;
    }
    if (passwordValue!=passwordCheckValue) {
        alert("비밀번호와 비밀번호확인이 동일하지 않습니다.");
        return;
    }    
    if (!pattern.test(passwordValue)) {
        alert("비밀번호 형식이 올바르지 않습니다.");
        return;
    }
    if (!numPattern.test(phonenumberValue)) {
        alert("전화번호 형식이 올바르지 않습니다.")
        return;
    }
    if (!namePattern.test(nameValue)) {
        alert("이름 형식이 올바르지 않습니다.")
        return;
    }    
    document.signupForm.submit();
}
function checkLogin() {
    var idValue = document.getElementById("idValue").value;
    var passwordValue = document.getElementById("passwordValue").value;
    var pattern = /^[a-zA-Z0-9]{6,30}$/;
    console.log(idValue);
    console.log(passwordValue);
    if (!pattern.test(idValue)) {
        alert("아이디 형식이 올바르지 않습니다.");
        return;
    }
    if (!pattern.test(passwordValue)) {
        alert("비밀번호 형식이 올바르지 않습니다.");
        return;
    }
    document.loginForm.submit();
}
