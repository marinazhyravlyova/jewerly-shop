function getInformationAboutOneProduct(product_id) {
    $('.carousel_same_products').css('display', 'block');
    $('#one_product').css('display', 'block')
    $('.product_id').css('display', 'none');
    $('.number_page').css('display', 'none');
    $('.line').remove();
    $.getJSON("product-information.php?product_id="+product_id, function(data){
        $.each(data, function(key, value){
            $('.name_one_product').text(value.title);
            $('.mini_discr').text(value.mini_discription);
            $('.artical_product').text('Артикул:' + '  ' + value.artical);
            $('.price_product').text(value.price + '  ' + 'руб.');
            $('.image_one_products').attr('src', value.image);

            })

        })
}

    function carouselCategory(category) {
        $('.none_class1').removeClass().addClass('carousel-button-left');
        $('.none_class2').removeClass().addClass('carousel-button-right');
        $.getJSON("carousel-categories.php?category="+category, function(data){
            $.each(data, function(key, value){
                var newImage = data.map(function (data) {
                    return data.image;
                });
                var newId = data.map(function (data) {
                    return data.product_id;
                });
                var same_products = data.length;
                $('#same_products').text(same_products + '                      '+'аналогичных товаров данной категрии:')
                if(key===0){

                    for(var i=0; i<data.length; i++){
                        console.log(newImage[i])
                            $(".block_with_carousel").clone().removeClass("block_with_carousel").addClass("carousel-block")
                                .appendTo(".carousel-items");
                                }
                             $(".block_with_carousel").remove()
                }
                if(key===0){
                    for(var i=0; i<data.length; i++){
                        var element = document.getElementsByClassName('image-in-carousel')[i];
                        element.setAttribute('src', newImage[i]);
                        element.id = newId[i]*1000;
                    }}


            });
        })
    }

function ttt(id) {
    console.log(id)
    $('id').clone('.cart')


}