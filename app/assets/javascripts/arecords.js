$().ready( function() {
	var editor = new wysihtml5.Editor("record_details", { // id of textarea element
	  toolbar:      "wysihtml5-toolbar", // id of toolbar element
	  parserRules:  wysihtml5ParserRules // defined in parser rules set 
	});
	$("#record_details").css("width", "400px");
    $("#record_county_ids").multiSelect();
	$("#record_start_date").datepicker();
	$("#record_end_date").datepicker();



});