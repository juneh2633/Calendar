function checkSignup() {
    var idValue = document.getElementById("idValue");
    var passwordValue = document.getElementById("passwordValue");
    var passwordCheckValue = document.getElementById("passwordCheckValue");
    var phonenumberValue = document.getElementById("phonenumberValue");
    var nameValue = document.getElementById("nameValue");
    var grade = document.getElementsByName('grade');
    var pattern = /^[a-zA-Z0-9!@#$%^&*()_+{}\[\]:;<>,.?~\\-]{6,30}$/;
    var numPattern = /^\d{11}$/ 
    var NamePattern = /^[가-힣a-zA-Z]{1,30}$/;
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
