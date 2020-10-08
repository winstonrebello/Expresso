$(document).ready(function(){
         //-- Click on detail
         $("ul.menu-items > li").on("click",function(){
            $("ul.menu-items > li").removeClass("active");
            $(this).addClass("active");
        })

        $(".attr,.attr2,.attr3").on("click",function(){
            var clase = $(this).attr("class");

            $("." + clase).removeClass("active");
            $(this).addClass("active");
        })
     //-- Click on QUANTITY
     $(".btn-minus").on("click",function(){
        var now = $(".section1 > div > input").val();
        if ($.isNumeric(now)){
            if (parseInt(now) -1 > 0){ now--;}
            $(".section1 > div > input").val(now);
        }else{
            $(".section1 > div > input").val("1");
        }
    })            
    $(".btn-plus").on("click",function(){
        var now = $(".section1 > div > input").val();
        if ($.isNumeric(now)){
            $(".section1 > div > input").val(parseInt(now)+1);
        }else{
            $(".section1 > div > input").val("1");
        }
    })                        
}) 