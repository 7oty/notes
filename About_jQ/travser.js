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

//向上遍历
//parent 只遍历紧邻的父元素，即只能匹配到一个元素
//parents能向上遍历所有的元素，当然可以指定其参数
//parentsUntil针对于两个元素之间的遍历，即一个区间内

$(document).ready(function(){
    $('p').parent("#div2").css({border:"solid #efefef 3px"});
    //$("p").parents("#div2").css({border:"solid #e8e8e8 3px"});
    //$("p").parentsUntil("div2").css({border:"solid #eeee 3px"});
});


//同级遍历
//sibings()所有同级元素
//next()下一个元素
//nextAll()同级元素的所有元素
//nextUntil()同级元素之间，即区间的形式
//prev()
//prevAll()
//prevUntil()
//
$(document).ready(function(){
    $("p").sibings().css({border:"solid #e5e5e5 3px"});
    //$("p").next().css({border:"solid #666666 3px"});
    //$("p").nextAll().css({border:"solid #f0f0f0 3px"});
    //$("p").nextUntil().css({border:"solid #909090 3px"});
});

//过滤
//first()
//last()
//eq()匹配到指定索引的元素进行过滤
//filter()
//not()

$(document).ready(function(){
    $("div p").first().css({"background-color", "red"});
    $("div p").last().css({"background-color", "red"});
    $("div").eq(2).css({"background-color", "red"});
    $("div p").filter(".pclass").css({"background-color", "red"});
    $("div p").not(".pclass").css({"background-color", "red"});
});
