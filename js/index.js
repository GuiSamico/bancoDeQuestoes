$(document).click(function(e) {
    var target = e.target;
    $('.dropdown-menu').each(function() {
        var $this = $(this);
        var dropdown = $this.prev('.dropdown');
        if (dropdown[0] == target) $(this).toggle();
        else $(this).hide();
    });
});