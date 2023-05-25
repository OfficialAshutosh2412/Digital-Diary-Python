
function validLogin(){
    var user = document.getElementById("username").value;
    var pswd = document.getElementById("password").value;
    if((user == "") || (pswd == "")){
        alert('All fields are required !');
        return false;
    }
    else{
        return true;
    }
}