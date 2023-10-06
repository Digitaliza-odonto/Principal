const getApiUrl = () => {
  const storedApiUrl = localStorage.getItem('api');
  return storedApiUrl ? storedApiUrl : 'API';
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
  const url = `${getApiUrl()}/usuarios/login.php`;
  return sendRequest(url, 'POST', data);
},
criar: async (data) => {
  const url = `${getApiUrl()}/usuarios/criar.php`;
  return sendRequest(url, 'POST', data);
}
}
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

const disciplinas = {
  criar: async (data) => {
    const url = `${getApiUrl()}/disciplinas/criar.php`;
    return sendRequest(url, 'POST', data);
  },
  consultar: async (data) => {
    const url = `${getApiUrl()}/disciplinas/consultar.php`;
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
