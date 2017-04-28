function addToCart(id) {
    newId =  id*333;
    $('#'+newId).css('display', 'block');
    $('#'+newId).fadeOut(4000)
    console.log(id)
    $.ajax({
        type: "POST",
        url: "/addtocart.php",
        data: "id="+id,
        dataType: "html",
        cache: false,
        success: function (data) {
            //loadCart();
        }

    });
}



function loadCart() {
    $.ajax({
        type: "POST",
        url: "/include/loadcart.php",
        dataType: "html",
        cache: false,
        success: function (data) {
            if( data == "0")
            {
                $('#block-basket > a').html('Корзина Пуста');
            } else {
                $('#block-basket > a').html(data);
               $('.itog-price > strong').html(fun_group_price(itogprice));
            }
        }

    });
}






















