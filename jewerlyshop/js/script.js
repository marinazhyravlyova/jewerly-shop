$(document).ready(function () {
    $('#form_reg').validate(
        {

            rules: {
                reg_login: {
                    required: true,
                    minlength: 5,
                    maxlength: 15,
                    remote: {
                        type: "POST",
                        url: "/reg/check_login.php"
                    }
                },
                reg_pass: {
                    required: true,
                    minlength: 7,
                    maxlength: 15
                },
                reg_surname : {
                    required: true,
                    minlength: 3,
                    maxlength: 15
                },
                reg_name: {
                    required: true,
                    minlength: 3,
                    maxlength: 15
                },
                reg_patronymic: {
                    required: true,
                    minlength: 7,
                    maxlength: 25
                },
                reg_email: {
                    required: true,
                    email: true
                },
                reg_phone: {
                    required: true
                },
                reg_address: {
                    required: true
                }

            },
            messages: {
                reg_login: {
                    required: "Укажите Логин",
                    minlength: "От 5 до 15 символов",
                    maxlength: "От 5 до 15 символов",
                    remote: "Логин занят"
                },
                reg_pass: {
                    required: "Укажите пароль",
                    minlength: "От 7 до 15 символов",
                    maxlength: "От 7 до 15 символов"
                },
                reg_surname: {
                    required: "Укажите вашу фамилию",
                    minlength: "От 3 до 20 символов",
                    maxlength: "От 3 до 20 символов"
                },
                reg_name: {
                    required: "Укажите ваше имя",
                    minlength: "От 3 до 20 симвлов",
                    maxlength: "От 3 до 20 символов"
                },
                reg_patronymic: {
                    required: "Укажите ваше отчество",
                    minlength: "От 3 до 20 символов",
                    maxlength: "От 3 до 20 символов"
                },
                reg_email: {
                    required: "Укажите свой E-mail",
                    email: "Не корректные E-mail"
                },
                reg_phone: {
                    required: "Укажите номер телефона"
                },
                reg_address: {
                    required: "Необходимо указать адрес доставки"
                }
            },
            submitHandler: function (form) {
                $(form).ajaxSubmit({
                    success: function (data) {
                        data = 'true';
                        if (data == 'true') {
                            alert('good')
                            $("#block-form-registration").fadeOut(300, function () {
                                $("#reg_massage").addClass('reg_message_good').fadeIn(400).html("Вы успешно зарегестрированы");
                                $("#form_submit").hide();
                            });
                        }
                        else {
                            $("#reg_message").addClass('reg_massage_error').fadeIn(400).html(data);
                        }
                    }
                })
            }
        }
    )
});

$('.top-auth').toggle(
    function () {
        $("#block-top-auth").css(display, 'none');
        //$(".top-auth").attr("id", "active-button");
        //$("#block-top-auth").fadeIn(200);
    },
    function () {
        $(".top-auth").attr("id", "");
        $("#block-top-auth").fadeOut(200);

    }
);
function openbox(){

    auth = document.getElementById('block-top-auth');

    if(auth.style.display == 'none'){

        auth.style.display ='block';

    }else{

        auth.style.display ='none';

    }

}
function signingIn() {


    var auth_login = $('#auth-login').val();
    var auth_pass = $("#auth-pass").val();

    if (auth_login == "" || auth_login.length > 30)
    {
        $("#auth-login").css("borderColor", "red");
        send_login = 'no';
    } else {
        $("#auth-login").css("borderColor", "#DBDBDB");
        send_login = 'yes';
    }

    if (auth_pass == "" || auth_pass.length > 15)
    {
        $("#auth-pass").css("borderColor", "red");
        send_pass = 'no';
    } else {
        $("#auth-pass").css("borderColor", "#DBDBDB");
        send_pass = 'yes'
    }


    if (send_login == 'yes' && send_pass == 'yes')
    {

        $.ajax({
            type: "POST",
            url: "/include/auth.php",
            data: "login="+auth_login+"&pass="+auth_pass,
            dataType: "html",
            cache: false,
            success: function (data) {


                if (data == 'yes_auth')
                {
                    location.reload();
                } else {
                    $("#massage-auth").slideDown(400);

                }
            }

        })

    }


}
function sendingInformation() {
    $('#notepad').css('display', 'none');
    $('.button_in_cart').css('display', 'none');
    $('.text_in_cart').css('display', 'block');
}
function logout() {
    $.ajax({
        type: "POST",
        url: "/include/logout.php",
        dataType: "html",
        cache: false,
        success: function (data) {
            if (data == 'logout'){
                location.reload();
            }
        }
    })
}



/*
$(document).on('click','.add_to_cart', function(){
    $('.item-added').css('display', 'block');
    $(".item-added").fadeOut(4000)
});*/
