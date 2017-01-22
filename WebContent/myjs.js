$(document).ready(function(){
        $("div [id*='Ques']").addClass('que bg-warning').after('<button type="button" class="btn btn-success showB">Show Answer</button><button type="button" class="btn btn-success hideB">Hide Answer</button>');
        $("div [class='ans']").addClass('bg-success').append('<button type="button" class="btn btn-warning btn-link"><a href="http://docs.spring.io/spring/docs/3.0.0.M3/reference/html/ch04s04.html" target="blank">Source</a></button>');
        $(".ans").hide();
        $('.hideB').hide();
        
        $(".showB").on('click', function () {
            $(this).next().next().slideDown();
            $(this).hide();
            $(this).next().show();
        });
        $(".hideB").on('click', function () {
            $(this).next().slideUp();
            $(this).hide();
            $(this).prev().show();
        });
        
    });