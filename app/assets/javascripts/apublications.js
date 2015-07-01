$().ready( function() {

	$("#publication_details").css("width", "400px");
	$("#publication_start_date").datepicker({altField: '#alt_start_date', altFormat: 'yy-mm-dd'});
	$("#publication_end_date").datepicker({altField: '#alt_end_date', altFormat: 'yy-mm-dd'});
	$("#publication_county_ids").chosen();
	$("#publication_reference_ids").chosen();
	$("#publication_bird_id").chosen();



});