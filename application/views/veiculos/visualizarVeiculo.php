<div class="accordion" id="collapse-group">
    <div class="accordion-group widget-box">
        <div class="accordion-heading">
            <div class="widget-title" style="margin: -20px 0 0">
                <a data-parent="#collapse-group" href="#collapseGOne" data-toggle="collapse">
                    <span class="icon"><i class="fas fa-shopping-bag"></i></span>
                    <h5>Dados do Veiculo</h5>
                </a>
            </div>
        </div>
        <div class="collapse in accordion-body">
            <div class="widget-content">
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <td style="text-align: right; width: 30%"><strong>Marca</strong></td>
                            <td>
                                <?php echo $result->marca ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 30%"><strong>Modelo</strong></td>
                            <td>
                                <?php echo $result->modelo ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><strong>Placa</strong></td>
                            <td>
                                <?php echo $result->placa ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><strong>Cor</strong></td>
                            <td>
                                <?php echo $result->cor ?>
                            </td>
                        </tr>
						 <tr>
                            <td style="text-align: right"><strong>Ano</strong></td>
                            <td>
                                <?php echo $result->ano ?>
                            </td>
							<tr>
                            <td style="text-align: right"><strong>Combustivel</strong></td>
                            <td>
                                <?php echo $result->combustivel ?>
                            </td>
                        </tr>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
