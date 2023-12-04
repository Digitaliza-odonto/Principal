CREATE TABLE public.agenda_clinicas (
    id integer NOT NULL,
    id_paciente integer,
    data_agendamento timestamp without time zone,
    id_disciplina integer,
    id_local integer,
    descricao character varying(200),
    id_status integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.alunos_cursos (
    id integer NOT NULL,
    id_aluno integer,
    id_curso integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.apresentacoes (
    id integer NOT NULL,
    nome character varying(50),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.avaliacoes (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.avaliacoes_atendimento (
    id integer NOT NULL,
    id_paciente integer,
    id_disciplina integer,
    id_periodo integer,
    pontualidade integer,
    comportamento integer,
    materiais integer,
    conhecimento integer,
    cuidado integer,
    adversidades integer,
    dupla integer,
    autoavaliacao integer,
    obs character varying(200),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.bairros (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    id_cidade integer NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.cidades (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.comorbidades (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.comorbidades_pacientes (
    id integer NOT NULL,
    id_paciente integer,
    id_comorbidade integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.complexidades (
    id integer NOT NULL,
    nome character varying(20),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.cursos (
    id integer NOT NULL,
    nome character varying(20),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.disciplinas (
    id integer NOT NULL,
    nome character varying(20),
    id_turma integer,
    id_periodo integer,
    id_curso integer,
    codigo character varying(20),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer,
    ano character(4)
);

CREATE TABLE public.encaminhamentos (
    id integer NOT NULL,
    id_paciente integer,
    data timestamp without time zone,
    id_curso integer,
    id_especialidade integer,
    demanda character varying(100),
    id_status integer,
    id_complexidade integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.enderecos (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    cep character(8) NOT NULL,
    id_bairro integer NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.entrevistas (
    id integer NOT NULL,
    id_paciente integer,
    queixa character varying(100),
    doenca_sn character(1),
    doenca character varying(100),
    tto_medico_sn character(1),
    tto_medico character varying(100),
    fumante_sn character(1),
    fumante character varying(100),
    elitista_sn character(1),
    elitista character varying(100),
    ultima_consulta timestamp without time zone,
    ultimo_tto timestamp without time zone,
    freq_higiene character varying(50),
    operado_sn character(1),
    operado character varying(100),
    cicatrizacao_sn character(1),
    cicatrizacao character varying(100),
    anestesia_sn character(1),
    anestesia character varying(100),
    hemorragia_sn character(1),
    hemorragia character varying(100),
    gravidez_sn character(1),
    gravidez character varying(100),
    historico_familiar character varying(200),
    prob_gravidez_sn integer,
    prob_gravidez character varying(100),
    id_tipo_parto integer,
    doenca_infancia_sn character(1),
    doenca_infancia character varying(100),
    internacao_sn character(1),
    internacao character varying(100),
    historico_medicacao_sn character(1),
    historico_medicacao character varying(100),
    alergia_sn character(1),
    alergia character varying(100),
    respiratorio_sn character(1),
    respiracao character varying(100),
    cardiaco_sn character(1),
    cardiaco character varying(100),
    sanguineo_sn character(1),
    sanguineo character varying(100),
    diabetes_sn character(1),
    diabetes character varying(100),
    medicacao_sn character(1),
    medicacao character varying(100),
    obs character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer,
    instrumentos_higiene character varying(100),
    fluores character varying(100)
);

CREATE TABLE public.especialidades (
    id integer NOT NULL,
    nome character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.estados_civis (
    id integer NOT NULL,
    nome character varying(10) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.historico_atendimentos (
    id integer NOT NULL,
    id_paciente integer,
    id_especialidade integer,
    descricao character varying(100),
    id_disciplina integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.lista_solicitacao_materiais (
    id integer NOT NULL,
    id_material integer,
    id_solicitacao integer,
    quantidade integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.lista_solicitacao_materiais_atendidos (
    id integer NOT NULL,
    id_material integer,
    id_lista_solicitacao integer,
    quantidade integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.locais (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.materiais (
    id integer NOT NULL,
    nome character varying(100),
    quantidade integer,
    id_tipo integer,
    id_apresentacao integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.pacientes (
    id integer NOT NULL,
    nome character varying(100),
    ativo character(1),
    cpf character varying(20),
    rg character varying(20),
    cns character varying(20),
    data_nascimento date,
    email character varying(100),
    telefone character varying(14),
    sexo character(1),
    nome_mae character varying(100),
    nome_pai character varying(100),
    id_raca integer NOT NULL,
    id_estado_civil integer NOT NULL,
    id_endereco integer NOT NULL,
    numero_residencia character varying(20),
    obs character varying(200),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.periodos (
    id integer NOT NULL,
    nome character(6),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.plano_tto (
    id integer NOT NULL,
    id_paciente integer,
    queixa character varying(100),
    aspecto_relevante character varying(100),
    id_especialidade integer,
    descricao character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.procedimentos_sus (
    id integer NOT NULL,
    nome character varying(100),
    cod_sus character varying(20),
    id_tipo integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.racas_cores (
    id integer NOT NULL,
    nome character varying(50),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.setores_materiais (
    id integer NOT NULL,
    nome character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.solicitacoes_materiais (
    id integer NOT NULL,
    id_setor integer,
    data_tramite timestamp without time zone,
    id_status integer,
    obs_tramite character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.status (
    id integer NOT NULL,
    nome character varying(20) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.tipos_materiais (
    id integer NOT NULL,
    nome character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

 CREATE TABLE public.tipos_partos (
    id integer NOT NULL,
    nome character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.tipos_procedimentos_sus (
    id integer NOT NULL,
    nome character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.tipos_usuarios (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.turmas (
    id integer NOT NULL,
    nome character varying(20),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    matricula character varying(20) NOT NULL,
    nome character varying(100),
    id_tipo integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer,
    senha character varying(100) NOT NULL
);