function validation(){
    var user = document.getElementById('username').value;
    var password = document.getElementById('password').value;
    var confirmpassword = document.getElementById('confirmpassword').value;
    var email = document.getElementById('email').value;

    if(user == ""){
        document.getElementById('usernameid').innerHTML = "Nhập username";
        return false;
    }

    if(password == ""){
        document.getElementById('passwordid').innerHTML = "Nhập password";
        return false;
    }

    if(confirmpassword == ""){
        document.getElementById('confirmpasswordid').innerHTML = "Nhập password";
        return false;
    }

    if(email == ""){
        document.getElementById('emailid').innerHTML = "Nhập email";
        return false;
    }
}