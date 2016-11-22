//javascript 和 jQuery表单验证demo
//exmaple for javascript

windown.onload = function(){
    document.getElementById("forms").onsubmit = function(){
        var uid = document.getElementById("uid").value;
        var pid = document.getElementById("pid").value;
        if(uid.length == 0){
            document.getElementById("errors").innerHTML = "用户名不能为空";
            return false;
        }else{
            document.getElementById("errors").innerHTML = '';
        }

        if(pid.length == 0){
            document.getElementById("errors").innerHTML = "密码不能为空";
            return false;
        }else{
            document.getElementById("errors").innerHTML = '';
        }

        return true;
    }
}

$(document).ready(function(){
    $("#forms").onsubmit(function(){
        var uid = $("#uid").val();
        var pid = $("#pid").val();
        if(uid.length == 0){
            $("#errors").html('用户名不能为空');
            return false;
        }else{
            $("#errors").html('');
        }

        if(pid.length == 0){
            $("#errors").html('密码不能为空')；
            return false;
        }else{
            $("#errors").html('');
        }
});
});
