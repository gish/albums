(function(root) {
    var ar = new root.AlbumsRenderer(),
        $sweContainer,
        $intlContainer;

    $(document).ready(function() {
        $sweContainer = $('#swedish-albums .row .col-md-12');
        $intlContainer = $('#intl-albums .row .col-md-12');

        $sweContainer.append(ar.render('swedish'));
        $intlContainer.append(ar.render('international'));
    });
}(this));
