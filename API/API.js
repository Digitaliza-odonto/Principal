const getApiUrl = () => {
  const storedApiUrl = localStorage.getItem('api');
  return storedApiUrl ? storedApiUrl : 'https://ruufpelbot.000webhostapp.com/Prontuario-ufpel/prontuario-ufpel-php-main/api/index.php?rota=';
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
    const url = `${getApiUrl()}/pacientes/criar`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/pacientes/consultar`;
    return sendRequest(url, 'POST', data);
  },
  atualizar: async (data) => {
    const url = `${getApiUrl()}/pacientes/atualizar`;
    return sendRequest(url, 'POST', data);
  }
};

const encaminhamentos = {
  criar: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/criar`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/consultar`;
    return sendRequest(url, 'POST', data);
  },
  atualizar: async (data) => {
    const url = `${getApiUrl()}/encaminhamentos/atualizar`;
    return sendRequest(url, 'POST', data);
  },
};

const usuarios = {
login: async (data) => {
  const url = `${getApiUrl()}/usuarios/login`;
  return sendRequest(url, 'POST', data);
},
criar: async (data) => {
  const url = `${getApiUrl()}/usuarios/criar`;
  return sendRequest(url, 'POST', data);
}
}
const alunos = {
  pacientes: async (data) => {
    const url = `${getApiUrl()}/alunos/pacientes`;
    return sendRequest(url, 'POST', data);
  },
  vincular: async (data) => {
    const url = `${getApiUrl()}/alunos/vincular`;
    return sendRequest(url, 'POST', data);
  }
};

const disciplinas = {
  criar: async (data) => {
    const url = `${getApiUrl()}/disciplinas/criar`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/disciplinas/consultar`;
    return sendRequest(url, 'POST', data);
  }
};

window.api = {
  pacientes,
  encaminhamentos,
  usuarios,
  alunos,
  disciplinas
};
