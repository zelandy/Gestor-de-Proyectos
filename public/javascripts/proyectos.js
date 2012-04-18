$(document).ready(function(){
	$('.triggerFindContacto').live('click',function(e){
		$(this).each(function(){
			window.triggerFindContacto = $(this);
			$('#findContacto').modal('show');
		});
		return false;
	});
	
	
	$('.submit_link').live("ajax:before",function(){
		$(this).data('params',{q: $('input#q').val().toString() });
	}).live("ajax:complete", function(et, e){
    	obj = jQuery.parseJSON(e.responseText);
    	$('table#query_contacts tr').remove();
    	var _parent = triggerFindContacto.closest('div');
    	var _table = $('table#query_contacts');
    	$.each(obj, function(i, v) { 
			_table.append('<tr><td data-dismiss="modal">'+ v.nombre + ' ' + v.ap_paterno + ' ' + v.ap_materno +'</td></tr>').find('tr:last').data('persona', v);
		});
	});
	
	$('table#query_contacts tr').live('click', function(){
		var _parent = triggerFindContacto.closest('div');
    	_parent.find('input[type=hidden]:first').val($(this).data('persona').contacto.id);
		_parent.find('.contacto_nombre').val($(this).data('persona').nombre);
	});
})