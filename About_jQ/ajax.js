$(document).ready(function(){
    $("#btn-submit").click(function(){
        $.ajax({
            type: "GET",
            url: "/login",
            dataType: "json",
            success: function(data){
                $("#resText").empty();
                var html = '';

            }

            error: function(){
                //statement block;
            }
        });
    });
});
