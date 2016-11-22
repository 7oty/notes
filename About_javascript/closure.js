/*closure function
 * 闭包函数：突破作用域链的方式访问外部变量
 * 闭包的作用:
 * 1，访问外部变量
 * 2，使变量始终保存在内存中
 * exmaple:
 * */
function farther(){
    var variable = 1000;
    function child(){
        console.log('variable:' + variable);
    }

    return child;
}

//callback function

f = farther();
f();

function grandfarther(){
    var number = 90;
    add = function(){
        console.log(number + 1);
    }

    function child(){
        console.log(number);
    }
}

//callback function
//notes add anoymouse function
g = grandfarther();
g();

add();
