$('.delete_stud').bind('ajax:success', function() {
   $(this).closest('tr').fadeOut();
});