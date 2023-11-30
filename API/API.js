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
  criarEncaminhamento: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/criarEncaminhamento.php`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/consultarDemanda.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarEncaminhamentoResp: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/consultarEncaminhamentoResp.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarEncaminhamentosHomologados: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/consultarEncaminhamentosHomologados.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarEncaminhamentoID: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/consultarEncaminhamentoID.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarFiltro: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/consultarDemandaFiltro.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarEvolucaoStatus: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/relatorio-evolucao.php`;
    return sendRequest(url, 'POST', data);
  },
  atualizar: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/atualizar.php`;
    return sendRequest(url, 'POST', data);
  },
  homologarEncaminhamento: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/homologarEncaminhamento.php`;
    return sendRequest(url, 'POST', data);
  },
  solicitarRegulacao: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/solicitarRegulacao.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarRegulacao: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/consultarRegulacao.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarRegulacaoID: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/consultarRegulacaoID.php`;
    return sendRequest(url, 'POST', data);
  },
  pendenciasRegulacao: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/pendenciasRegulacao.php`;
    return sendRequest(url, 'POST', data);
  },
  pendenciasRegulacaoUsuario: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/pendenciasRegulacaoUsuario.php`;
    return sendRequest(url, 'POST', data);
  },
  pendenciasEncaminhamentoUsuario: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/pendenciasEncaminhamentoUsuario.php`;
    return sendRequest(url, 'POST', data);
  },
  pendenciasEncaminhamento: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/pendenciasEncaminhamento.php`;
    return sendRequest(url, 'POST', data);
  },
  homologarRegulacao: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/homologarRegulacao.php`;
    return sendRequest(url, 'POST', data);
  },
  devolverRegulacao: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/devolverRegulacao.php`;
    return sendRequest(url, 'POST', data);
  },
  devolverEncaminhamento: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/devolverEncaminhamento.php`;
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
  const url = `${getApiUrl()}/cobalto/usuarios/consultarUsuarios.php`;
  return sendRequest(url, 'POST', data);
  },
consultarResponsavel: async (data) => {
  const url = `${getApiUrl()}/cobalto/usuarios/consultarResponsavel.php`;
  return sendRequest(url, 'POST', data);
  },
};

const alunos = {
  pacientes: async (data) => {
    const url = `${getApiUrl()}/alunos/pacientes.php`;
    return sendRequest(url, 'POST', data);
  },
  vincularPaciente: async (data) => {
    const url = `${getApiUrl()}/alunos/vincular.php`;
    return sendRequest(url, 'POST', data);
  },
  desvincularPaciente: async (data) => {
    const url = `${getApiUrl()}/alunos/desvincular.php`;
    return sendRequest(url, 'POST', data);
  },
  desvincularRegulacao: async (data) => {
    const url = `${getApiUrl()}/alunos/desvincularRegulacao.php`;
    return sendRequest(url, 'POST', data);
  },
  desvincularEncaminhamento: async (data) => {
    const url = `${getApiUrl()}/alunos/desvincularEncaminhamento.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarVinculos: async (data) => {
    const url = `${getApiUrl()}/alunos/vinculos.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarVinculoAluno: async (data) => {
    const url = `${getApiUrl()}/alunos/vinculosAluno.php`;
    return sendRequest(url, 'POST', data);
  },
  vinculoPorDemanda: async (data) => {
    const url = `${getApiUrl()}/alunos/vinculoPorDemanda.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarMatriculaAluno: async (data) => {
    const url = `${getApiUrl()}/alunos/consultarMatriculaAluno.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarAlunoDisciplina: async (data) => {
    const url = `${getApiUrl()}/alunos/consultarAlunoDisciplina.php`;
    return sendRequest(url, 'POST', data);
  },
  buscarAlunoNomeMatricula: async (data) => {
    const url = `${getApiUrl()}/alunos/buscarAlunoNomeMatricula.php`;
    return sendRequest(url, 'POST', data);
  },
  vinculoPorCPFpaciente: async (data) => {
    const url = `${getApiUrl()}/alunos/vinculosCPFpaciente.php`;
    return sendRequest(url, 'POST', data);
  },
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
  buscaRequisicoesSolicitante: async (data) => {
    const url = `${getApiUrl()}/materiais/busca-requisicoes-Solicitante.php`;
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
  },
  relatorioConsumoSemestral: async (data) => {
    const url = `${getApiUrl()}/materiais/relatorio-consumo-semestral.php`;
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
  relatorioSusSemestral: async (data) => {
    const url = `${getApiUrl()}/procedimentos/relatorio-SUS-semestre.php`;
    return sendRequest(url, 'POST', data);
  },
  relatorioSusMensal: async (data) => {
    const url = `${getApiUrl()}/procedimentos/relatorio-SUS-mensal.php`;
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
  },
  consultarProjetos: async (data) => {
    const url = `${getApiUrl()}/cobalto/disciplinas/consultarProjetos.php`;
    return sendRequest(url, 'POST', data);
  },
  criarAtualizarProjeto: async (data) => {
    const url = `${getApiUrl()}/cobalto/disciplinas/criarAtualizarProjeto.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarDisciplinasProjetos: async (data) => {
    const url = `${getApiUrl()}/cobalto/disciplinas/consultarDisciplinasProjetos.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarID: async (data) => {
    const url = `${getApiUrl()}/cobalto/disciplinas/consultar_IDturma.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarMatriculados: async (data) => {
    const url = `${getApiUrl()}/cobalto/disciplinas/consultar_matriculados.php`;
    return sendRequest(url, 'POST', data);
  },
  consultar_IDturma: async (data) => {
    const url = `${getApiUrl()}/cobalto/disciplinas/consultar_IDturma.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarArrayIDsTurma: async (data) => {
    const url = `${getApiUrl()}/cobalto/disciplinas/consultarArrayIDsTurma.php`;
    return sendRequest(url, 'POST', data);
  },
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
  },
  selectDistinct: async (data) => {
    const url = `${getApiUrl()}/avaliacoes/selectDistinctAvaliacoes.php`;
    return sendRequest(url, 'POST', data);
  },
};

const agenda = {
  criar: async (data) => {
    const url = `${getApiUrl()}/agenda/criarAgendamento.php`;
    return sendRequest(url, 'POST', data);
  },
  deletar: async (data) => {
    const url = `${getApiUrl()}/agenda/deleteAgendamento.php`;
    return sendRequest(url, 'POST', data);
  },
  deleteAgendamentoAluno: async (data) => {
    const url = `${getApiUrl()}/agenda/deleteAgendamentoAluno.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarGeral: async (data) => {
    const url = `${getApiUrl()}/agenda/consultarAgendaGeral.php`;
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
  consultarAgendaPaciente: async (data) => {
    const url = `${getApiUrl()}/agenda/agenda-CPFpaciente.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarAgendadosUsuario: async (data) => {
    const url = `${getApiUrl()}/agenda/agendados-usuario.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarAgendadosResponsavel: async (data) => {
    const url = `${getApiUrl()}/agenda/agendadosResponsavel.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarNoLocalUsuario: async (data) => {
    const url = `${getApiUrl()}/agenda/nolocal-usuario.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarDadosAgendamento: async (data) => {
    const url = `${getApiUrl()}/agenda/consultarDadosAgendamento.php`;
    return sendRequest(url, 'POST', data);
  },
  consultaFaltas: async (data) => {
    const url = `${getApiUrl()}/agenda/consultarFaltas.php`;
    return sendRequest(url, 'POST', data);
  },
  admitirPaciente: async (data) => {
    const url = `${getApiUrl()}/agenda/admitir-paciente.php`;
    return sendRequest(url, 'POST', data);
  },
  setAtendido: async (data) => {
    const url = `${getApiUrl()}/agenda/setAtendido.php`;
    return sendRequest(url, 'POST', data);
  }
};

const arquivos = {
  baixar: async (data) => {
    const url = `${getApiUrl()}/arquivos/baixar.php`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/arquivos/consultarExames.php`;
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
  consultarPlano: async (data) => {
    const url = `${getApiUrl()}/planoTTO/consultarPlano.php`;
    return sendRequest(url, 'POST', data);
  },
};

const entrevistaDialogada = {
  criar: async (data) => {
    const url = `${getApiUrl()}/entrevista/criar.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarEntrevista: async (data) => {
    const url = `${getApiUrl()}/entrevista/consultarEntrevista.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarEntrevistaPed: async (data) => {
    const url = `${getApiUrl()}/entrevista/consultarEntrevistaPed.php`;
    return sendRequest(url, 'POST', data);
  }
};

const atendimentos = {
  criar: async (data) => {
    const url = `${getApiUrl()}/atendimentos/criarAtendimento.php`;
    return sendRequest(url, 'POST', data);
  },
  criarResponsavel: async (data) => {
    const url = `${getApiUrl()}/atendimentos/criarAtendimentoResponsavel.php`;
    return sendRequest(url, 'POST', data);
  },
  homologar: async (data) => {
    const url = `${getApiUrl()}/atendimentos/homologarAtendimento.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarAtendimento: async (data) => {
    const url = `${getApiUrl()}/atendimentos/consultarAtendimento.php`;
    return sendRequest(url, 'POST', data);
  },
  consultaAtendimento_ID: async (data) => {
    const url = `${getApiUrl()}/atendimentos/consultarAtendimento_ID.php`;
    return sendRequest(url, 'POST', data);
  },
  consultarAtendimento_resp: async (data) => {
    const url = `${getApiUrl()}/atendimentos/consultarAtendimento_resp.php`;
    return sendRequest(url, 'POST', data);
  }
};

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
  planoTratamento,
  entrevistaDialogada,
  atendimentos
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
