$(document).ready(function() {

    $('#map-europe').cssMap({
    'size' : 960,         // set map size;
    'tooltips' : 'floating'   // floating tooltips;
   });


    $("ul.europe li").click(function(e) {
      // alert(e.data());
      // alert(JSON.stringify(this));
      var link = $(this).children('a').attr('href');
      $.post('/new_post', link, function(data) {
     $('html').html(data);
      // debugger
      // console.log($(this).attr('href'));
      // $('a:nth-child(1)')
    });
        });


    $(".exit").click(function(e) {
      // alert(e.data());
      // alert(JSON.stringify(this));
      $(this).parent().hide();
      var id = $(this).siblings("a").attr('data-id');
      $.post('/delete', id, function(data) {
     $('html').html(data);
 });
      // debugger
      // console.log($(this).attr('href'));
      // $('a:nth-child(1)') 

     });


  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});


// jquery-inspect (link)
