(function($, Handlebars, root){
    "use strict";

    var AlbumsRenderer = function() {
        this.template = this._getTemplate();
    };

    AlbumsRenderer.prototype = {
        render: function(type) {
            var albums = this._getAlbums(type);

            return this.template(albums);
        },
        _getTemplate: function() {
            var template;

            $.ajax({
                url: '/templates/albums.hbar',
                async: false,
                success: function(data) {
                    template = data;
                }
            });

            template = Handlebars.compile(template);

            return template;
        },
        _getAlbums: function(type) {
            var albums;

            $.ajax({
                url: '/data/' + type + '.json',
                async: false,
                success: function(data) {
                    albums = data;
                }
            });

            return albums;
        }
    };

    root.AlbumsRenderer = AlbumsRenderer;
}(jQuery, Handlebars, this));
