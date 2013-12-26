(function(root) {
    var ar = new root.AlbumsRenderer(),
        $sweContainer,
        $intlContainer;

    $(document).ready(function() {
        $sweContainer = $('#swedish-albums');
        $intlContainer = $('#intl-albums');

        $sweContainer.append(ar.render('swedish'));
        $intlContainer.append(ar.render('international'));
    });
}(this));
