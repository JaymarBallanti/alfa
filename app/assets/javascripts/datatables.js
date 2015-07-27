$(function (){
	$("#data-table").dataTable({
	"bPaginate": true,
	"bLengthChange": true,
	"bFilter": true,
	"bSort": true,
	"bInfo": true,
	"bAutoWidth": true,
	"dom": '<"top"<"pull-left"l><"pull-right"f>>rt<"bottom"<"pull-left"i><"pull-right"p>><"clear">',
	"scrollX": true,
	"jQeuryUI": true
	});
});

$(function(){
	$('div#data-table_filter input').focus()
});