// $(document).ready(function(){
// 	$(".button-collapse").sideNav();
// 	$('.collapsible').collapsible();
// 	 // $('.log-btn').click(function(){
//   //           $('.log-status').addClass('wrong-entry');
//   //          $('.alert').fadeIn(500);
//   //          setTimeout( "$('.alert').fadeOut(1500);",3000 );
//   //       });
//   //       $('.form-control').keypress(function(){
//   //           $('.log-status').removeClass('wrong-entry');
//   //       });
// });

  $(document).ready(function(){
    $('ul.tab-group').tabs();
    
  });

$('.form').find('input, textarea').on('keyup blur focus', function (e) {
  
  var $this = $(this),
      label = $this.prev('label');

	  if (e.type === 'keyup') {
			if ($this.val() === '') {
          label.removeClass('active highlight');
        } else {
          label.addClass('active highlight');
        }
    } else if (e.type === 'blur') {
    	if( $this.val() === '' ) {
    		label.removeClass('active highlight'); 
			} else {
		    label.removeClass('highlight');   
			}   
    } else if (e.type === 'focus') {
      
      if( $this.val() === '' ) {
    		label.removeClass('highlight'); 
			} 
      else if( $this.val() !== '' ) {
		    label.addClass('highlight');
			}
    }

});


$('.tab').on('click', function (e) {
  
  e.preventDefault();
  
  $(this).parent().addClass('active');
  $(this).parent().sibling().removeClass('active');

  
  // target = $(this).attr('href');

  // $('.tab-content > div').not(target).hide();
  
  // $(target).fadeIn(600);
  
});
