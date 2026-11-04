<?php
class Veiculos_model extends CI_Model
{

    /**
     * author: Ramon Silva
     * email: silva018-mg@yahoo.com.br
     *
     */

    public function __construct()
    {
        parent::__construct();
    }

    public function get($table, $fields, $where = '', $perpage = 0, $start = 0, $one = false, $array = 'array')
    {
		$this->db->select($fields.', clientes.nomeCliente, clientes.idClientes');
        $this->db->from($table);
		$this->db->join('clientes', 'clientes.idClientes =  veiculos.clientes_id');
        $this->db->order_by('idVeiculos', 'desc');
        $this->db->limit($perpage, $start);
        if ($where) {
            $this->db->where($where);
        }

        $query = $this->db->get();

        $result = !$one ? $query->result() : $query->row();
        return $result;
    }

    public function getById($id)
    {
        $this->db->where('idVeiculos', $id);
        $this->db->limit(1);
        return $this->db->get('veiculos')->row();
    }

    public function add($table, $data)
    {
        $this->db->insert($table, $data);
        if ($this->db->affected_rows() == '1') {
            return $this->db->insert_id($table);
        }

        return false;
    }

    public function edit($table, $data, $fieldID, $ID)
    {
        $this->db->where($fieldID, $ID);
        $this->db->update($table, $data);

        if ($this->db->affected_rows() >= 0) {
            return true;
        }

        return false;
    }

    public function delete($table, $fieldID, $ID)
    {
        $this->db->where($fieldID, $ID);
        $this->db->delete($table);
        if ($this->db->affected_rows() == '1') {
            return true;
        }

        return false;
    }

    public function count($table)
    {
        return $this->db->count_all($table);
    }

    public function getOsByVeicul($id)
    {
        $this->db->where('veiculos_id', $id);
        $this->db->order_by('idOs', 'desc');
        $this->db->limit(10);
        return $this->db->get('os')->result();
    }

    /**
     * Retorna todas as OS vinculados ao cliente
     * @param int $id
     * @return array
     */
    public function getAllOsByVeicul($id)
    {
        $this->db->where('veiculos_id', $id);
        return $this->db->get('os')->result();
    }

    /**
     * Remover todas as OS por cliente
     * @param array $os
     * @return boolean
     */
    public function removeVeiculOs($os)
    {
        try {
            foreach ($os as $o) {
                $this->db->where('os_id', $o->idOs);
                $this->db->delete('servicos_os');

                $this->db->where('os_id', $o->idOs);
                $this->db->delete('produtos_os');

                $this->db->where('idOs', $o->idOs);
                $this->db->delete('os');
            }
        } catch (Exception $e) {
            return false;
        }
        return true;
    }

    /**
     * Retorna todas as Vendas vinculados ao cliente
     * @param int $id
     * @return array
     */
    public function getAllVendasByVeicul($id)
    {
        $this->db->where('veiculos_id', $id);
        return $this->db->get('vendas')->result();
    }

    /**
     * Remover todas as Vendas por cliente
     * @param array $vendas
     * @return boolean
     */
    public function removeVeiculVendas($vendas)
    {
        try {
            foreach ($vendas as $v) {
                $this->db->where('vendas_id', $v->idVendas);
                $this->db->delete('itens_de_vendas');

                $this->db->where('idVendas', $v->idVendas);
                $this->db->delete('vendas');
            }
        } catch (Exception $e) {
            return false;
        }
        return true;
    }
	    public function autoCompleteCliente($q)
    {
        $this->db->select('*');
        $this->db->limit(5);
        $this->db->like('nomeCliente', $q);
		$this->db->or_like('telefone', $q);
        $query = $this->db->get('clientes');
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) {
                $row_set[] = ['label'=>$row['nomeCliente'].' | Telefone: '.$row['telefone'],'id'=>$row['idClientes']];
            }
            echo json_encode($row_set);
        } else {
            $row_set[] = ['label'=> 'Adicionar cliente...', 'id' => null];
            echo json_encode($row_set);
        }
    }
	

}
