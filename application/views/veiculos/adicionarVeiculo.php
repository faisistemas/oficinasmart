<script src="<?php echo base_url() ?>assets/js/jquery.mask.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/sweetalert2.all.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/funcoes.js"></script>

<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/jquery-ui/css/smoothness/jquery-ui-1.9.2.custom.css" />
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery-ui/js/jquery-ui-1.9.2.custom.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery.validate.js"></script>
<link rel="stylesheet" href="<?php echo base_url() ?>assets/trumbowyg/ui/trumbowyg.css">
<script type="text/javascript" src="<?php echo base_url() ?>assets/trumbowyg/trumbowyg.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>assets/trumbowyg/langs/pt_br.js"></script>

<style>
    /* Hiding the checkbox, but allowing it to be focused */
    .badgebox {
        opacity: 0;
    }

    .badgebox+.badge {
        /* Move the check mark away when unchecked */
        text-indent: -999999px;
        /* Makes the badge's width stay the same checked and unchecked */
        width: 27px;
    }

    .badgebox:focus+.badge {
        /* Set something to make the badge looks focused */
        /* This really depends on the application, in my case it was: */

        /* Adding a light border */
        box-shadow: inset 0px 0px 5px;
        /* Taking the difference out of the padding */
    }

    .badgebox:checked+.badge {
        /* Move the check mark back when checked */
        text-indent: 0;
    }
</style>
<div class="row-fluid" style="margin-top:0">
    <div class="span12">
        <div class="widget-box">
            <div class="widget-title" style="margin: -20px 0 0">
                <span class="icon">
                    <i class="fas fa-shopping-bag"></i>
                </span>
                <h5>Cadastro de Veiculo</h5>
            </div>
            <div class="widget-content nopadding tab-content">
                <?php echo $custom_error; ?>
                <form action="<?php echo current_url(); ?>" id="formVeiculo" method="post" class="form-horizontal">
                   
                   <div class="control-group" class="control-label">
                            <label for="montadora" class="control-label">Montadora</label>
                            <div class="controls">
                                <select id="montadora" name="montadora" class="span3">
                                    <option value="">Selecione...</option>
                                </select>
                            </div>
                        </div>
				   <div class="control-group">
                            <label for="cliente" class="control-label">Proprietário<span class="required">*</span></label>
						<div class="controls">
                                <input id="cliente" class="" type="text" name="cliente" value="" />
                                <input id="clientes_id" class="" type="hidden" name="clientes_id" value="" />
                                <div class="addclient"><?php if ($this->permission->checkPermission($this->session->userdata('permissao'), 'aCliente')) { ?>
                                <a href="<?php echo base_url(); ?>index.php/clientes/adicionar" class="btn btn-success"><i class="fas fa-plus"></i>Proprietário</a><?php } ?></div>
                        </div>                        
				    </div>
				   <div class="control-group">
                        <label for="marca" class="control-label">Marca<span class="required">*</span></label>
                        <div class="controls">
                            <input id="marca" type="text" name="marca" value="<?php echo set_value('marca'); ?>" />
                        </div>
                    </div>
					  <div class="control-group">
                        <label for="modelo" class="control-label">Modelo<span class=""></span></label>
                        <div class="controls">
                            <input id="modelo" type="text" name="modelo" value="<?php echo set_value('modelo'); ?>" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="placa" class="control-label">Placa<span class="required">*</span></label>
                        <div class="controls">
                            <input id="placa" type="text" name="placa" value="<?php echo set_value('placa'); ?>" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="cor" class="control-label">Cor</label>
                        <div class="controls">
                            <input id="cor" type="text" name="cor" value="<?php echo set_value('cor'); ?>" />
                        </div>
                    </div>
					<div class="control-group">
                        <label for="ano" class="control-label">Ano</label>
                        <div class="controls">
                            <input id="ano" type="text" name="ano" value="<?php echo set_value('ano'); ?>" />
                        </div>
                    </div>
						<div class="control-group" class="control-label">
                       <label for="combustivel" class="control-label">Combustivel</label>
                    <div class="controls">
                      <select id="combustivel" name="combustivel" class="span3">
                      <option selected value="">Selecione...</option>
                      <option value="Gasolina">Gasolina</option>
                      <option value="etanol">Etanol</option>
					  <option value="Flex">Flex</option>
                      <option value="Diesel">Diesel</option>
                      </select>
                 
                     </div>
                    </div>
                    <div class="form-actions">
                        <div class="span12">
                            <div class="span6 offset3" style="display: flex;justify-content: center">
                                <button type="submit" class="button btn btn-mini btn-success" style="max-width: 160px"><span class="button__icon"><i class='bx bx-plus-circle'></i></span><span class="button__text2">Adicionar</span></button>
                                <a href="<?php echo base_url() ?>index.php/veiculos" id="" class="button btn btn-mini btn-warning"><span class="button__icon"><i class="bx bx-undo"></i></span><span class="button__text2">Voltar</span></a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="<?php echo base_url() ?>assets/js/jquery.validate.js"></script>
<script src="<?php echo base_url(); ?>assets/js/maskmoney.js"></script>
<script type="text/javascript">
    function calcLucro(precoCompra, margemLucro) {
        var precoVenda = (precoCompra * margemLucro / 100 + precoCompra).toFixed(2);
        return precoVenda;
    }
    $("#precoCompra").focusout(function() {
        if ($("#precoCompra").val() == '0.00' && $('#precoVenda').val() != '') {
            $('#errorAlert').text('Você não pode preencher valor de compra e depois apagar.').css("display", "inline").fadeOut(6000);
            $('#precoVenda').val('');
            $("#precoCompra").focus();
        } else {
            $('#precoVenda').val(calcLucro(Number($("#precoCompra").val()), Number($("#margemLucro").val())));
        }
    });

    $("#margemLucro").keyup(function() {
        this.value = this.value.replace(/[^0-9.]/g, '');
        if ($("#precoCompra").val() == null || $("#precoCompra").val() == '') {
            $('#errorAlert').text('Preencher valor da compra primeiro.').css("display", "inline").fadeOut(5000);
            $('#margemLucro').val('');
            $('#precoVenda').val('');
            $("#precoCompra").focus();

        } else if (Number($("#margemLucro").val()) >= 0) {
            $('#precoVenda').val(calcLucro(Number($("#precoCompra").val()), Number($("#margemLucro").val())));
        } else {
            $('#errorAlert').text('Não é permitido número negativo.').css("display", "inline").fadeOut(5000);
            $('#margemLucro').val('');
            $('#precoVenda').val('');
        }
    });

    $('#precoVenda').focusout(function () {
        if (Number($('#precoVenda').val()) < Number($("#precoCompra").val())) {
            $('#errorAlert').text('Preço de venda não pode ser menor que o preço de compra.').css("display", "inline").fadeOut(6000);
            $('#precoVenda').val('');
            if ($("#margemLucro").val() != "" || $("#margemLucro").val() != null) {
                $('#precoVenda').val(calcLucro(Number($("#precoCompra").val()), Number($("#margemLucro").val())));
            }
        }

    });

    $(document).ready(function() {
        $(".money").maskMoney();
        $.getJSON('<?php echo base_url() ?>assets/json/tabela_medidas.json', function(data) {
            for (i in data.medidas) {
                $('#unidade').append(new Option(data.medidas[i].descricao, data.medidas[i].sigla));
            }
        });
        $('#formVeiculo').validate({
            rules: {
                marca: {
                    required: true
                },
                modelo: {
                    required: true
                },
                placa: {
                    required: true
                },
                cor: {
                    required: true
                },
                ano: {
                    required: true
                }
            },
            messages: {
                marca: {
                    required: 'Campo Requerido.'
                },
                modelo: {
                    required: 'Campo Requerido.'
                },
                placa: {
                    required: 'Campo Requerido.'
                },
                cor: {
                    required: 'Campo Requerido.'
                },
                ano: {
                    required: 'Campo Requerido.'
                }
            },
            errorClass: "help-inline",
            errorElement: "span",
            highlight: function(element, errorClass, validClass) {
                $(element).parents('.control-group').addClass('error');
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).parents('.control-group').removeClass('error');
                $(element).parents('.control-group').addClass('success');
            }
        });
    });
	 $(document).ready(function () {
        $.getJSON('<?php echo base_url() ?>assets/json/montadoras.json', function (data) {
            for (i in data.montadoras) {
                $('#montadora').append(new Option(data.montadoras[i].nome, data.montadoras[i].sigla));
                var curState = '<?php echo set_value('montadora'); ?>';
                if (curState) {
                    $("#montadora option[value=" + curState + "]").prop("selected", true);
                }
            }
        });
		});
		$(document).ready(function() {
        $('.addclient').hide();
        $("#cliente").autocomplete({
            source: "<?php echo base_url(); ?>index.php/veiculos/autoCompleteCliente",
            minLength: 1,
            close: function(ui) { if(ui.label == 'Adicionar cliente...')ui.target.value = '';},
            select: function(event, ui) {
                if(ui.item.label == 'Adicionar cliente...')
                    $('.addclient').show();
                else
                    {
                        $("#clientes_id").val(ui.item.id);
                        $('.addclient').hide();
                    }
            }
        });
		});
		
</script>
