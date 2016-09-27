$.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
});

$( function() {
    $( "#from-datepicker" ).datepicker();
    $( "#from-datepicker" ).datepicker( "option", "showAnim", "fadeIn" );
    $( "#from-datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
    $(" #from-datepicker ").each(function() {    
        $(this).datepicker('setDate', $(this).val());
    });
    
    $( "#to-datepicker" ).datepicker();
    $( "#to-datepicker" ).datepicker( "option", "showAnim", "fadeIn" );
    $( "#to-datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
    $( "#to-datepicker" ).datepicker( 'setDate', new Date() );
    $(" #to-datepicker").each(function() {    
        $(this).datepicker('setDate', $(this).val());
    });
 });