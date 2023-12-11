$(document).ready(function () {
    var select_regiao = $("#select-regiao"); // seleciona o select de regiões
    var select_parada = $("#select-parada"); // seleciona o select de paradas
    var fieald_select_parada = $("#p_select_parada"); // seleciona o div que contém o select de paradas
    var fieald_message_parada = $("#p_message_parada"); // seleciona o div que contém a mensagem de aviso
    // adicione um evento de foco ao select de regiões para carregar as regiões
    select_regiao.on('focus', function () {
        if (select_regiao.children().length > 1) return; //se já foi carregado evita carregar novamente
        // ajax para consultar o servlet e carregar as regiões
        $.ajax({
            type: "GET",
            url: "cadastroservlet",
            dataType: 'json',
            data: {
                evento: "Regiao", // indica que é para carregar as regiões
            },
            success: function (data) {
                for (var i = 0; i < data.length; i++) { // percorre o array com as respostas
                    // Use o método jQuery para criar a opção
                    var option = $('<option>', {
                        value: data[i],
                        text: data[i]
                    });
                    // Adicione a opção ao select usando o método jQuery 'append'
                    select_regiao.append(option);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $('#tresultado').text("Erro!");
            }
        });
    });

    select_regiao.on('change', function () {
        if (select_regiao.val() == null) return; //não tem valor selecionado
        // uma região foi selecionada
        // esconde a mensagem de aviso e mostra o select do ponto de paradas
        fieald_select_parada.removeClass('hidden');
        fieald_message_parada.addClass('hidden');
        // limpa o select de paradas com valores anteriores
        select_parada.empty();
        select_parada.multiselect('destroy');

        if (select_parada.children().length > 1) return; //já foi carregado
        // ajax para consultar o servlet e carregar as paradas
        $.ajax({
            type: "GET",
            url: "cadastroservlet",
            dataType: 'json',
            data: {
                evento: "Parada", // indica que é para carregar as paradas
                regiao: select_regiao.val() // envia a regiao selecionada
            },
            success: function (data) {
                for (var i = 0; i < data.length; i++) { // percorre o array com as respostas
                    // Use o método jQuery para criar a opção
                    var option = $('<option>', {
                        value: data[i],
                        text: data[i]
                    });
                    // Adicione a opção ao select usando o método jQuery 'append'
                    select_parada.append(option);
                }
                select_parada.multiselect({ // inicializa o multiselect
                    includeSelectAllOption: true,
                });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $('#tresultado').text("Erro!");
            }
        });
    });

});