/**
 * 
 */
	// 유효성 voolean
	var idcheck = false;
	var passcheck = false;
	var repasscheck = false;
	var namecheck = false;
	var phonecheck = false;
	var emailcheck = false;
	
	// input이 있는 div
	const userid = document.querySelector("#id-box");
	const userpass = document.querySelector("#password-box");
	const userrepass = document.querySelector("#repassword-box");
	const username = document.querySelector("#name-box");
	const userphone = document.querySelector("#phone-box");
	const useremail = document.querySelector("#email-box");
	
	// 회원가입 form
	const form = document.querySelector('#regist');
	
	// 이벤트 부여
	userid.querySelector("input").onblur = idchk;
	userpass.querySelector("input").onblur = passchk;
	userrepass.querySelector("input").onblur = repasschk;
	username.querySelector("input").onblur = namechk;
	userphone.querySelector("input").onblur = phonechk;
	useremail.querySelector("input").onblur = emailchk;
	
	// 폼 이벤트 부여
	form.addEventListener('submit', function(event){
		if(!validateForm()){
			event.preventDefault();
		}
	});
	
	// 아이디 유효성 검사
	function idchk(){
		var setted = /^[a-z]+[a-z0-9]{4,19}$/g;
		if (userid.querySelector("input").value.match(setted)){
			userid.querySelector("input").classList.remove('is-invalid');
			userid.querySelector("input").classList.add('is-valid');
			userid.querySelector(".valid-feedback").style.display = "block";
			userid.querySelector(".invalid-feedback").style.display = "none";
			idcheck = true;
		} else {
			userid.querySelector("input").classList.remove('is-valid');
			userid.querySelector("input").classList.add('is-invalid');
			userid.querySelector(".valid-feedback").style.display = "none";
			userid.querySelector(".invalid-feedback").style.display = "block";
			idcheck = false;
		}
	}
	
	// 비밀번호 유효성 검사
	function passchk(){
		var setted = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,25}$/;
		if (userpass.querySelector("input").value.match(setted)){
			userpass.querySelector("input").classList.remove('is-invalid');
			userpass.querySelector("input").classList.add('is-valid');
			userpass.querySelector(".valid-feedback").style.display = "block";
			userpass.querySelector(".invalid-feedback").style.display = "none";
			passcheck = true;
		} else {
			userpass.querySelector("input").classList.remove('is-valid');
			userpass.querySelector("input").classList.add('is-invalid');
			userpass.querySelector(".valid-feedback").style.display = "none";
			userpass.querySelector(".invalid-feedback").style.display = "block";
			passcheck = false;
		}
	}
	
	// 비밀번호 재입력 유효성 검사
	function repasschk(){
		if (userrepass.querySelector("input").value.match(userpass.querySelector("input").value)){
			userrepass.querySelector("input").classList.remove('is-invalid');
			userrepass.querySelector("input").classList.add('is-valid');
			userrepass.querySelector(".valid-feedback").style.display = "block";
			userrepass.querySelector(".invalid-feedback").style.display = "none";
			repasscheck = true;
		} else {
			userrepass.querySelector("input").classList.remove('is-valid');
			userrepass.querySelector("input").classList.add('is-invalid');
			userrepass.querySelector(".valid-feedback").style.display = "none";
			userrepass.querySelector(".invalid-feedback").style.display = "block";
			repasscheck = false;
		}
	}
	
	// 이름 유효성 검사
	function namechk(){
		var setted = /^[ㄱ-힣]+[ㄱ-힣]{1,20}$/g;
		if (username.querySelector("input").value.match(setted)){
			username.querySelector("input").classList.remove('is-invalid');
			username.querySelector("input").classList.add('is-valid');
			username.querySelector(".valid-feedback").style.display = "block";
			username.querySelector(".invalid-feedback").style.display = "none";
			namecheck = true;
		} else {
			username.querySelector("input").classList.remove('is-valid');
			username.querySelector("input").classList.add('is-invalid');
			username.querySelector(".valid-feedback").style.display = "none";
			username.querySelector(".invalid-feedback").style.display = "block";
			namecheck = false;
		}
	}
	
	// 휴대전화 유효성 검사
	function phonechk(){
		var setted = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/;
		if (userphone.querySelector("input").value.match(setted)){
			userphone.querySelector("input").classList.remove('is-invalid');
			userphone.querySelector("input").classList.add('is-valid');
			userphone.querySelector(".valid-feedback").style.display = "block";
			userphone.querySelector(".invalid-feedback").style.display = "none";
			phonecheck = true;
		} else {
			userphone.querySelector("input").classList.remove('is-valid');
			userphone.querySelector("input").classList.add('is-invalid');
			userphone.querySelector(".valid-feedback").style.display = "none";
			userphone.querySelector(".invalid-feedback").style.display = "block";
			phonecheck = false;
		}
	}
	
	// 이메일 유효성 검사
	function emailchk(){
		var setted = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		if (useremail.querySelector("input").value.match(setted)){
			useremail.querySelector("input").classList.remove('is-invalid');
			useremail.querySelector("input").classList.add('is-valid');
			useremail.querySelector(".valid-feedback").style.display = "block";
			useremail.querySelector(".invalid-feedback").style.display = "none";
			emailcheck = true;
		} else {
			useremail.querySelector("input").classList.remove('is-valid');
			useremail.querySelector("input").classList.add('is-invalid');
			useremail.querySelector(".valid-feedback").style.display = "none";
			useremail.querySelector(".invalid-feedback").style.display = "block";
			emailcheck = false;
		}
	}
	
	// submit 유효성 검사
	function validateForm() {
		  idchk();
		  passchk();
		  repasschk();
		  namechk();
		  phonechk();
		  emailchk();
		  
		  if (idcheck && passcheck && repasscheck && namecheck && phonecheck && emailcheck) {
			alert("회원가입이 완료되었습니다.")
		    return true;
		  } else {
			form.querySelector("#fianlChk").style.display = "block";
		    return false;
		  }
	}
	
