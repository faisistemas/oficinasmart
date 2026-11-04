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
                <h5>Editar Veículo</h5>
            </div>
            <div class="widget-content nopadding tab-content">
                <?php echo $custom_error; ?>
                <form action="<?php echo current_url(); ?>" id="formVeiculo" method="post" class="form-horizontal">
                    <div class="control-group">
                        <?php echo form_hidden('idVeiculos', $result->idVeiculo) ?>
                        <label for="marca" class="control-label">Marca<span class=""></span></label>
                        <div class="controls">
                            <input id="marca" type="text" name="marca" value="<?php echo $result->marca; ?>" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="modelo" class="control-label">Modelo<span class="required">*</span></label>
                        <div class="controls">
                            <input id="modelo" type="text" name="modelo" value="<?php echo $result->modelo; ?>" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="placa" class="control-label">Placa</label>
                        <div class="controls">
                            <input id="placa" type="text" name="placa" value="<?php echo $result->placa; ?>" />
                        </div>
                    </div>
					<div class="control-group">
                        <label for="cor" class="control-label">Cor</label>
                        <div class="controls">
                            <input id="cor" type="text" name="cor" value="<?php echo $result->cor; ?>" />
                        </div>
                    </div>
					<div class="control-group">
                        <label for="ano" class="control-label">Ano</label>
                        <div class="controls">
                            <input id="ano" type="text" name="ano" value="<?php echo $result->ano; ?>" />
                        </div>
                    </div>

                    <div class="form-actions">
                        <div class="span12">
                            <div class="span6 offset3" style="display: flex;justify-content: center">
                                <button type="submit" class="button btn btn-primary" style="max-width: 160px">
                                  <span class="button__icon"><i class="bx bx-sync"></i></span><span class="button__text2">Atualizar</span></button>
                                <a href="<?php echo base_url() ?>index.php/veiculos" id="" class="button btn btn-mini btn-warning">
                                  <span class="button__icon"><i class="bx bx-undo"></i></span><span class="button__text2">Voltar</span></a>
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
    
    
        $('#formVeiculo').validate({
            rules: {
                placa: {
                    required: true
                },
                modelo: {
                    required: true
                }
            
            },
            messages: {
                placa: {
                    required: 'Campo Requerido.'
                },
                modelo: {
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
</script>
