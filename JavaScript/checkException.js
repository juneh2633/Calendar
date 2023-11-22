function checkSignup() {
    // 입력된 값 가져오기
    var idValue = document.getElementById("idValue");
    var passwordValue = document.getElementById("passwordValue");
    var passwordCheckValue = document.getElementById("passwordCheckValue");
    var phonenumberwordValue = document.getElementById("phonenumberValue");
    var nameValue = document.getElementById("nameValue");
    var grade = document.getElementsByName('grade');

    // 정규표현식 패턴
    var pattern = /^[a-zA-Z0-9!@#$%^&*()_+{}\[\]:;<>,.?~\\-]{6,30}$/;

    // 정규표현식 패턴과 매치 여부 확인
    if (pattern.test(inputValue)) {
        alert("올바른 형식의 아이디입니다.");
    } else {
        alert("올바른 형식의 아이디를 입력하세요.");
    }
}
