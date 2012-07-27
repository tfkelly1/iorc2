$().ready( function() {

	$("#record_details").css("width", "400px");
    //$("#record_county_ids").multiSelect();
	$("#record_start_date").datepicker({altField: '#alt_start_date', altFormat: 'yy-mm-dd'});
	$("#record_end_date").datepicker({altField: '#alt_end_date', altFormat: 'yy-mm-dd'});
	$("#record_county_ids").chosen();
	



});