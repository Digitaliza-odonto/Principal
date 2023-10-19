const getApiUrl = () => {
  const storedApiUrl = localStorage.getItem('api');
  return storedApiUrl ? storedApiUrl : '/API';
};

const sendRequest = async (url, method, data) => {
  const options = {
    method,
    headers: {
      'Content-Type': 'application/json',
      'Content-Length': 0
    },
    body: JSON.stringify(data),
  };

  try {
    const response = await fetch(url, options);
    const responseData = await response.json();


    return responseData;
  } catch (error) {
    throw error;
  }
};

const pacientes = {
  criar: async (data) => {
    const url = `${getApiUrl()}/pacientes/criar.php`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/pacientes/consultar.php`;
    return sendRequest(url, 'POST', data);
  },
  atualizar: async (data) => {
    const url = `${getApiUrl()}/pacientes/atualizar.php`;
    return sendRequest(url, 'POST', data);
  }
};

const encaminhamentos = {
  criar: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/criar.php`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/consultar.php`;
    return sendRequest(url, 'POST', data);
  },
  atualizar: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/atualizar.php`;
    return sendRequest(url, 'POST', data);
  },
};

const usuarios = {
login: async (data) => {
  const url = `${getApiUrl()}/cobalto/usuarios/login.php`;
  return sendRequest(url, 'POST', data);
},
criar: async (data) => {
  const url = `${getApiUrl()}/cobalto/usuarios/criar.php`;
  return sendRequest(url, 'POST', data);
  },
consultar: async (data) => {
  const url = `${getApiUrl()}/cobalto/usuarios/consultar.php`;
  return sendRequest(url, 'POST', data);
  }
};

const alunos = {
  pacientes: async (data) => {
    const url = `${getApiUrl()}/alunos/pacientes.php`;
    return sendRequest(url, 'POST', data);
  },
  vincular: async (data) => {
    const url = `${getApiUrl()}/alunos/vincular.php`;
    return sendRequest(url, 'POST', data);
  }
};

const materiais = {
  criarDeletar: async (data) => {
    const url = `${getApiUrl()}/materiais/insert-remove-material.php`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/materiais/busca-materiais.php`;
    return sendRequest(url, 'POST', data);
  },
  buscaRequisicoes: async (data) => {
    const url = `${getApiUrl()}/materiais/busca-requisicoes.php`;
    return sendRequest(url, 'POST', data);
  },
  buscaRequisicoesID: async (data) => {
    const url = `${getApiUrl()}/materiais/busca-requisicoes-id.php`;
    return sendRequest(url, 'POST', data);
  },
  requestMaterial: async (data) => {
    const url = `${getApiUrl()}/materiais/request-material.php`;
    return sendRequest(url, 'POST', data);
  },
  tramitarMaterial: async (data) => {
    const url = `${getApiUrl()}/materiais/tramitar-materiais.php`;
    return sendRequest(url, 'POST', data);
  },
  tipoMaterialOptions: async (data) => {
    const url = `${getApiUrl()}/materiais/tipo-material-options.php`;
    return sendRequest(url, 'POST', data);
  },
  apresentacaoMaterialOptions: async (data) => {
    const url = `${getApiUrl()}/materiais/apresentacao-material-options.php`;
    return sendRequest(url, 'POST', data);
  }
};

const procedimentos = {
  criar: async (data) => {
    const url = `${getApiUrl()}/procedimentos/insert-remove-procedimentos.php`;
    
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/procedimentos/consultar.php`;
    return sendRequest(url, 'POST', data);
  },
  options: async (data) => {
    const url = `${getApiUrl()}/procedimentos/procedimento-options.php`;
    return sendRequest(url, 'POST', data);
  }
};

const disciplinas = {
  criar: async (data) => {
    const url = `${getApiUrl()}/cobalto/disciplinas/criar.php`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/cobalto/disciplinas/consultar.php`;
    return sendRequest(url, 'POST', data);
  }
};

const avaliacoes = {
  criar: async (data) => {
    const url = `${getApiUrl()}/avaliacoes/criar-avaliacao.php`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/avaliacoes/avaliacoes.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarId: async (data) => {
    const url = `${getApiUrl()}/avaliacoes/avaliacoes-id.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarPeriodoDisciplina: async (data) => {
    const url = `${getApiUrl()}/avaliacoes/avaliacoes-periodo-disciplina.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarIdPeriodoDisciplina: async (data) => {
    const url = `${getApiUrl()}/avaliacoes/avaliacoes-id-periodo-disciplina.php`;
    return sendRequest(url, 'POST', data);
  }
};

const agenda = {
  criar: async (data) => {
    const url = `${getApiUrl()}/agenda/agendamento-insert-remove.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarGeral: async (data) => {
    const url = `${getApiUrl()}/agenda/consultar.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarUsuario: async (data) => {
    const url = `${getApiUrl()}/agenda/agenda-usuario.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarCurrentDay: async (data) => {
    const url = `${getApiUrl()}/agenda/agenda-clinicas-currentday.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarFutureDates: async (data) => {
    const url = `${getApiUrl()}/agenda/consultar-futuredates.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarPaciente: async (data) => {
    const url = `${getApiUrl()}/agenda/agenda-CPFpaciente.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarAgendadosUsuario: async (data) => {
    const url = `${getApiUrl()}/agenda/agendados-usuario.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarNoLocalUsuario: async (data) => {
    const url = `${getApiUrl()}/agenda/nolocal-usuario.php`;
    return sendRequest(url, 'POST', data);
  },
  admitirPaciente: async (data) => {
    const url = `${getApiUrl()}/agenda/admitir-paciente.php`;
    return sendRequest(url, 'POST', data);
  }
};

const arquivos = {
  baixar: async (data) => {
    const url = `${getApiUrl()}/arquivos/baixar.php`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/arquivos/consultar.php`;
    return sendRequest(url, 'POST', data);
  },
  criar: async (data) => {
    const url = `${getApiUrl()}/arquivos/criar.php`;
    const formData = new FormData();
  
    // Adicione os campos e arquivos ao objeto FormData
    for (const key in data) {
      formData.append(key, data[key]);
    }
  
    try {
      const response = await fetch(url, {
        method: 'POST',
        body: formData,
      });
  
      if (response.ok) {
        const result = await response.json();
        return result;
      } else {
        throw new Error('Erro no envio do arquivo');
      }
    } catch (error) {
      throw error;
    }
  }
};

const planoTratamento = {
  criar: async (data) => {
    const url = `${getApiUrl()}/planoTTO/criar.php`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/planoTTO/consultar.php`;
    return sendRequest(url, 'POST', data);
  },
}


const cobalto = {
  disciplinas,
  usuarios
};

window.api = {
  pacientes,
  encaminhamentos,
  usuarios,
  alunos,
  disciplinas,
  avaliacoes,
  materiais: materiais,
  arquivos,
  procedimentos,
  agenda,
  planoTratamento
};

// remove o banner do 000webhost
function adicionarEstilo() {
  // Crie um elemento <style> e configure o CSS desejado
  var estilo = document.createElement('style');
  estilo.textContent = 'img[alt="www.000webhost.com"] { display: none; }';

  // Adicione o elemento <style> ao cabeçalho (head) do documento
  var head = document.head || document.getElementsByTagName('head')[0];
  head.appendChild(estilo);
}

// Chame a função para adicionar o estilo à página
adicionarEstilo();
