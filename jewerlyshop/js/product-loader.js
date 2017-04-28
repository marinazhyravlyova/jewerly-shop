function getCategory(category) {
    $('.freshdesignweb-top').css('display', 'none');
    $('.carousel_same_products').css('display', 'none');
    $('.block-information_about_shop').css('display', 'none');
    $('#block-product-grid').addClass('line');
    $('#block-right3').css('display', 'none');
    $('#block-right2').css('display', 'block');

    productLoader.loadCategory(category);
    carouselCategory(category);
}
function ProductLoader() {
    this.category = 0;
    this.page = 1;
}

ProductLoader.prototype = {
    load: function () {
        $.ajax({
            type: "GET",
            url: "/json.php",
            data: {
                category: this.category,
                page: this.page
            },
            dataType: "json",
            traditional: true

        }).done(this.renderAll.bind(this))
    },
    renderSingleProduct: function (target, data) {
        $('.number_of_page').css('display', 'inline-block')
        target.find('.image_products').attr('id', data.product_id);
        target.find('.item-added').attr('id', data.product_id*333);
        target.find('.add_to_cart').attr('id', data.product_id*555);
        target.find('.name_product').text(data.title);
        target.find('.artical_product').text('Артикул:' + '  ' + data.artical);
        target.find('.price_product').text(data.price + '  ' + 'руб.');
        target.find('.image_products').attr('src', data.image);
      
        return target;
    },
    renderAll: function (data) {
        var container = $('.oll_products');
        var template = $('#product-template li')
        container.empty();
        for(var i=0; i<data.length; i++){
            container.append(
                this.renderSingleProduct(template.clone(), data[i])
            )
        }
    },
    loadCategory: function (category) {
        this.category = category;
        this.page = 1;
        this.load();
        return category;


    },
    loadPage: function (page) {
        this.page = page;
       // this.category = category;
        this.load();
    }
};
var productLoader = new ProductLoader();
var $ = jQuery.noConflict();
$(window).load(function() {
    $('.flexslider').flexslider({
        animation: "fade"
    });

    $(function() {
        $('.show_menu').click(function(){
            $('.menu').fadeIn();
            $('.show_menu').fadeOut();
            $('.hide_menu').fadeIn();
        });
        $('.hide_menu').click(function(){
            $('.menu').fadeOut();
            $('.show_menu').fadeIn();
            $('.hide_menu').fadeOut();
        });
    });
});
