window.function = function(){
    var grade = "A";
    document.write("entering switch block<br/>");
    switch (grade){
        case "A":document.write("Good job<br/>");
                 break;
        case "B":document.write("Pertty good<br/>");
                 break;
        case "C":document.write("Passed<br/>");
                 break;
        case "D":document.write("Not so good<br/>");
                 break;
        case "F":document.write("Failed<br/>");
                 break;
        default:document.write("Unknown grade<br/>");
    }
    document.write("Exiting switch block");
}
