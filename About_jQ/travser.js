//jquery 中的遍历
//向下遍历
//children
//find

$(document).ready(function(){
   // $("#div1").children().css(border:"solid #ff000 3px");
    $("#div1").find("p").css({font:"3px",color:"#b5b5b5"})
});

//children 方法只针对儿子辈的遍历，并且参数时可选的
//find方法指针对后代元素进行遍历，参数是必选的
