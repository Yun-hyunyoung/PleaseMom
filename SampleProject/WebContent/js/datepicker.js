$( function() {
    $( "#from-datepicker" ).datepicker();
    $( "#from-datepicker" ).datepicker( "option", "showAnim", "fadeIn" );
    $( "#from-datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
    $( "#to-datepicker" ).datepicker();
    $( "#to-datepicker" ).datepicker( "option", "showAnim", "fadeIn" );
    $( "#to-datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
 });