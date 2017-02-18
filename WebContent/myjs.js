
	$(document).ready(function(){
        $("div [id*='Ques']").addClass('que bg-warning').add('<button type="button" class="btn btn-success showB">Show Answer</button><button type="button" class="btn btn-success hideB">Hide Answer</button>');
        $("div [class='ans']").addClass('bg-success');//.append('<button type="button" class="btn btn-warning btn-link"><a href="${source}" target="blank">Source</a></button>');
        
        $(".ans").hide();
        $('.hideB').hide();
//        $('#source').hide();
        
        $(".showB").on('click', function () {
//            $(this).next().next().slideDown();
        	$(this).closest('.que').find('.ans').slideDown();
            $(this).hide();
//            $(this).next().show();
            $(this).closest('.que').find('.hideB').show();
        });
        
        $(".hideB").on('click', function () {
            $(this).next().slideUp();
            $(this).hide();
            $(this).prev().show();
//            $('this #source').hide();
        });
        
    });
