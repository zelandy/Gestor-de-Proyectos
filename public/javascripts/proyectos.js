$(document).ready(function(){
	$('.triggerFindContacto').live('click',function(e){
		$(this).each(function(){
			window.triggerFindContacto = $(this);
			$('#findContacto').modal('show').on('shown',function(){
				triggerFindContacto.closest('div').find('input[name*="contacto"]')[0];
			});
		});
		return false;
	});
	
	
	$('.submit_link').live("ajax:before",function(){
		$(this).data('params',{q: $('input#q').val().toString() });
	}).live("ajax:complete", function(et, e){
		console.log(e);
    	window.obj = jQuery.parseJSON(e.responseText);
	});
})