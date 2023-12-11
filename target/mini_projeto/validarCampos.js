$(document).ready(function () {
    var err_message_itinerario = $('#err-message_itinerario');
    var err_message_linha = $('#err-message_linha');

    $("#input-itinerario").keyup(function () { // Permite apenas letras minusculas no campo login
        let element = $(this);
        let letter_only = /[^ A-Z]| [^A-Z]/;
        let replaced;

        if (letter_only.test(element.val())) {
            $(err_message_itinerario).fadeIn('slow', function () {
                $(this).html('Somente letras maiúsculas são permitidas.');
            });
        } else {
            $(err_message_itinerario).fadeOut('slow'); // Esconde a mensagem quando o valor está correto
        }
        replaced = element.val().replace(letter_only, '');
        element.val(replaced);
    });

    $("#input-linha").keyup(function () { // Permite apenas letras minusculas no campo login
        let element = $(this);
        let number_only = /[^0-9]/;
        let replaced;

        if (number_only.test(element.val())) {
            $(err_message_linha).fadeIn('slow', function () {
                $(this).html('Somente números são permitidos.');
            });
        } else {
            $(err_message_linha).fadeOut('slow'); // Esconde a mensagem quando o valor está correto
        }
        replaced = element.val().replace(number_only, '');
        element.val(replaced);
    });

});