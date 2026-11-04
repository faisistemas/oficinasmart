<?php if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Veiculos extends MY_Controller
{

    /**
     * author: Ramon Silva
     * email: silva018-mg@yahoo.com.br
     *
     */


    public function __construct()
    {
        parent::__construct();

        $this->load->helper('form');
        $this->load->model('veiculos_model');
        $this->data['menuVeiculos'] = 'Veiculos';
    }

    public function index()
    {
        $this->gerenciar();
    }

    public function gerenciar()
    {
        if (!$this->permission->checkPermission($this->session->userdata('permissao'), 'vVeiculo')) {
            $this->session->set_flashdata('error', 'Você não tem permissão para visualizar veiculos.');
            redirect(base_url());
        }

        $this->load->library('pagination');

        $this->data['configuration']['base_url'] = site_url('veiculos/gerenciar/');
        $this->data['configuration']['total_rows'] = $this->veiculos_model->count('veiculos');

        $this->pagination->initialize($this->data['configuration']);

        $this->data['results'] = $this->veiculos_model->get('veiculos', '*', '', $this->data['configuration']['per_page'], $this->uri->segment(3));

        $this->data['view'] = 'veiculos/veiculos';
        return $this->layout();
    }

    public function adicionar()
    {
        if (!$this->permission->checkPermission($this->session->userdata('permissao'), 'aVeiculo')) {
            $this->session->set_flashdata('error', 'Você não tem permissão para adicionar veiculos.');
            redirect(base_url());
        }

        $this->load->library('form_validation');
        $this->data['custom_error'] = '';

        if ($this->form_validation->run('veiculos') == false) {
            $this->data['custom_error'] = (validation_errors() ? '<div class="form_error">' . validation_errors() . '</div>' : false);
        } else {
	        $data = [
			    'clientes_id' => $this->input->post('clientes_id'), //set_value('idCliente'),
				'marca' => set_value('marca'),
                'modelo' => set_value('modelo'),
                'placa' => set_value('placa'),
                'cor' => set_value('cor'),
				'combustivel' => set_value('combustivel'),
				'ano' => set_value('ano'),
				'montadora' => set_value('montadora'),
            ];

            if ($this->veiculos_model->add('veiculos', $data) == true) {
                $this->session->set_flashdata('success', 'Veiculo adicionado com sucesso!');
                log_info('Adicionou um veiculo');
                redirect(site_url('veiculos/adicionar/'));
            } else {
                $this->data['custom_error'] = '<div class="form_error"><p>Ocorrou um erro.</p></div>';
            }
        }
        $this->data['view'] = 'veiculos/adicionarVeiculo';
        return $this->layout();
    }

    public function editar()
    {
        if (!$this->uri->segment(3) || !is_numeric($this->uri->segment(3))) {
            $this->session->set_flashdata('error', 'Item não pode ser encontrado, parâmetro não foi passado corretamente.');
            redirect('mapos');
        }

        if (!$this->permission->checkPermission($this->session->userdata('permissao'), 'eVeiculo')) {
            $this->session->set_flashdata('error', 'Você não tem permissão para editar Veiculos.');
            redirect(base_url());
        }
        $this->load->library('form_validation');
        $this->data['custom_error'] = '';

        if ($this->form_validation->run('veiculos') == false) {
            $this->data['custom_error'] = (validation_errors() ? '<div class="form_error">' . validation_errors() . '</div>' : false);
        } else {
	        $data = [
			    'clientes_id' => $this->input->post('clientes_id'),
                'marca' => $this->input->post('marca'),
                'modelo' => $this->input->post('modelo'),
                'placa' => $this->input->post('placa'),
				'cor' => $this->input->post('cor'),
				'combustivel' => $this->input->post('combustivel'),
				'ano' => set_value('ano'),
				'montadora' => $this->input->post('montadora'),
            ];

            if ($this->veiculos_model->edit('veiculos', $data, 'idVeiculos', $this->input->post('idVeiculos')) == true) {
                $this->session->set_flashdata('success', 'Veiculo editado com sucesso!');
                log_info('Alterou um veiculo. ID: ' . $this->input->post('idVeiculos'));
                redirect(site_url('veiculos/editar/') . $this->input->post('idVeiculos'));
            } else {
                $this->data['custom_error'] = '<div class="form_error"><p>An Error Occured</p></div>';
            }
        }

        $this->data['result'] = $this->veiculos_model->getById($this->uri->segment(3));

        $this->data['view'] = 'veiculos/editarVeiculo';
        return $this->layout();
    }

    public function visualizar()
    {
        if (!$this->uri->segment(3) || !is_numeric($this->uri->segment(3))) {
            $this->session->set_flashdata('error', 'Item não pode ser encontrado, parâmetro não foi passado corretamente.');
            redirect('mapos');
        }

        if (!$this->permission->checkPermission($this->session->userdata('permissao'), 'vVeiculo')) {
            $this->session->set_flashdata('error', 'Você não tem permissão para visualizar veiculo.');
            redirect(base_url());
        }

        $this->data['result'] = $this->veiculos_model->getById($this->uri->segment(3));

        if ($this->data['result'] == null) {
            $this->session->set_flashdata('error', 'Veiculo não encontrado.');
            redirect(site_url('veiculos/editar/') . $this->input->post('idVeiculos'));
        }

        $this->data['view'] = 'veiculos/visualizarVeiculo';
        return $this->layout();
    }

    public function excluir()
    {
        if (!$this->permission->checkPermission($this->session->userdata('permissao'), 'dVeiculo')) {
            $this->session->set_flashdata('error', 'Você não tem permissão para excluir veiculos.');
            redirect(base_url());
        }

        $id = $this->input->post('id');
        if ($id == null) {
            $this->session->set_flashdata('error', 'Erro ao tentar excluir veiculo.');
            redirect(base_url() . 'index.php/veiculos/gerenciar/');
        }

        $this->veiculos_model->delete('veiculos_os', 'veiculos_id', $id);
        $this->veiculos_model->delete('itens_de_vendas', 'veiculos_id', $id);
        $this->veiculos_model->delete('veiculos', 'idVeiculos', $id);

        log_info('Removeu um veiculo. ID: ' . $id);

        $this->session->set_flashdata('success', 'Veiculo excluido com sucesso!');
        redirect(site_url('veiculos/gerenciar/'));
    }

    public function atualizar_estoque()
    {
        if (!$this->permission->checkPermission($this->session->userdata('permissao'), 'eVeiculo')) {
            $this->session->set_flashdata('error', 'Você não tem permissão para atualizar estoque de veiculos.');
            redirect(base_url());
        }

        $idVeiculo = $this->input->post('id');
        $novoEstoque = $this->input->post('estoque');
        $estoqueAtual = $this->input->post('estoqueAtual');

        $estoque = $estoqueAtual + $novoEstoque;

        $data = [
            'estoque' => $estoque,
        ];

        if ($this->veiculos_model->edit('veiculos', $data, 'idVeiculos', $idVeiculo) == true) {
            $this->session->set_flashdata('success', 'Estoque de Veiculo atualizado com sucesso!');
            log_info('Atualizou estoque de um veiculo. ID: ' . $idVeiculo);
            redirect(site_url('veiculos/visualizar/') . $idVeiculo);
        } else {
            $this->data['custom_error'] = '<div class="alert">Ocorreu um erro.</div>';
        }
    }
	public function autoCompleteCliente()
    {
        if (isset($_GET['term'])) {
            $q = strtolower($_GET['term']);
            $this->veiculos_model->autoCompleteCliente($q);
        }
    }

}