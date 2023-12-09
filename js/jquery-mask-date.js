$('#input-date-init').mask("00/00/0000", {
    placeholder: "__/__/____"
});

function validateDateFuncLogic(date) {
    if(date.value == undefined) {
        return true;
    }

    var partes = date.split("/");

    if (partes.length !== 3) {
        console.log('sem tres partes');
        return false;
    }

    var dia = parseInt(partes[0], 10);
    var mes = parseInt(partes[1], 10);
    var ano = parseInt(partes[2], 10);

    if (isNaN(dia) || isNaN(mes) || isNaN(ano)) {
        console.log('números não válidos');
        return false;
    }

    if (dia < 1 || dia > 31 || mes < 1 || mes > 12) {
        return false;
    }

    var dataFornecida = new Date(ano, mes - 1, dia);

    var hoje = new Date();

    return dataFornecida > hoje;
}

function validateDate(date) {
    if(!validateDateFuncLogic(date.value)) {
        $("#danger_foundation_date").show();
    }
}

function clearValue() {
    $("#danger_foundation_date").hide();
}