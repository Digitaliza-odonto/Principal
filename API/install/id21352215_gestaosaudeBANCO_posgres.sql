PGDMP         !            
    {            id21352215_gestaosaude    14.5    14.5 {   Ò           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Ú           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Û           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Ù           1262    75409    id21352215_gestaosaude    DATABASE     v   CREATE DATABASE id21352215_gestaosaude WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
 &   DROP DATABASE id21352215_gestaosaude;
                postgres    false            ÿ            1259    75459    agenda_clinicas    TABLE     ™  CREATE TABLE public.agenda_clinicas (
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
 #   DROP TABLE public.agenda_clinicas;
       public         heap    postgres    false            ◊            1259    75458    agenda_clinicas_id_seq    SEQUENCE     é   CREATE SEQUENCE public.agenda_clinicas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.agenda_clinicas_id_seq;
       public          postgres    false    216            ı           0    0    agenda_clinicas_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.agenda_clinicas_id_seq OWNED BY public.agenda_clinicas.id;
          public          postgres    false    215                       1259    75885 
   alunos_cursos    TABLE       CREATE TABLE public.alunos_cursos (
    id integer NOT NULL,
    id_aluno integer,
    id_curso integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 !   DROP TABLE public.alunos_cursos;
       public         heap    postgres    false                       1259    75884    alunos_cursos_id_seq    SEQUENCE     å   CREATE SEQUENCE public.alunos_cursos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.alunos_cursos_id_seq;
       public          postgres    false    276            ˆ           0    0    alunos_cursos_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.alunos_cursos_id_seq OWNED BY public.alunos_cursos.id;
          public          postgres    false    275            ˙            1259    75779 
   apresentacoes    TABLE       CREATE TABLE public.apresentacoes (
    id integer NOT NULL,
    nome character varying(50),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 !   DROP TABLE public.apresentacoes;
       public         heap    postgres    false            ˘            1259    75778    apresentacoes_id_seq    SEQUENCE     å   CREATE SEQUENCE public.apresentacoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.apresentacoes_id_seq;
       public          postgres    false    250            ˜           0    0    apresentacoes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.apresentacoes_id_seq OWNED BY public.apresentacoes.id;
          public          postgres    false    249            ‰            1259    75632 
   avaliacoes    TABLE       CREATE TABLE public.avaliacoes (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
    DROP TABLE public.avaliacoes;
       public         heap    postgres    false            Í            1259    75657    avaliacoes_atendimento    TABLE     '  CREATE TABLE public.avaliacoes_atendimento (
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
 *   DROP TABLE public.avaliacoes_atendimento;
       public         heap    postgres    false            È            1259    75656    avaliacoes_atendimento_id_seq    SEQUENCE     ï   CREATE SEQUENCE public.avaliacoes_atendimento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.avaliacoes_atendimento_id_seq;
       public          postgres    false    234            ¯           0    0    avaliacoes_atendimento_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.avaliacoes_atendimento_id_seq OWNED BY public.avaliacoes_atendimento.id;
          public          postgres    false    233            „            1259    75631    avaliacoes_id_seq    SEQUENCE     â   CREATE SEQUENCE public.avaliacoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.avaliacoes_id_seq;
       public          postgres    false    228            ˘           0    0    avaliacoes_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.avaliacoes_id_seq OWNED BY public.avaliacoes.id;
          public          postgres    false    227            ‘            1259    75443     bairros    TABLE     3  CREATE TABLE public.bairros (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    id_cidade integer NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
    DROP TABLE public.bairros;
       public         heap    postgres    false            ”            1259    75442    bairros_id_seq    SEQUENCE     Ü   CREATE SEQUENCE public.bairros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.bairros_id_seq;
       public          postgres    false    212            ˙           0    0    bairros_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.bairros_id_seq OWNED BY public.bairros.id;
          public          postgres    false    211            “            1259    75435     cidades    TABLE       CREATE TABLE public.cidades (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
    DROP TABLE public.cidades;
       public         heap    postgres    false            —            1259    75434    cidades_id_seq    SEQUENCE     Ü   CREATE SEQUENCE public.cidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cidades_id_seq;
       public          postgres    false    210            ˚           0    0    cidades_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cidades_id_seq OWNED BY public.cidades.id;
          public          postgres    false    209            Ë            1259    75648    comorbidades    TABLE       CREATE TABLE public.comorbidades (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
     DROP TABLE public.comorbidades;
       public         heap    postgres    false            Á            1259    75647    comorbidades_id_seq    SEQUENCE     ã   CREATE SEQUENCE public.comorbidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.comorbidades_id_seq;
       public          postgres    false    232            ¸           0    0    comorbidades_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.comorbidades_id_seq OWNED BY public.comorbidades.id;
          public          postgres    false    231            ‡            1259    75574    comorbidades_pacientes    TABLE     -  CREATE TABLE public.comorbidades_pacientes (
    id integer NOT NULL,
    id_paciente integer,
    id_comorbidade integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 *   DROP TABLE public.comorbidades_pacientes;
       public         heap    postgres    false            ﬂ            1259    75573    comorbidades_pacientes_id_seq    SEQUENCE     ï   CREATE SEQUENCE public.comorbidades_pacientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.comorbidades_pacientes_id_seq;
       public          postgres    false    224            ˝           0    0    comorbidades_pacientes_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.comorbidades_pacientes_id_seq OWNED BY public.comorbidades_pacientes.id;
          public          postgres    false    223                       1259    75853 
   complexidades    TABLE       CREATE TABLE public.complexidades (
    id integer NOT NULL,
    nome character varying(20),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 !   DROP TABLE public.complexidades;
       public         heap    postgres    false            
           1259    75852    complexidades_id_seq    SEQUENCE     å   CREATE SEQUENCE public.complexidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.complexidades_id_seq;
       public          postgres    false    268            ˛           0    0    complexidades_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.complexidades_id_seq OWNED BY public.complexidades.id;
          public          postgres    false    267                       1259    75869    cursos    TABLE       CREATE TABLE public.cursos (
    id integer NOT NULL,
    nome character varying(20),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
    DROP TABLE public.cursos;
       public         heap    postgres    false                       1259    75868 
   cursos_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.cursos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cursos_id_seq;
       public          postgres    false    272            ˇ           0    0 
   cursos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cursos_id_seq OWNED BY public.cursos.id;
          public          postgres    false    271                       1259    75861 
   disciplinas    TABLE     â  CREATE TABLE public.disciplinas (
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
    DROP TABLE public.disciplinas;
       public         heap    postgres    false            
           1259    75860    disciplinas_id_seq    SEQUENCE     ä   CREATE SEQUENCE public.disciplinas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.disciplinas_id_seq;
       public          postgres    false    270                        0    0    disciplinas_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.disciplinas_id_seq OWNED BY public.disciplinas.id;
          public          postgres    false    269            
           1259    75845    encaminhamentos    TABLE     º  CREATE TABLE public.encaminhamentos (
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
 #   DROP TABLE public.encaminhamentos;
       public         heap    postgres    false            	           1259    75844    encaminhamentos_id_seq    SEQUENCE     é   CREATE SEQUENCE public.encaminhamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.encaminhamentos_id_seq;
       public          postgres    false    266                       0    0    encaminhamentos_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.encaminhamentos_id_seq OWNED BY public.encaminhamentos.id;
          public          postgres    false    265            ÷            1259    75451 	   enderecos    TABLE     T  CREATE TABLE public.enderecos (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    cep character(8) NOT NULL,
    id_bairro integer NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
    DROP TABLE public.enderecos;
       public         heap    postgres    false            ’            1259    75450    enderecos_id_seq    SEQUENCE     à   CREATE SEQUENCE public.enderecos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.enderecos_id_seq;
       public          postgres    false    214                       0    0    enderecos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.enderecos_id_seq OWNED BY public.enderecos.id;
          public          postgres    false    213                       1259    75946 
   entrevistas    TABLE     •   CREATE TABLE public.entrevistas (
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
    DROP TABLE public.entrevistas;
       public         heap    postgres    false                       1259    75945    entrevistas_id_seq    SEQUENCE     ä   CREATE SEQUENCE public.entrevistas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.entrevistas_id_seq;
       public          postgres    false    279                       0    0    entrevistas_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.entrevistas_id_seq OWNED BY public.entrevistas.id;
          public          postgres    false    278            Ú            1259    75703    especialidades    TABLE       CREATE TABLE public.especialidades (
    id integer NOT NULL,
    nome character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 "   DROP TABLE public.especialidades;
       public         heap    postgres    false            Ò            1259    75702    especialidades_id_seq    SEQUENCE     ç   CREATE SEQUENCE public.especialidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.especialidades_id_seq;
       public          postgres    false    242                       0    0    especialidades_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.especialidades_id_seq OWNED BY public.especialidades.id;
          public          postgres    false    241            ﬁ            1259    75491 
   estados_civis    TABLE       CREATE TABLE public.estados_civis (
    id integer NOT NULL,
    nome character varying(10) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 !   DROP TABLE public.estados_civis;
       public         heap    postgres    false            ›            1259    75490    estados_civis_id_seq    SEQUENCE     å   CREATE SEQUENCE public.estados_civis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.estados_civis_id_seq;
       public          postgres    false    222                       0    0    estados_civis_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.estados_civis_id_seq OWNED BY public.estados_civis.id;
          public          postgres    false    221                        1259    75695    historico_atendimentos    TABLE     p  CREATE TABLE public.historico_atendimentos (
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
 *   DROP TABLE public.historico_atendimentos;
       public         heap    postgres    false            Ô            1259    75694    historico_atendimentos_id_seq    SEQUENCE     ï   CREATE SEQUENCE public.historico_atendimentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.historico_atendimentos_id_seq;
       public          postgres    false    240                       0    0    historico_atendimentos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.historico_atendimentos_id_seq OWNED BY public.historico_atendimentos.id;
          public          postgres    false    239            ¸            1259    75787    lista_solicitacao_materiais    TABLE     J  CREATE TABLE public.lista_solicitacao_materiais (
    id integer NOT NULL,
    id_material integer,
    id_solicitacao integer,
    quantidade integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 /   DROP TABLE public.lista_solicitacao_materiais;
       public         heap    postgres    false                        1259    75803 %   lista_solicitacao_materiais_atendidos    TABLE     Z  CREATE TABLE public.lista_solicitacao_materiais_atendidos (
    id integer NOT NULL,
    id_material integer,
    id_lista_solicitacao integer,
    quantidade integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 9   DROP TABLE public.lista_solicitacao_materiais_atendidos;
       public         heap    postgres    false            ˇ            1259    75802 ,   lista_solicitacao_materiais_atendidos_id_seq    SEQUENCE     §   CREATE SEQUENCE public.lista_solicitacao_materiais_atendidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.lista_solicitacao_materiais_atendidos_id_seq;
       public          postgres    false    256                        0    0 ,   lista_solicitacao_materiais_atendidos_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.lista_solicitacao_materiais_atendidos_id_seq OWNED BY public.lista_solicitacao_materiais_atendidos.id;
          public          postgres    false    255            ˚            1259    75786 "   lista_solicitacao_materiais_id_seq    SEQUENCE     ö   CREATE SEQUENCE public.lista_solicitacao_materiais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.lista_solicitacao_materiais_id_seq;
       public          postgres    false    252                       0    0 "   lista_solicitacao_materiais_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.lista_solicitacao_materiais_id_seq OWNED BY public.lista_solicitacao_materiais.id;
          public          postgres    false    251            ⁄            1259    75467    locais    TABLE       CREATE TABLE public.locais (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
    DROP TABLE public.locais;
       public         heap    postgres    false            Ÿ            1259    75466 
   locais_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.locais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.locais_id_seq;
       public          postgres    false    218            	           0    0 
   locais_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.locais_id_seq OWNED BY public.locais.id;
          public          postgres    false    217            ˆ            1259    75754 	   materiais    TABLE     V  CREATE TABLE public.materiais (
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
    DROP TABLE public.materiais;
       public         heap    postgres    false            ı            1259    75753    materiais_id_seq    SEQUENCE     à   CREATE SEQUENCE public.materiais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.materiais_id_seq;
       public          postgres    false    246            
           0    0    materiais_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.materiais_id_seq OWNED BY public.materiais.id;
          public          postgres    false    245            Ï            1259    75665 	   pacientes    TABLE     Ù  CREATE TABLE public.pacientes (
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
    DROP TABLE public.pacientes;
       public         heap    postgres    false            Î            1259    75664    pacientes_id_seq    SEQUENCE     à   CREATE SEQUENCE public.pacientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pacientes_id_seq;
       public          postgres    false    236            
           0    0    pacientes_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pacientes_id_seq OWNED BY public.pacientes.id;
          public          postgres    false    235            Ó            1259    75687    periodos    TABLE       CREATE TABLE public.periodos (
    id integer NOT NULL,
    nome character(6),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
    DROP TABLE public.periodos;
       public         heap    postgres    false            Ì            1259    75686    periodos_id_seq    SEQUENCE     á   CREATE SEQUENCE public.periodos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.periodos_id_seq;
       public          postgres    false    238                       0    0    periodos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.periodos_id_seq OWNED BY public.periodos.id;
          public          postgres    false    237                       1259    75835 	   plano_tto    TABLE     ô  CREATE TABLE public.plano_tto (
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
    DROP TABLE public.plano_tto;
       public         heap    postgres    false                        1259    75834    plano_tto_id_seq    SEQUENCE     à   CREATE SEQUENCE public.plano_tto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.plano_tto_id_seq;
       public          postgres    false    264            
           0    0    plano_tto_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.plano_tto_id_seq OWNED BY public.plano_tto.id;
          public          postgres    false    263                       1259    75819    procedimentos_sus    TABLE     L  CREATE TABLE public.procedimentos_sus (
    id integer NOT NULL,
    nome character varying(100),
    cod_sus character varying(20),
    id_tipo integer,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 %   DROP TABLE public.procedimentos_sus;
       public         heap    postgres    false                       1259    75818    procedimentos_sus_id_seq    SEQUENCE     ê   CREATE SEQUENCE public.procedimentos_sus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.procedimentos_sus_id_seq;
       public          postgres    false    260                       0    0    procedimentos_sus_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.procedimentos_sus_id_seq OWNED BY public.procedimentos_sus.id;
          public          postgres    false    259            Ù            1259    75728 
   racas_cores    TABLE     
  CREATE TABLE public.racas_cores (
    id integer NOT NULL,
    nome character varying(50),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
    DROP TABLE public.racas_cores;
       public         heap    postgres    false            Û            1259    75727    racas_cores_id_seq    SEQUENCE     ä   CREATE SEQUENCE public.racas_cores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.racas_cores_id_seq;
       public          postgres    false    244                       0    0    racas_cores_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.racas_cores_id_seq OWNED BY public.racas_cores.id;
          public          postgres    false    243                       1259    75811    setores_materiais    TABLE       CREATE TABLE public.setores_materiais (
    id integer NOT NULL,
    nome character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 %   DROP TABLE public.setores_materiais;
       public         heap    postgres    false                       1259    75810    setores_materiais_id_seq    SEQUENCE     ê   CREATE SEQUENCE public.setores_materiais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.setores_materiais_id_seq;
       public          postgres    false    258                       0    0    setores_materiais_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.setores_materiais_id_seq OWNED BY public.setores_materiais.id;
          public          postgres    false    257            ˛            1259    75795    solicitacoes_materiais    TABLE     {  CREATE TABLE public.solicitacoes_materiais (
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
 *   DROP TABLE public.solicitacoes_materiais;
       public         heap    postgres    false            ˝            1259    75794    solicitacoes_materiais_id_seq    SEQUENCE     ï   CREATE SEQUENCE public.solicitacoes_materiais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.solicitacoes_materiais_id_seq;
       public          postgres    false    254                       0    0    solicitacoes_materiais_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.solicitacoes_materiais_id_seq OWNED BY public.solicitacoes_materiais.id;
          public          postgres    false    253            ‹            1259    75475    status    TABLE       CREATE TABLE public.status (
    id integer NOT NULL,
    nome character varying(20) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
    DROP TABLE public.status;
       public         heap    postgres    false            €            1259    75474 
   status_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.status_id_seq;
       public          postgres    false    220                       0    0 
   status_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;
          public          postgres    false    219            ¯            1259    75763    tipos_materiais    TABLE       CREATE TABLE public.tipos_materiais (
    id integer NOT NULL,
    nome character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 #   DROP TABLE public.tipos_materiais;
       public         heap    postgres    false            ˜            1259    75762    tipos_materiais_id_seq    SEQUENCE     é   CREATE SEQUENCE public.tipos_materiais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tipos_materiais_id_seq;
       public          postgres    false    248                       0    0    tipos_materiais_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tipos_materiais_id_seq OWNED BY public.tipos_materiais.id;
          public          postgres    false    247                       1259    75938    tipos_partos    TABLE       CREATE TABLE public.tipos_partos (
    id integer NOT NULL,
    nome character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
     DROP TABLE public.tipos_partos;
       public         heap    postgres    false                       1259    75827    tipos_procedimentos_sus    TABLE       CREATE TABLE public.tipos_procedimentos_sus (
    id integer NOT NULL,
    nome character varying(100),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 +   DROP TABLE public.tipos_procedimentos_sus;
       public         heap    postgres    false                       1259    75826    tipos_procedimentos_sus_id_seq    SEQUENCE     ñ   CREATE SEQUENCE public.tipos_procedimentos_sus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tipos_procedimentos_sus_id_seq;
       public          postgres    false    262                       0    0    tipos_procedimentos_sus_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tipos_procedimentos_sus_id_seq OWNED BY public.tipos_procedimentos_sus.id;
          public          postgres    false    261            Ê            1259    75640    tipos_usuarios    TABLE       CREATE TABLE public.tipos_usuarios (
    id integer NOT NULL,
    nome character varying(50) NOT NULL,
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
 "   DROP TABLE public.tipos_usuarios;
       public         heap    postgres    false            Â            1259    75639    tipos_usuarios_id_seq    SEQUENCE     ç   CREATE SEQUENCE public.tipos_usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipos_usuarios_id_seq;
       public          postgres    false    230                       0    0    tipos_usuarios_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipos_usuarios_id_seq OWNED BY public.tipos_usuarios.id;
          public          postgres    false    229                       1259    75877    turmas    TABLE       CREATE TABLE public.turmas (
    id integer NOT NULL,
    nome character varying(20),
    data_insercao timestamp without time zone DEFAULT now(),
    id_usuario_insercao integer,
    data_alteracao timestamp without time zone,
    id_usuario_alteracao integer
);
    DROP TABLE public.turmas;
       public         heap    postgres    false                       1259    75876 
   turmas_id_seq    SEQUENCE     Ö   CREATE SEQUENCE public.turmas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.turmas_id_seq;
       public          postgres    false    274                       0    0 
   turmas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.turmas_id_seq OWNED BY public.turmas.id;
          public          postgres    false    273            ‚            1259    75624    usuarios    TABLE     y  CREATE TABLE public.usuarios (
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
    DROP TABLE public.usuarios;
       public         heap    postgres    false            ·            1259    75623    usuarios_id_seq    SEQUENCE     á   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    226                       0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    225            
           2604    75462    agenda_clinicas id     DEFAULT     x   ALTER TABLE ONLY public.agenda_clinicas ALTER COLUMN id SET DEFAULT nextval('public.agenda_clinicas_id_seq'::regclass);
 A   ALTER TABLE public.agenda_clinicas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            L
           2604    75888    alunos_cursos id     DEFAULT     t   ALTER TABLE ONLY public.alunos_cursos ALTER COLUMN id SET DEFAULT nextval('public.alunos_cursos_id_seq'::regclass);
 ?   ALTER TABLE public.alunos_cursos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275    276            2
           2604    75782    apresentacoes id     DEFAULT     t   ALTER TABLE ONLY public.apresentacoes ALTER COLUMN id SET DEFAULT nextval('public.apresentacoes_id_seq'::regclass);
 ?   ALTER TABLE public.apresentacoes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            
           2604    75635 
   avaliacoes id     DEFAULT     n   ALTER TABLE ONLY public.avaliacoes ALTER COLUMN id SET DEFAULT nextval('public.avaliacoes_id_seq'::regclass);
 <   ALTER TABLE public.avaliacoes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            "
           2604    75660    avaliacoes_atendimento id     DEFAULT     Ü   ALTER TABLE ONLY public.avaliacoes_atendimento ALTER COLUMN id SET DEFAULT nextval('public.avaliacoes_atendimento_id_seq'::regclass);
 H   ALTER TABLE public.avaliacoes_atendimento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            
           2604    75446 
   bairros id     DEFAULT     h   ALTER TABLE ONLY public.bairros ALTER COLUMN id SET DEFAULT nextval('public.bairros_id_seq'::regclass);
 9   ALTER TABLE public.bairros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            

           2604    75438 
   cidades id     DEFAULT     h   ALTER TABLE ONLY public.cidades ALTER COLUMN id SET DEFAULT nextval('public.cidades_id_seq'::regclass);
 9   ALTER TABLE public.cidades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210             
           2604    75651    comorbidades id     DEFAULT     r   ALTER TABLE ONLY public.comorbidades ALTER COLUMN id SET DEFAULT nextval('public.comorbidades_id_seq'::regclass);
 >   ALTER TABLE public.comorbidades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            
           2604    75577    comorbidades_pacientes id     DEFAULT     Ü   ALTER TABLE ONLY public.comorbidades_pacientes ALTER COLUMN id SET DEFAULT nextval('public.comorbidades_pacientes_id_seq'::regclass);
 H   ALTER TABLE public.comorbidades_pacientes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            D
           2604    75856    complexidades id     DEFAULT     t   ALTER TABLE ONLY public.complexidades ALTER COLUMN id SET DEFAULT nextval('public.complexidades_id_seq'::regclass);
 ?   ALTER TABLE public.complexidades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268            H
           2604    75872 	   cursos id     DEFAULT     f   ALTER TABLE ONLY public.cursos ALTER COLUMN id SET DEFAULT nextval('public.cursos_id_seq'::regclass);
 8   ALTER TABLE public.cursos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272            F
           2604    75864    disciplinas id     DEFAULT     p   ALTER TABLE ONLY public.disciplinas ALTER COLUMN id SET DEFAULT nextval('public.disciplinas_id_seq'::regclass);
 =   ALTER TABLE public.disciplinas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269    270            B
           2604    75848    encaminhamentos id     DEFAULT     x   ALTER TABLE ONLY public.encaminhamentos ALTER COLUMN id SET DEFAULT nextval('public.encaminhamentos_id_seq'::regclass);
 A   ALTER TABLE public.encaminhamentos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            
           2604    75454    enderecos id     DEFAULT     l   ALTER TABLE ONLY public.enderecos ALTER COLUMN id SET DEFAULT nextval('public.enderecos_id_seq'::regclass);
 ;   ALTER TABLE public.enderecos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            O
           2604    75949    entrevistas id     DEFAULT     p   ALTER TABLE ONLY public.entrevistas ALTER COLUMN id SET DEFAULT nextval('public.entrevistas_id_seq'::regclass);
 =   ALTER TABLE public.entrevistas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    279    279            *
           2604    75706    especialidades id     DEFAULT     v   ALTER TABLE ONLY public.especialidades ALTER COLUMN id SET DEFAULT nextval('public.especialidades_id_seq'::regclass);
 @   ALTER TABLE public.especialidades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            
           2604    75494    estados_civis id     DEFAULT     t   ALTER TABLE ONLY public.estados_civis ALTER COLUMN id SET DEFAULT nextval('public.estados_civis_id_seq'::regclass);
 ?   ALTER TABLE public.estados_civis ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            (
           2604    75698    historico_atendimentos id     DEFAULT     Ü   ALTER TABLE ONLY public.historico_atendimentos ALTER COLUMN id SET DEFAULT nextval('public.historico_atendimentos_id_seq'::regclass);
 H   ALTER TABLE public.historico_atendimentos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            4
           2604    75790    lista_solicitacao_materiais id     DEFAULT     ê   ALTER TABLE ONLY public.lista_solicitacao_materiais ALTER COLUMN id SET DEFAULT nextval('public.lista_solicitacao_materiais_id_seq'::regclass);
 M   ALTER TABLE public.lista_solicitacao_materiais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            8
           2604    75806 (   lista_solicitacao_materiais_atendidos id     DEFAULT     §   ALTER TABLE ONLY public.lista_solicitacao_materiais_atendidos ALTER COLUMN id SET DEFAULT nextval('public.lista_solicitacao_materiais_atendidos_id_seq'::regclass);
 W   ALTER TABLE public.lista_solicitacao_materiais_atendidos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            
           2604    75470 	   locais id     DEFAULT     f   ALTER TABLE ONLY public.locais ALTER COLUMN id SET DEFAULT nextval('public.locais_id_seq'::regclass);
 8   ALTER TABLE public.locais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            .
           2604    75757    materiais id     DEFAULT     l   ALTER TABLE ONLY public.materiais ALTER COLUMN id SET DEFAULT nextval('public.materiais_id_seq'::regclass);
 ;   ALTER TABLE public.materiais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            $
           2604    75668    pacientes id     DEFAULT     l   ALTER TABLE ONLY public.pacientes ALTER COLUMN id SET DEFAULT nextval('public.pacientes_id_seq'::regclass);
 ;   ALTER TABLE public.pacientes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            &
           2604    75690 
   periodos id     DEFAULT     j   ALTER TABLE ONLY public.periodos ALTER COLUMN id SET DEFAULT nextval('public.periodos_id_seq'::regclass);
 :   ALTER TABLE public.periodos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            @
           2604    75838    plano_tto id     DEFAULT     l   ALTER TABLE ONLY public.plano_tto ALTER COLUMN id SET DEFAULT nextval('public.plano_tto_id_seq'::regclass);
 ;   ALTER TABLE public.plano_tto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            <
           2604    75822    procedimentos_sus id     DEFAULT     |   ALTER TABLE ONLY public.procedimentos_sus ALTER COLUMN id SET DEFAULT nextval('public.procedimentos_sus_id_seq'::regclass);
 C   ALTER TABLE public.procedimentos_sus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260            ,
           2604    75731    racas_cores id     DEFAULT     p   ALTER TABLE ONLY public.racas_cores ALTER COLUMN id SET DEFAULT nextval('public.racas_cores_id_seq'::regclass);
 =   ALTER TABLE public.racas_cores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            :
           2604    75814    setores_materiais id     DEFAULT     |   ALTER TABLE ONLY public.setores_materiais ALTER COLUMN id SET DEFAULT nextval('public.setores_materiais_id_seq'::regclass);
 C   ALTER TABLE public.setores_materiais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257    258            6
           2604    75798    solicitacoes_materiais id     DEFAULT     Ü   ALTER TABLE ONLY public.solicitacoes_materiais ALTER COLUMN id SET DEFAULT nextval('public.solicitacoes_materiais_id_seq'::regclass);
 H   ALTER TABLE public.solicitacoes_materiais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            
           2604    75478 	   status id     DEFAULT     f   ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);
 8   ALTER TABLE public.status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            0
           2604    75766    tipos_materiais id     DEFAULT     x   ALTER TABLE ONLY public.tipos_materiais ALTER COLUMN id SET DEFAULT nextval('public.tipos_materiais_id_seq'::regclass);
 A   ALTER TABLE public.tipos_materiais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            >
           2604    75830    tipos_procedimentos_sus id     DEFAULT     à   ALTER TABLE ONLY public.tipos_procedimentos_sus ALTER COLUMN id SET DEFAULT nextval('public.tipos_procedimentos_sus_id_seq'::regclass);
 I   ALTER TABLE public.tipos_procedimentos_sus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            
           2604    75643    tipos_usuarios id     DEFAULT     v   ALTER TABLE ONLY public.tipos_usuarios ALTER COLUMN id SET DEFAULT nextval('public.tipos_usuarios_id_seq'::regclass);
 @   ALTER TABLE public.tipos_usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            J
           2604    75880 	   turmas id     DEFAULT     f   ALTER TABLE ONLY public.turmas ALTER COLUMN id SET DEFAULT nextval('public.turmas_id_seq'::regclass);
 8   ALTER TABLE public.turmas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273    274            
           2604    75627 
   usuarios id     DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            Ø          0    75459    agenda_clinicas 
   TABLE DATA           ≈   COPY public.agenda_clinicas (id, id_paciente, data_agendamento, id_disciplina, id_local, descricao, id_status, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    216   +      Î          0    75885 
   alunos_cursos 
   TABLE DATA           â   COPY public.alunos_cursos (id, id_aluno, id_curso, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    276   3+      —          0    75779 
   apresentacoes 
   TABLE DATA           {   COPY public.apresentacoes (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    250   P+      ª          0    75632 
   avaliacoes 
   TABLE DATA           x   COPY public.avaliacoes (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    228   m+      ¡          0    75657    avaliacoes_atendimento 
   TABLE DATA             COPY public.avaliacoes_atendimento (id, id_paciente, id_disciplina, id_periodo, pontualidade, comportamento, materiais, conhecimento, cuidado, adversidades, dupla, autoavaliacao, obs, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    234   ä+      ´          0    75443     bairros 
   TABLE DATA           Ä   COPY public.bairros (id, nome, id_cidade, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    212   ß+      ©          0    75435     cidades 
   TABLE DATA           u   COPY public.cidades (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    210   Ì+      ø          0    75648    comorbidades 
   TABLE DATA           z   COPY public.comorbidades (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    232   3,      ∑          0    75574    comorbidades_pacientes 
   TABLE DATA           õ   COPY public.comorbidades_pacientes (id, id_paciente, id_comorbidade, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    224   P,      „          0    75853 
   complexidades 
   TABLE DATA           {   COPY public.complexidades (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    268   m,      Á          0    75869    cursos 
   TABLE DATA           t   COPY public.cursos (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    272   ä,      Â          0    75861 
   disciplinas 
   TABLE DATA           ¶   COPY public.disciplinas (id, nome, id_turma, id_periodo, id_curso, codigo, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao, ano) FROM stdin;
    public          postgres    false    270   ß,      ·          0    75845    encaminhamentos 
   TABLE DATA           À   COPY public.encaminhamentos (id, id_paciente, data, id_curso, id_especialidade, demanda, id_status, id_complexidade, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    266   ƒ,      ≠          0    75451 	   enderecos 
   TABLE DATA           á   COPY public.enderecos (id, nome, cep, id_bairro, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    214   ·,      Ó          0    75946 
   entrevistas 
   TABLE DATA           Û  COPY public.entrevistas (id, id_paciente, queixa, doenca_sn, doenca, tto_medico_sn, tto_medico, fumante_sn, fumante, elitista_sn, elitista, ultima_consulta, ultimo_tto, freq_higiene, operado_sn, operado, cicatrizacao_sn, cicatrizacao, anestesia_sn, anestesia, hemorragia_sn, hemorragia, gravidez_sn, gravidez, historico_familiar, prob_gravidez_sn, prob_gravidez, id_tipo_parto, doenca_infancia_sn, doenca_infancia, internacao_sn, internacao, historico_medicacao_sn, historico_medicacao, alergia_sn, alergia, respiratorio_sn, respiracao, cardiaco_sn, cardiaco, sanguineo_sn, sanguineo, diabetes_sn, diabetes, medicacao_sn, medicacao, obs, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao, instrumentos_higiene, fluores) FROM stdin;
    public          postgres    false    279   3-      …          0    75703    especialidades 
   TABLE DATA           |   COPY public.especialidades (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    242   P-      µ          0    75491 
   estados_civis 
   TABLE DATA           {   COPY public.estados_civis (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    222   m-      «          0    75695    historico_atendimentos 
   TABLE DATA           ∑   COPY public.historico_atendimentos (id, id_paciente, id_especialidade, descricao, id_disciplina, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    240   ¥-      ”          0    75787    lista_solicitacao_materiais 
   TABLE DATA           ¨   COPY public.lista_solicitacao_materiais (id, id_material, id_solicitacao, quantidade, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    252   —-      ◊          0    75803 %   lista_solicitacao_materiais_atendidos 
   TABLE DATA           º   COPY public.lista_solicitacao_materiais_atendidos (id, id_material, id_lista_solicitacao, quantidade, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    256   Ó-      ±          0    75467    locais 
   TABLE DATA           t   COPY public.locais (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    218   
.      Õ          0    75754 	   materiais 
   TABLE DATA           ù   COPY public.materiais (id, nome, quantidade, id_tipo, id_apresentacao, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    246   (.      √          0    75665 	   pacientes 
   TABLE DATA              COPY public.pacientes (id, nome, ativo, cpf, rg, cns, data_nascimento, email, telefone, sexo, nome_mae, nome_pai, id_raca, id_estado_civil, id_endereco, numero_residencia, obs, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    236   E.      ≈          0    75687    periodos 
   TABLE DATA           v   COPY public.periodos (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    238   Ù.      ﬂ          0    75835 	   plano_tto 
   TABLE DATA           ∂   COPY public.plano_tto (id, id_paciente, queixa, aspecto_relevante, id_especialidade, descricao, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    264   /      €          0    75819    procedimentos_sus 
   TABLE DATA           ë   COPY public.procedimentos_sus (id, nome, cod_sus, id_tipo, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    260   ./      À          0    75728 
   racas_cores 
   TABLE DATA           y   COPY public.racas_cores (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    244   K/      Ÿ          0    75811    setores_materiais 
   TABLE DATA              COPY public.setores_materiais (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    258   §/      ’          0    75795    solicitacoes_materiais 
   TABLE DATA           Æ   COPY public.solicitacoes_materiais (id, id_setor, data_tramite, id_status, obs_tramite, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    254   ¡/      ≥          0    75475    status 
   TABLE DATA           t   COPY public.status (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    220   ﬁ/      œ          0    75763    tipos_materiais 
   TABLE DATA           }   COPY public.tipos_materiais (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    248   ˚/      Ï          0    75938    tipos_partos 
   TABLE DATA           z   COPY public.tipos_partos (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    277   0      ›          0    75827    tipos_procedimentos_sus 
   TABLE DATA           Ö   COPY public.tipos_procedimentos_sus (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    262   50      Ω          0    75640    tipos_usuarios 
   TABLE DATA           |   COPY public.tipos_usuarios (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    230   R0      È          0    75877    turmas 
   TABLE DATA           t   COPY public.turmas (id, nome, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao) FROM stdin;
    public          postgres    false    274   ñ0      π          0    75624    usuarios 
   TABLE DATA           ë   COPY public.usuarios (id, matricula, nome, id_tipo, data_insercao, id_usuario_insercao, data_alteracao, id_usuario_alteracao, senha) FROM stdin;
    public          postgres    false    226   ≥0                 0    0    agenda_clinicas_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.agenda_clinicas_id_seq', 1, false);
          public          postgres    false    215                       0    0    alunos_cursos_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.alunos_cursos_id_seq', 1, false);
          public          postgres    false    275                       0    0    apresentacoes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.apresentacoes_id_seq', 1, false);
          public          postgres    false    249                       0    0    avaliacoes_atendimento_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.avaliacoes_atendimento_id_seq', 1, false);
          public          postgres    false    233                       0    0    avaliacoes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.avaliacoes_id_seq', 1, false);
          public          postgres    false    227                       0    0    bairros_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.bairros_id_seq', 1, true);
          public          postgres    false    211                       0    0    cidades_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cidades_id_seq', 1, true);
          public          postgres    false    209                       0    0    comorbidades_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.comorbidades_id_seq', 1, false);
          public          postgres    false    231                        0    0    comorbidades_pacientes_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.comorbidades_pacientes_id_seq', 1, false);
          public          postgres    false    223            !           0    0    complexidades_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.complexidades_id_seq', 1, false);
          public          postgres    false    267            "           0    0 
   cursos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cursos_id_seq', 1, false);
          public          postgres    false    271            #           0    0    disciplinas_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.disciplinas_id_seq', 1, false);
          public          postgres    false    269            $           0    0    encaminhamentos_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.encaminhamentos_id_seq', 1, false);
          public          postgres    false    265            %           0    0    enderecos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.enderecos_id_seq', 1, true);
          public          postgres    false    213            &           0    0    entrevistas_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.entrevistas_id_seq', 1, false);
          public          postgres    false    278            '           0    0    especialidades_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.especialidades_id_seq', 1, false);
          public          postgres    false    241            (           0    0    estados_civis_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.estados_civis_id_seq', 1, true);
          public          postgres    false    221            )           0    0    historico_atendimentos_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.historico_atendimentos_id_seq', 1, false);
          public          postgres    false    239            *           0    0 ,   lista_solicitacao_materiais_atendidos_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.lista_solicitacao_materiais_atendidos_id_seq', 1, false);
          public          postgres    false    255            +           0    0 "   lista_solicitacao_materiais_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.lista_solicitacao_materiais_id_seq', 1, false);
          public          postgres    false    251            ,           0    0 
   locais_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.locais_id_seq', 1, false);
          public          postgres    false    217            -           0    0    materiais_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.materiais_id_seq', 1, false);
          public          postgres    false    245            .           0    0    pacientes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pacientes_id_seq', 11, true);
          public          postgres    false    235            /           0    0    periodos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.periodos_id_seq', 1, false);
          public          postgres    false    237            0           0    0    plano_tto_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.plano_tto_id_seq', 1, false);
          public          postgres    false    263            1           0    0    procedimentos_sus_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.procedimentos_sus_id_seq', 1, false);
          public          postgres    false    259            2           0    0    racas_cores_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.racas_cores_id_seq', 2, true);
          public          postgres    false    243            3           0    0    setores_materiais_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.setores_materiais_id_seq', 1, false);
          public          postgres    false    257            4           0    0    solicitacoes_materiais_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.solicitacoes_materiais_id_seq', 1, false);
          public          postgres    false    253            5           0    0 
   status_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.status_id_seq', 1, false);
          public          postgres    false    219            6           0    0    tipos_materiais_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tipos_materiais_id_seq', 1, false);
          public          postgres    false    247            7           0    0    tipos_procedimentos_sus_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tipos_procedimentos_sus_id_seq', 1, false);
          public          postgres    false    261            8           0    0    tipos_usuarios_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tipos_usuarios_id_seq', 1, true);
          public          postgres    false    229            9           0    0 
   turmas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.turmas_id_seq', 1, false);
          public          postgres    false    273            :           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 1, true);
          public          postgres    false    225            X
           2606    75465 $   agenda_clinicas agenda_clinicas_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.agenda_clinicas
    ADD CONSTRAINT agenda_clinicas_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.agenda_clinicas DROP CONSTRAINT agenda_clinicas_pkey;
       public            postgres    false    216            û
           2606    75891     alunos_cursos alunos_cursos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.alunos_cursos
    ADD CONSTRAINT alunos_cursos_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.alunos_cursos DROP CONSTRAINT alunos_cursos_pkey;
       public            postgres    false    276            Ç
           2606    75785     apresentacoes apresentacoes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.apresentacoes
    ADD CONSTRAINT apresentacoes_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.apresentacoes DROP CONSTRAINT apresentacoes_pkey;
       public            postgres    false    250            n
           2606    75663 2   avaliacoes_atendimento avaliacoes_atendimento_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_pkey;
       public            postgres    false    234            f
           2606    76577    avaliacoes avaliacoes_nome_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.avaliacoes
    ADD CONSTRAINT avaliacoes_nome_key UNIQUE (nome);
 H   ALTER TABLE ONLY public.avaliacoes DROP CONSTRAINT avaliacoes_nome_key;
       public            postgres    false    228            h
           2606    75638    avaliacoes avaliacoes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.avaliacoes
    ADD CONSTRAINT avaliacoes_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.avaliacoes DROP CONSTRAINT avaliacoes_pkey;
       public            postgres    false    228            T
           2606    75449    bairros bairros_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.bairros
    ADD CONSTRAINT bairros_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.bairros DROP CONSTRAINT bairros_pkey;
       public            postgres    false    212            R
           2606    75441    cidades cidades_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cidades
    ADD CONSTRAINT cidades_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cidades DROP CONSTRAINT cidades_pkey;
       public            postgres    false    210            b
           2606    75580 2   comorbidades_pacientes comorbidades_pacientes_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.comorbidades_pacientes
    ADD CONSTRAINT comorbidades_pacientes_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.comorbidades_pacientes DROP CONSTRAINT comorbidades_pacientes_pkey;
       public            postgres    false    224            l
           2606    75654    comorbidades comorbidades_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.comorbidades
    ADD CONSTRAINT comorbidades_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.comorbidades DROP CONSTRAINT comorbidades_pkey;
       public            postgres    false    232            î
           2606    75859     complexidades complexidades_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.complexidades
    ADD CONSTRAINT complexidades_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.complexidades DROP CONSTRAINT complexidades_pkey;
       public            postgres    false    268            ò
           2606    75875    cursos cursos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_pkey;
       public            postgres    false    272            ñ
           2606    75867    disciplinas disciplinas_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinas_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.disciplinas DROP CONSTRAINT disciplinas_pkey;
       public            postgres    false    270            í
           2606    75851 $   encaminhamentos encaminhamentos_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.encaminhamentos
    ADD CONSTRAINT encaminhamentos_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.encaminhamentos DROP CONSTRAINT encaminhamentos_pkey;
       public            postgres    false    266            V
           2606    75457    enderecos enderecos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.enderecos
    ADD CONSTRAINT enderecos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.enderecos DROP CONSTRAINT enderecos_pkey;
       public            postgres    false    214            ¢
           2606    75954    entrevistas entrevistas_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.entrevistas
    ADD CONSTRAINT entrevistas_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.entrevistas DROP CONSTRAINT entrevistas_pkey;
       public            postgres    false    279            z
           2606    75709 "   especialidades especialidades_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.especialidades
    ADD CONSTRAINT especialidades_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.especialidades DROP CONSTRAINT especialidades_pkey;
       public            postgres    false    242            `
           2606    75497     estados_civis estados_civis_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.estados_civis
    ADD CONSTRAINT estados_civis_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.estados_civis DROP CONSTRAINT estados_civis_pkey;
       public            postgres    false    222            x
           2606    75701 2   historico_atendimentos historico_atendimentos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.historico_atendimentos
    ADD CONSTRAINT historico_atendimentos_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.historico_atendimentos DROP CONSTRAINT historico_atendimentos_pkey;
       public            postgres    false    240            à
           2606    75809 P   lista_solicitacao_materiais_atendidos lista_solicitacao_materiais_atendidos_pkey 
   CONSTRAINT     é   ALTER TABLE ONLY public.lista_solicitacao_materiais_atendidos
    ADD CONSTRAINT lista_solicitacao_materiais_atendidos_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.lista_solicitacao_materiais_atendidos DROP CONSTRAINT lista_solicitacao_materiais_atendidos_pkey;
       public            postgres    false    256            Ñ
           2606    75793 <   lista_solicitacao_materiais lista_solicitacao_materiais_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.lista_solicitacao_materiais
    ADD CONSTRAINT lista_solicitacao_materiais_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.lista_solicitacao_materiais DROP CONSTRAINT lista_solicitacao_materiais_pkey;
       public            postgres    false    252            Z
           2606    76581    locais locais_nome_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.locais
    ADD CONSTRAINT locais_nome_key UNIQUE (nome);
 @   ALTER TABLE ONLY public.locais DROP CONSTRAINT locais_nome_key;
       public            postgres    false    218            \
           2606    75473    locais locais_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.locais
    ADD CONSTRAINT locais_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.locais DROP CONSTRAINT locais_pkey;
       public            postgres    false    218            ~
           2606    75760    materiais materiais_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.materiais
    ADD CONSTRAINT materiais_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.materiais DROP CONSTRAINT materiais_pkey;
       public            postgres    false    246            p
           2606    75675    pacientes pacientes_cpf_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_cpf_key UNIQUE (cpf);
 E   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_cpf_key;
       public            postgres    false    236            r
           2606    75673    pacientes pacientes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_pkey;
       public            postgres    false    236            t
           2606    75677    pacientes pacientes_rg_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_rg_key UNIQUE (rg);
 D   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_rg_key;
       public            postgres    false    236            v
           2606    75693    periodos periodos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.periodos
    ADD CONSTRAINT periodos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.periodos DROP CONSTRAINT periodos_pkey;
       public            postgres    false    238            ê
           2606    75841    plano_tto plano_tto_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.plano_tto
    ADD CONSTRAINT plano_tto_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.plano_tto DROP CONSTRAINT plano_tto_pkey;
       public            postgres    false    264            å
           2606    75825 (   procedimentos_sus procedimentos_sus_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.procedimentos_sus
    ADD CONSTRAINT procedimentos_sus_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.procedimentos_sus DROP CONSTRAINT procedimentos_sus_pkey;
       public            postgres    false    260            |
           2606    75734    racas_cores racas_cores_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.racas_cores
    ADD CONSTRAINT racas_cores_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.racas_cores DROP CONSTRAINT racas_cores_pkey;
       public            postgres    false    244            ä
           2606    75817 (   setores_materiais setores_materiais_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.setores_materiais
    ADD CONSTRAINT setores_materiais_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.setores_materiais DROP CONSTRAINT setores_materiais_pkey;
       public            postgres    false    258            Ü
           2606    75801 2   solicitacoes_materiais solicitacoes_materiais_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.solicitacoes_materiais
    ADD CONSTRAINT solicitacoes_materiais_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.solicitacoes_materiais DROP CONSTRAINT solicitacoes_materiais_pkey;
       public            postgres    false    254            ^
           2606    75481    status status_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    220            Ä
           2606    75769 $   tipos_materiais tipos_materiais_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tipos_materiais
    ADD CONSTRAINT tipos_materiais_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tipos_materiais DROP CONSTRAINT tipos_materiais_pkey;
       public            postgres    false    248            †
           2606    75943    tipos_partos tipos_partos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tipos_partos
    ADD CONSTRAINT tipos_partos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tipos_partos DROP CONSTRAINT tipos_partos_pkey;
       public            postgres    false    277            é
           2606    75833 4   tipos_procedimentos_sus tipos_procedimentos_sus_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tipos_procedimentos_sus
    ADD CONSTRAINT tipos_procedimentos_sus_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.tipos_procedimentos_sus DROP CONSTRAINT tipos_procedimentos_sus_pkey;
       public            postgres    false    262            j
           2606    75646 "   tipos_usuarios tipos_usuarios_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tipos_usuarios
    ADD CONSTRAINT tipos_usuarios_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tipos_usuarios DROP CONSTRAINT tipos_usuarios_pkey;
       public            postgres    false    230            ö
           2606    76583    turmas turmas_nome_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.turmas
    ADD CONSTRAINT turmas_nome_key UNIQUE (nome);
 @   ALTER TABLE ONLY public.turmas DROP CONSTRAINT turmas_nome_key;
       public            postgres    false    274            ú
           2606    75883    turmas turmas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.turmas
    ADD CONSTRAINT turmas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.turmas DROP CONSTRAINT turmas_pkey;
       public            postgres    false    274            d
           2606    75630    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    226            ¨
           2606    75960 2   agenda_clinicas agenda_clinicas_id_disciplina_fkey 
   FK CONSTRAINT     ù   ALTER TABLE ONLY public.agenda_clinicas
    ADD CONSTRAINT agenda_clinicas_id_disciplina_fkey FOREIGN KEY (id_disciplina) REFERENCES public.disciplinas(id);
 \   ALTER TABLE ONLY public.agenda_clinicas DROP CONSTRAINT agenda_clinicas_id_disciplina_fkey;
       public          postgres    false    216    270    3478            ≠
           2606    75965 -   agenda_clinicas agenda_clinicas_id_local_fkey 
   FK CONSTRAINT     é   ALTER TABLE ONLY public.agenda_clinicas
    ADD CONSTRAINT agenda_clinicas_id_local_fkey FOREIGN KEY (id_local) REFERENCES public.locais(id);
 W   ALTER TABLE ONLY public.agenda_clinicas DROP CONSTRAINT agenda_clinicas_id_local_fkey;
       public          postgres    false    216    3420    218            ´
           2606    75955 0   agenda_clinicas agenda_clinicas_id_paciente_fkey 
   FK CONSTRAINT     ó   ALTER TABLE ONLY public.agenda_clinicas
    ADD CONSTRAINT agenda_clinicas_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.pacientes(id);
 Z   ALTER TABLE ONLY public.agenda_clinicas DROP CONSTRAINT agenda_clinicas_id_paciente_fkey;
       public          postgres    false    236    3442    216            Æ
           2606    75970 .   agenda_clinicas agenda_clinicas_id_status_fkey 
   FK CONSTRAINT     ê   ALTER TABLE ONLY public.agenda_clinicas
    ADD CONSTRAINT agenda_clinicas_id_status_fkey FOREIGN KEY (id_status) REFERENCES public.status(id);
 X   ALTER TABLE ONLY public.agenda_clinicas DROP CONSTRAINT agenda_clinicas_id_status_fkey;
       public          postgres    false    3422    216    220            ∞
           2606    75980 9   agenda_clinicas agenda_clinicas_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ®   ALTER TABLE ONLY public.agenda_clinicas
    ADD CONSTRAINT agenda_clinicas_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 c   ALTER TABLE ONLY public.agenda_clinicas DROP CONSTRAINT agenda_clinicas_id_usuario_alteracao_fkey;
       public          postgres    false    226    3428    216            Ø
           2606    75975 8   agenda_clinicas agenda_clinicas_id_usuario_insercao_fkey 
   FK CONSTRAINT     ¶   ALTER TABLE ONLY public.agenda_clinicas
    ADD CONSTRAINT agenda_clinicas_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 b   ALTER TABLE ONLY public.agenda_clinicas DROP CONSTRAINT agenda_clinicas_id_usuario_insercao_fkey;
       public          postgres    false    216    226    3428                       2606    75985 )   alunos_cursos alunos_cursos_id_aluno_fkey 
   FK CONSTRAINT     å   ALTER TABLE ONLY public.alunos_cursos
    ADD CONSTRAINT alunos_cursos_id_aluno_fkey FOREIGN KEY (id_aluno) REFERENCES public.usuarios(id);
 S   ALTER TABLE ONLY public.alunos_cursos DROP CONSTRAINT alunos_cursos_id_aluno_fkey;
       public          postgres    false    3428    226    276                       2606    75990 )   alunos_cursos alunos_cursos_id_curso_fkey 
   FK CONSTRAINT     ä   ALTER TABLE ONLY public.alunos_cursos
    ADD CONSTRAINT alunos_cursos_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id);
 S   ALTER TABLE ONLY public.alunos_cursos DROP CONSTRAINT alunos_cursos_id_curso_fkey;
       public          postgres    false    3480    272    276                       2606    76000 5   alunos_cursos alunos_cursos_id_usuario_alteracao_fkey 
   FK CONSTRAINT     §   ALTER TABLE ONLY public.alunos_cursos
    ADD CONSTRAINT alunos_cursos_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 _   ALTER TABLE ONLY public.alunos_cursos DROP CONSTRAINT alunos_cursos_id_usuario_alteracao_fkey;
       public          postgres    false    276    226    3428                       2606    75995 4   alunos_cursos alunos_cursos_id_usuario_insercao_fkey 
   FK CONSTRAINT     ¢   ALTER TABLE ONLY public.alunos_cursos
    ADD CONSTRAINT alunos_cursos_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 ^   ALTER TABLE ONLY public.alunos_cursos DROP CONSTRAINT alunos_cursos_id_usuario_insercao_fkey;
       public          postgres    false    226    3428    276            Á
           2606    76005 5   apresentacoes apresentacoes_id_usuario_alteracao_fkey 
   FK CONSTRAINT     §   ALTER TABLE ONLY public.apresentacoes
    ADD CONSTRAINT apresentacoes_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 _   ALTER TABLE ONLY public.apresentacoes DROP CONSTRAINT apresentacoes_id_usuario_alteracao_fkey;
       public          postgres    false    250    226    3428            Ë
           2606    76010 4   apresentacoes apresentacoes_id_usuario_insercao_fkey 
   FK CONSTRAINT     ¢   ALTER TABLE ONLY public.apresentacoes
    ADD CONSTRAINT apresentacoes_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 ^   ALTER TABLE ONLY public.apresentacoes DROP CONSTRAINT apresentacoes_id_usuario_insercao_fkey;
       public          postgres    false    3428    250    226            Œ
           2606    76609 ?   avaliacoes_atendimento avaliacoes_atendimento_adversidades_fkey 
   FK CONSTRAINT     ®   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_adversidades_fkey FOREIGN KEY (adversidades) REFERENCES public.avaliacoes(id);
 i   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_adversidades_fkey;
       public          postgres    false    228    234    3432            –
           2606    76619 @   avaliacoes_atendimento avaliacoes_atendimento_autoavaliacao_fkey 
   FK CONSTRAINT     ™   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_autoavaliacao_fkey FOREIGN KEY (autoavaliacao) REFERENCES public.avaliacoes(id);
 j   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_autoavaliacao_fkey;
       public          postgres    false    3432    228    234             
           2606    76589 @   avaliacoes_atendimento avaliacoes_atendimento_comportamento_fkey 
   FK CONSTRAINT     ™   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_comportamento_fkey FOREIGN KEY (comportamento) REFERENCES public.avaliacoes(id);
 j   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_comportamento_fkey;
       public          postgres    false    228    234    3432            Ã
           2606    76599 ?   avaliacoes_atendimento avaliacoes_atendimento_conhecimento_fkey 
   FK CONSTRAINT     ®   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_conhecimento_fkey FOREIGN KEY (conhecimento) REFERENCES public.avaliacoes(id);
 i   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_conhecimento_fkey;
       public          postgres    false    234    228    3432            Õ
           2606    76604 :   avaliacoes_atendimento avaliacoes_atendimento_cuidado_fkey 
   FK CONSTRAINT     û   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_cuidado_fkey FOREIGN KEY (cuidado) REFERENCES public.avaliacoes(id);
 d   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_cuidado_fkey;
       public          postgres    false    234    3432    228            œ
           2606    76614 8   avaliacoes_atendimento avaliacoes_atendimento_dupla_fkey 
   FK CONSTRAINT     ö   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_dupla_fkey FOREIGN KEY (dupla) REFERENCES public.avaliacoes(id);
 b   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_dupla_fkey;
       public          postgres    false    234    228    3432            ≈
           2606    76035 @   avaliacoes_atendimento avaliacoes_atendimento_id_disciplina_fkey 
   FK CONSTRAINT     ´   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_id_disciplina_fkey FOREIGN KEY (id_disciplina) REFERENCES public.disciplinas(id);
 j   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_id_disciplina_fkey;
       public          postgres    false    3478    270    234            ƒ
           2606    76025 >   avaliacoes_atendimento avaliacoes_atendimento_id_paciente_fkey 
   FK CONSTRAINT     •   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.pacientes(id);
 h   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_id_paciente_fkey;
       public          postgres    false    3442    234    236            ∆
           2606    76040 =   avaliacoes_atendimento avaliacoes_atendimento_id_periodo_fkey 
   FK CONSTRAINT     ¢   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_id_periodo_fkey FOREIGN KEY (id_periodo) REFERENCES public.periodos(id);
 g   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_id_periodo_fkey;
       public          postgres    false    234    3446    238            »
           2606    76050 G   avaliacoes_atendimento avaliacoes_atendimento_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ∂   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 q   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_id_usuario_alteracao_fkey;
       public          postgres    false    234    3428    226            «
           2606    76045 F   avaliacoes_atendimento avaliacoes_atendimento_id_usuario_insercao_fkey 
   FK CONSTRAINT     ¥   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 p   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_id_usuario_insercao_fkey;
       public          postgres    false    3428    234    226            À
           2606    76594 <   avaliacoes_atendimento avaliacoes_atendimento_materiais_fkey 
   FK CONSTRAINT     ¢   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_materiais_fkey FOREIGN KEY (materiais) REFERENCES public.avaliacoes(id);
 f   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_materiais_fkey;
       public          postgres    false    234    3432    228            …
           2606    76584 ?   avaliacoes_atendimento avaliacoes_atendimento_pontualidade_fkey 
   FK CONSTRAINT     ®   ALTER TABLE ONLY public.avaliacoes_atendimento
    ADD CONSTRAINT avaliacoes_atendimento_pontualidade_fkey FOREIGN KEY (pontualidade) REFERENCES public.avaliacoes(id);
 i   ALTER TABLE ONLY public.avaliacoes_atendimento DROP CONSTRAINT avaliacoes_atendimento_pontualidade_fkey;
       public          postgres    false    228    234    3432            ø
           2606    76020 /   avaliacoes avaliacoes_id_usuario_alteracao_fkey 
   FK CONSTRAINT     û   ALTER TABLE ONLY public.avaliacoes
    ADD CONSTRAINT avaliacoes_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 Y   ALTER TABLE ONLY public.avaliacoes DROP CONSTRAINT avaliacoes_id_usuario_alteracao_fkey;
       public          postgres    false    3428    226    228            æ
           2606    76015 .   avaliacoes avaliacoes_id_usuario_insercao_fkey 
   FK CONSTRAINT     ú   ALTER TABLE ONLY public.avaliacoes
    ADD CONSTRAINT avaliacoes_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 X   ALTER TABLE ONLY public.avaliacoes DROP CONSTRAINT avaliacoes_id_usuario_insercao_fkey;
       public          postgres    false    228    226    3428            •
           2606    76055    bairros bairros_id_cidade_fkey 
   FK CONSTRAINT     Å   ALTER TABLE ONLY public.bairros
    ADD CONSTRAINT bairros_id_cidade_fkey FOREIGN KEY (id_cidade) REFERENCES public.cidades(id);
 H   ALTER TABLE ONLY public.bairros DROP CONSTRAINT bairros_id_cidade_fkey;
       public          postgres    false    210    212    3410            ¶
           2606    76060 )   bairros bairros_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ò   ALTER TABLE ONLY public.bairros
    ADD CONSTRAINT bairros_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 S   ALTER TABLE ONLY public.bairros DROP CONSTRAINT bairros_id_usuario_alteracao_fkey;
       public          postgres    false    226    212    3428            ß
           2606    76065 (   bairros bairros_id_usuario_insercao_fkey 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY public.bairros
    ADD CONSTRAINT bairros_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 R   ALTER TABLE ONLY public.bairros DROP CONSTRAINT bairros_id_usuario_insercao_fkey;
       public          postgres    false    212    3428    226            §
           2606    76075 )   cidades cidades_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ò   ALTER TABLE ONLY public.cidades
    ADD CONSTRAINT cidades_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 S   ALTER TABLE ONLY public.cidades DROP CONSTRAINT cidades_id_usuario_alteracao_fkey;
       public          postgres    false    226    3428    210            £
           2606    76070 (   cidades cidades_id_usuario_insercao_fkey 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY public.cidades
    ADD CONSTRAINT cidades_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 R   ALTER TABLE ONLY public.cidades DROP CONSTRAINT cidades_id_usuario_insercao_fkey;
       public          postgres    false    210    226    3428            √
           2606    76095 3   comorbidades comorbidades_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ¢   ALTER TABLE ONLY public.comorbidades
    ADD CONSTRAINT comorbidades_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 ]   ALTER TABLE ONLY public.comorbidades DROP CONSTRAINT comorbidades_id_usuario_alteracao_fkey;
       public          postgres    false    3428    226    232            ¬
           2606    76090 2   comorbidades comorbidades_id_usuario_insercao_fkey 
   FK CONSTRAINT     †   ALTER TABLE ONLY public.comorbidades
    ADD CONSTRAINT comorbidades_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 \   ALTER TABLE ONLY public.comorbidades DROP CONSTRAINT comorbidades_id_usuario_insercao_fkey;
       public          postgres    false    232    226    3428            ∫
           2606    76120 A   comorbidades_pacientes comorbidades_pacientes_id_comorbidade_fkey 
   FK CONSTRAINT     Æ   ALTER TABLE ONLY public.comorbidades_pacientes
    ADD CONSTRAINT comorbidades_pacientes_id_comorbidade_fkey FOREIGN KEY (id_comorbidade) REFERENCES public.comorbidades(id);
 k   ALTER TABLE ONLY public.comorbidades_pacientes DROP CONSTRAINT comorbidades_pacientes_id_comorbidade_fkey;
       public          postgres    false    232    224    3436            π
           2606    76110 >   comorbidades_pacientes comorbidades_pacientes_id_paciente_fkey 
   FK CONSTRAINT     •   ALTER TABLE ONLY public.comorbidades_pacientes
    ADD CONSTRAINT comorbidades_pacientes_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.pacientes(id);
 h   ALTER TABLE ONLY public.comorbidades_pacientes DROP CONSTRAINT comorbidades_pacientes_id_paciente_fkey;
       public          postgres    false    3442    224    236            ∑
           2606    76100 G   comorbidades_pacientes comorbidades_pacientes_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ∂   ALTER TABLE ONLY public.comorbidades_pacientes
    ADD CONSTRAINT comorbidades_pacientes_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 q   ALTER TABLE ONLY public.comorbidades_pacientes DROP CONSTRAINT comorbidades_pacientes_id_usuario_alteracao_fkey;
       public          postgres    false    226    224    3428            ∏
           2606    76105 F   comorbidades_pacientes comorbidades_pacientes_id_usuario_insercao_fkey 
   FK CONSTRAINT     ¥   ALTER TABLE ONLY public.comorbidades_pacientes
    ADD CONSTRAINT comorbidades_pacientes_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 p   ALTER TABLE ONLY public.comorbidades_pacientes DROP CONSTRAINT comorbidades_pacientes_id_usuario_insercao_fkey;
       public          postgres    false    224    226    3428            	           2606    76130 5   complexidades complexidades_id_usuario_alteracao_fkey 
   FK CONSTRAINT     §   ALTER TABLE ONLY public.complexidades
    ADD CONSTRAINT complexidades_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 _   ALTER TABLE ONLY public.complexidades DROP CONSTRAINT complexidades_id_usuario_alteracao_fkey;
       public          postgres    false    268    226    3428                       2606    76125 4   complexidades complexidades_id_usuario_insercao_fkey 
   FK CONSTRAINT     ¢   ALTER TABLE ONLY public.complexidades
    ADD CONSTRAINT complexidades_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 ^   ALTER TABLE ONLY public.complexidades DROP CONSTRAINT complexidades_id_usuario_insercao_fkey;
       public          postgres    false    3428    226    268                       2606    76135 '   cursos cursos_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 Q   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_id_usuario_alteracao_fkey;
       public          postgres    false    226    272    3428                       2606    76140 &   cursos cursos_id_usuario_insercao_fkey 
   FK CONSTRAINT     î   ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 P   ALTER TABLE ONLY public.cursos DROP CONSTRAINT cursos_id_usuario_insercao_fkey;
       public          postgres    false    272    226    3428                       2606    76155 %   disciplinas disciplinas_id_curso_fkey 
   FK CONSTRAINT     Ü   ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinas_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id);
 O   ALTER TABLE ONLY public.disciplinas DROP CONSTRAINT disciplinas_id_curso_fkey;
       public          postgres    false    272    270    3480            
           2606    76150 '   disciplinas disciplinas_id_periodo_fkey 
   FK CONSTRAINT     å   ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinas_id_periodo_fkey FOREIGN KEY (id_periodo) REFERENCES public.periodos(id);
 Q   ALTER TABLE ONLY public.disciplinas DROP CONSTRAINT disciplinas_id_periodo_fkey;
       public          postgres    false    3446    270    238            
           2606    76145 %   disciplinas disciplinas_id_turma_fkey 
   FK CONSTRAINT     Ü   ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinas_id_turma_fkey FOREIGN KEY (id_turma) REFERENCES public.turmas(id);
 O   ALTER TABLE ONLY public.disciplinas DROP CONSTRAINT disciplinas_id_turma_fkey;
       public          postgres    false    3484    270    274                       2606    76165 1   disciplinas disciplinas_id_usuario_alteracao_fkey 
   FK CONSTRAINT     û   ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinas_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.cursos(id);
 [   ALTER TABLE ONLY public.disciplinas DROP CONSTRAINT disciplinas_id_usuario_alteracao_fkey;
       public          postgres    false    3480    270    272            
           2606    76160 0   disciplinas disciplinas_id_usuario_insercao_fkey 
   FK CONSTRAINT     ú   ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinas_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.cursos(id);
 Z   ALTER TABLE ONLY public.disciplinas DROP CONSTRAINT disciplinas_id_usuario_insercao_fkey;
       public          postgres    false    3480    270    272                        2606    76200 4   encaminhamentos encaminhamentos_id_complexidade_fkey 
   FK CONSTRAINT     £   ALTER TABLE ONLY public.encaminhamentos
    ADD CONSTRAINT encaminhamentos_id_complexidade_fkey FOREIGN KEY (id_complexidade) REFERENCES public.complexidades(id);
 ^   ALTER TABLE ONLY public.encaminhamentos DROP CONSTRAINT encaminhamentos_id_complexidade_fkey;
       public          postgres    false    266    3476    268                       2606    76185 -   encaminhamentos encaminhamentos_id_curso_fkey 
   FK CONSTRAINT     é   ALTER TABLE ONLY public.encaminhamentos
    ADD CONSTRAINT encaminhamentos_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id);
 W   ALTER TABLE ONLY public.encaminhamentos DROP CONSTRAINT encaminhamentos_id_curso_fkey;
       public          postgres    false    3480    272    266                       2606    76190 5   encaminhamentos encaminhamentos_id_especialidade_fkey 
   FK CONSTRAINT     ¶   ALTER TABLE ONLY public.encaminhamentos
    ADD CONSTRAINT encaminhamentos_id_especialidade_fkey FOREIGN KEY (id_especialidade) REFERENCES public.especialidades(id);
 _   ALTER TABLE ONLY public.encaminhamentos DROP CONSTRAINT encaminhamentos_id_especialidade_fkey;
       public          postgres    false    242    3450    266                       2606    76180 0   encaminhamentos encaminhamentos_id_paciente_fkey 
   FK CONSTRAINT     ó   ALTER TABLE ONLY public.encaminhamentos
    ADD CONSTRAINT encaminhamentos_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.pacientes(id);
 Z   ALTER TABLE ONLY public.encaminhamentos DROP CONSTRAINT encaminhamentos_id_paciente_fkey;
       public          postgres    false    266    236    3442                       2606    76195 .   encaminhamentos encaminhamentos_id_status_fkey 
   FK CONSTRAINT     ê   ALTER TABLE ONLY public.encaminhamentos
    ADD CONSTRAINT encaminhamentos_id_status_fkey FOREIGN KEY (id_status) REFERENCES public.status(id);
 X   ALTER TABLE ONLY public.encaminhamentos DROP CONSTRAINT encaminhamentos_id_status_fkey;
       public          postgres    false    3422    266    220                       2606    76170 9   encaminhamentos encaminhamentos_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ¶   ALTER TABLE ONLY public.encaminhamentos
    ADD CONSTRAINT encaminhamentos_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.cursos(id);
 c   ALTER TABLE ONLY public.encaminhamentos DROP CONSTRAINT encaminhamentos_id_usuario_alteracao_fkey;
       public          postgres    false    3480    266    272                       2606    76175 8   encaminhamentos encaminhamentos_id_usuario_insercao_fkey 
   FK CONSTRAINT     §   ALTER TABLE ONLY public.encaminhamentos
    ADD CONSTRAINT encaminhamentos_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.cursos(id);
 b   ALTER TABLE ONLY public.encaminhamentos DROP CONSTRAINT encaminhamentos_id_usuario_insercao_fkey;
       public          postgres    false    266    272    3480            ®
           2606    76205 "   enderecos enderecos_id_bairro_fkey 
   FK CONSTRAINT     Ö   ALTER TABLE ONLY public.enderecos
    ADD CONSTRAINT enderecos_id_bairro_fkey FOREIGN KEY (id_bairro) REFERENCES public.bairros(id);
 L   ALTER TABLE ONLY public.enderecos DROP CONSTRAINT enderecos_id_bairro_fkey;
       public          postgres    false    214    212    3412            ©
           2606    76210 -   enderecos enderecos_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ú   ALTER TABLE ONLY public.enderecos
    ADD CONSTRAINT enderecos_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 W   ALTER TABLE ONLY public.enderecos DROP CONSTRAINT enderecos_id_usuario_alteracao_fkey;
       public          postgres    false    3428    214    226            ™
           2606    76215 ,   enderecos enderecos_id_usuario_insercao_fkey 
   FK CONSTRAINT     ö   ALTER TABLE ONLY public.enderecos
    ADD CONSTRAINT enderecos_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 V   ALTER TABLE ONLY public.enderecos DROP CONSTRAINT enderecos_id_usuario_insercao_fkey;
       public          postgres    false    214    226    3428                       2606    76230 (   entrevistas entrevistas_id_paciente_fkey 
   FK CONSTRAINT     è   ALTER TABLE ONLY public.entrevistas
    ADD CONSTRAINT entrevistas_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.pacientes(id);
 R   ALTER TABLE ONLY public.entrevistas DROP CONSTRAINT entrevistas_id_paciente_fkey;
       public          postgres    false    3442    236    279                       2606    76565 *   entrevistas entrevistas_id_tipo_parto_fkey 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY public.entrevistas
    ADD CONSTRAINT entrevistas_id_tipo_parto_fkey FOREIGN KEY (id_tipo_parto) REFERENCES public.tipos_partos(id);
 T   ALTER TABLE ONLY public.entrevistas DROP CONSTRAINT entrevistas_id_tipo_parto_fkey;
       public          postgres    false    277    279    3488                       2606    76225 1   entrevistas entrevistas_id_usuario_alteracao_fkey 
   FK CONSTRAINT     †   ALTER TABLE ONLY public.entrevistas
    ADD CONSTRAINT entrevistas_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 [   ALTER TABLE ONLY public.entrevistas DROP CONSTRAINT entrevistas_id_usuario_alteracao_fkey;
       public          postgres    false    279    226    3428                       2606    76220 0   entrevistas entrevistas_id_usuario_insercao_fkey 
   FK CONSTRAINT     û   ALTER TABLE ONLY public.entrevistas
    ADD CONSTRAINT entrevistas_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 Z   ALTER TABLE ONLY public.entrevistas DROP CONSTRAINT entrevistas_id_usuario_insercao_fkey;
       public          postgres    false    226    279    3428            ›
           2606    76235 7   especialidades especialidades_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ¶   ALTER TABLE ONLY public.especialidades
    ADD CONSTRAINT especialidades_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 a   ALTER TABLE ONLY public.especialidades DROP CONSTRAINT especialidades_id_usuario_alteracao_fkey;
       public          postgres    false    3428    242    226            ﬁ
           2606    76240 6   especialidades especialidades_id_usuario_insercao_fkey 
   FK CONSTRAINT     §   ALTER TABLE ONLY public.especialidades
    ADD CONSTRAINT especialidades_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 `   ALTER TABLE ONLY public.especialidades DROP CONSTRAINT especialidades_id_usuario_insercao_fkey;
       public          postgres    false    242    3428    226            ∂
           2606    76250 5   estados_civis estados_civis_id_usuario_alteracao_fkey 
   FK CONSTRAINT     §   ALTER TABLE ONLY public.estados_civis
    ADD CONSTRAINT estados_civis_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 _   ALTER TABLE ONLY public.estados_civis DROP CONSTRAINT estados_civis_id_usuario_alteracao_fkey;
       public          postgres    false    3428    222    226            µ
           2606    76245 4   estados_civis estados_civis_id_usuario_insercao_fkey 
   FK CONSTRAINT     ¢   ALTER TABLE ONLY public.estados_civis
    ADD CONSTRAINT estados_civis_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 ^   ALTER TABLE ONLY public.estados_civis DROP CONSTRAINT estados_civis_id_usuario_insercao_fkey;
       public          postgres    false    222    226    3428            ‹
           2606    76285 @   historico_atendimentos historico_atendimentos_id_disciplina_fkey 
   FK CONSTRAINT     ´   ALTER TABLE ONLY public.historico_atendimentos
    ADD CONSTRAINT historico_atendimentos_id_disciplina_fkey FOREIGN KEY (id_disciplina) REFERENCES public.disciplinas(id);
 j   ALTER TABLE ONLY public.historico_atendimentos DROP CONSTRAINT historico_atendimentos_id_disciplina_fkey;
       public          postgres    false    240    3478    270            €
           2606    76280 C   historico_atendimentos historico_atendimentos_id_especialidade_fkey 
   FK CONSTRAINT     ¥   ALTER TABLE ONLY public.historico_atendimentos
    ADD CONSTRAINT historico_atendimentos_id_especialidade_fkey FOREIGN KEY (id_especialidade) REFERENCES public.especialidades(id);
 m   ALTER TABLE ONLY public.historico_atendimentos DROP CONSTRAINT historico_atendimentos_id_especialidade_fkey;
       public          postgres    false    240    3450    242            ⁄
           2606    76275 >   historico_atendimentos historico_atendimentos_id_paciente_fkey 
   FK CONSTRAINT     •   ALTER TABLE ONLY public.historico_atendimentos
    ADD CONSTRAINT historico_atendimentos_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.pacientes(id);
 h   ALTER TABLE ONLY public.historico_atendimentos DROP CONSTRAINT historico_atendimentos_id_paciente_fkey;
       public          postgres    false    236    3442    240            Ÿ
           2606    76270 G   historico_atendimentos historico_atendimentos_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ∂   ALTER TABLE ONLY public.historico_atendimentos
    ADD CONSTRAINT historico_atendimentos_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 q   ALTER TABLE ONLY public.historico_atendimentos DROP CONSTRAINT historico_atendimentos_id_usuario_alteracao_fkey;
       public          postgres    false    240    3428    226            ÿ
           2606    76265 F   historico_atendimentos historico_atendimentos_id_usuario_insercao_fkey 
   FK CONSTRAINT     ¥   ALTER TABLE ONLY public.historico_atendimentos
    ADD CONSTRAINT historico_atendimentos_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 p   ALTER TABLE ONLY public.historico_atendimentos DROP CONSTRAINT historico_atendimentos_id_usuario_insercao_fkey;
       public          postgres    false    226    3428    240            Û
           2606    76330 e   lista_solicitacao_materiais_atendidos lista_solicitacao_materiais_atendidos_id_lista_solicitacao_fkey 
   FK CONSTRAINT     Á   ALTER TABLE ONLY public.lista_solicitacao_materiais_atendidos
    ADD CONSTRAINT lista_solicitacao_materiais_atendidos_id_lista_solicitacao_fkey FOREIGN KEY (id_lista_solicitacao) REFERENCES public.lista_solicitacao_materiais(id);
 è   ALTER TABLE ONLY public.lista_solicitacao_materiais_atendidos DROP CONSTRAINT lista_solicitacao_materiais_atendidos_id_lista_solicitacao_fkey;
       public          postgres    false    252    256    3460            Ú
           2606    76325 \   lista_solicitacao_materiais_atendidos lista_solicitacao_materiais_atendidos_id_material_fkey 
   FK CONSTRAINT     √   ALTER TABLE ONLY public.lista_solicitacao_materiais_atendidos
    ADD CONSTRAINT lista_solicitacao_materiais_atendidos_id_material_fkey FOREIGN KEY (id_material) REFERENCES public.materiais(id);
 Ü   ALTER TABLE ONLY public.lista_solicitacao_materiais_atendidos DROP CONSTRAINT lista_solicitacao_materiais_atendidos_id_material_fkey;
       public          postgres    false    256    3454    246            ı
           2606    76340 e   lista_solicitacao_materiais_atendidos lista_solicitacao_materiais_atendidos_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ‘   ALTER TABLE ONLY public.lista_solicitacao_materiais_atendidos
    ADD CONSTRAINT lista_solicitacao_materiais_atendidos_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 è   ALTER TABLE ONLY public.lista_solicitacao_materiais_atendidos DROP CONSTRAINT lista_solicitacao_materiais_atendidos_id_usuario_alteracao_fkey;
       public          postgres    false    256    3428    226            Ù
           2606    76335 d   lista_solicitacao_materiais_atendidos lista_solicitacao_materiais_atendidos_id_usuario_insercao_fkey 
   FK CONSTRAINT     “   ALTER TABLE ONLY public.lista_solicitacao_materiais_atendidos
    ADD CONSTRAINT lista_solicitacao_materiais_atendidos_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 é   ALTER TABLE ONLY public.lista_solicitacao_materiais_atendidos DROP CONSTRAINT lista_solicitacao_materiais_atendidos_id_usuario_insercao_fkey;
       public          postgres    false    3428    256    226            È
           2606    76300 H   lista_solicitacao_materiais lista_solicitacao_materiais_id_material_fkey 
   FK CONSTRAINT     Ø   ALTER TABLE ONLY public.lista_solicitacao_materiais
    ADD CONSTRAINT lista_solicitacao_materiais_id_material_fkey FOREIGN KEY (id_material) REFERENCES public.materiais(id);
 r   ALTER TABLE ONLY public.lista_solicitacao_materiais DROP CONSTRAINT lista_solicitacao_materiais_id_material_fkey;
       public          postgres    false    252    3454    246            Í
           2606    76305 I   lista_solicitacao_materiais lista_solicitacao_materiais_id_material_fkey1 
   FK CONSTRAINT     ∞   ALTER TABLE ONLY public.lista_solicitacao_materiais
    ADD CONSTRAINT lista_solicitacao_materiais_id_material_fkey1 FOREIGN KEY (id_material) REFERENCES public.materiais(id);
 s   ALTER TABLE ONLY public.lista_solicitacao_materiais DROP CONSTRAINT lista_solicitacao_materiais_id_material_fkey1;
       public          postgres    false    246    3454    252            Î
           2606    76310 K   lista_solicitacao_materiais lista_solicitacao_materiais_id_solicitacao_fkey 
   FK CONSTRAINT     ¬   ALTER TABLE ONLY public.lista_solicitacao_materiais
    ADD CONSTRAINT lista_solicitacao_materiais_id_solicitacao_fkey FOREIGN KEY (id_solicitacao) REFERENCES public.solicitacoes_materiais(id);
 u   ALTER TABLE ONLY public.lista_solicitacao_materiais DROP CONSTRAINT lista_solicitacao_materiais_id_solicitacao_fkey;
       public          postgres    false    254    252    3462            Ì
           2606    76320 Q   lista_solicitacao_materiais lista_solicitacao_materiais_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ¿   ALTER TABLE ONLY public.lista_solicitacao_materiais
    ADD CONSTRAINT lista_solicitacao_materiais_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 {   ALTER TABLE ONLY public.lista_solicitacao_materiais DROP CONSTRAINT lista_solicitacao_materiais_id_usuario_alteracao_fkey;
       public          postgres    false    252    3428    226            Ï
           2606    76315 P   lista_solicitacao_materiais lista_solicitacao_materiais_id_usuario_insercao_fkey 
   FK CONSTRAINT     æ   ALTER TABLE ONLY public.lista_solicitacao_materiais
    ADD CONSTRAINT lista_solicitacao_materiais_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 z   ALTER TABLE ONLY public.lista_solicitacao_materiais DROP CONSTRAINT lista_solicitacao_materiais_id_usuario_insercao_fkey;
       public          postgres    false    252    3428    226            ≤
           2606    76350 '   locais locais_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY public.locais
    ADD CONSTRAINT locais_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 Q   ALTER TABLE ONLY public.locais DROP CONSTRAINT locais_id_usuario_alteracao_fkey;
       public          postgres    false    226    3428    218            ±
           2606    76345 &   locais locais_id_usuario_insercao_fkey 
   FK CONSTRAINT     î   ALTER TABLE ONLY public.locais
    ADD CONSTRAINT locais_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 P   ALTER TABLE ONLY public.locais DROP CONSTRAINT locais_id_usuario_insercao_fkey;
       public          postgres    false    218    226    3428            ‰
           2606    76370 (   materiais materiais_id_apresentacao_fkey 
   FK CONSTRAINT     ó   ALTER TABLE ONLY public.materiais
    ADD CONSTRAINT materiais_id_apresentacao_fkey FOREIGN KEY (id_apresentacao) REFERENCES public.apresentacoes(id);
 R   ALTER TABLE ONLY public.materiais DROP CONSTRAINT materiais_id_apresentacao_fkey;
       public          postgres    false    250    246    3458            „
           2606    76365     materiais materiais_id_tipo_fkey 
   FK CONSTRAINT     â   ALTER TABLE ONLY public.materiais
    ADD CONSTRAINT materiais_id_tipo_fkey FOREIGN KEY (id_tipo) REFERENCES public.tipos_materiais(id);
 J   ALTER TABLE ONLY public.materiais DROP CONSTRAINT materiais_id_tipo_fkey;
       public          postgres    false    246    248    3456            ·
           2606    76355 -   materiais materiais_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ú   ALTER TABLE ONLY public.materiais
    ADD CONSTRAINT materiais_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 W   ALTER TABLE ONLY public.materiais DROP CONSTRAINT materiais_id_usuario_alteracao_fkey;
       public          postgres    false    226    3428    246            ‚
           2606    76360 ,   materiais materiais_id_usuario_insercao_fkey 
   FK CONSTRAINT     ö   ALTER TABLE ONLY public.materiais
    ADD CONSTRAINT materiais_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 V   ALTER TABLE ONLY public.materiais DROP CONSTRAINT materiais_id_usuario_insercao_fkey;
       public          postgres    false    3428    226    246            ”
           2606    76385 $   pacientes pacientes_id_endereco_fkey 
   FK CONSTRAINT     ã   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_id_endereco_fkey FOREIGN KEY (id_endereco) REFERENCES public.enderecos(id);
 N   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_id_endereco_fkey;
       public          postgres    false    3414    236    214            “
           2606    76380 (   pacientes pacientes_id_estado_civil_fkey 
   FK CONSTRAINT     ó   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_id_estado_civil_fkey FOREIGN KEY (id_estado_civil) REFERENCES public.estados_civis(id);
 R   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_id_estado_civil_fkey;
       public          postgres    false    236    3424    222            —
           2606    76375     pacientes pacientes_id_raca_fkey 
   FK CONSTRAINT     Ö   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_id_raca_fkey FOREIGN KEY (id_raca) REFERENCES public.racas_cores(id);
 J   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_id_raca_fkey;
       public          postgres    false    3452    236    244            ’
           2606    76400 -   pacientes pacientes_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ú   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 W   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_id_usuario_alteracao_fkey;
       public          postgres    false    236    226    3428            ‘
           2606    76395 ,   pacientes pacientes_id_usuario_insercao_fkey 
   FK CONSTRAINT     ö   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 V   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_id_usuario_insercao_fkey;
       public          postgres    false    236    226    3428            ÷
           2606    76405 +   periodos periodos_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ö   ALTER TABLE ONLY public.periodos
    ADD CONSTRAINT periodos_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 U   ALTER TABLE ONLY public.periodos DROP CONSTRAINT periodos_id_usuario_alteracao_fkey;
       public          postgres    false    238    3428    226            ◊
           2606    76410 *   periodos periodos_id_usuario_insercao_fkey 
   FK CONSTRAINT     ò   ALTER TABLE ONLY public.periodos
    ADD CONSTRAINT periodos_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 T   ALTER TABLE ONLY public.periodos DROP CONSTRAINT periodos_id_usuario_insercao_fkey;
       public          postgres    false    3428    226    238                        2606    76430 )   plano_tto plano_tto_id_especialidade_fkey 
   FK CONSTRAINT     ö   ALTER TABLE ONLY public.plano_tto
    ADD CONSTRAINT plano_tto_id_especialidade_fkey FOREIGN KEY (id_especialidade) REFERENCES public.especialidades(id);
 S   ALTER TABLE ONLY public.plano_tto DROP CONSTRAINT plano_tto_id_especialidade_fkey;
       public          postgres    false    242    3450    264            ˇ
           2606    76425 $   plano_tto plano_tto_id_paciente_fkey 
   FK CONSTRAINT     ã   ALTER TABLE ONLY public.plano_tto
    ADD CONSTRAINT plano_tto_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.pacientes(id);
 N   ALTER TABLE ONLY public.plano_tto DROP CONSTRAINT plano_tto_id_paciente_fkey;
       public          postgres    false    236    264    3442            ˛
           2606    76420 -   plano_tto plano_tto_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ú   ALTER TABLE ONLY public.plano_tto
    ADD CONSTRAINT plano_tto_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 W   ALTER TABLE ONLY public.plano_tto DROP CONSTRAINT plano_tto_id_usuario_alteracao_fkey;
       public          postgres    false    264    3428    226            ˝
           2606    76415 ,   plano_tto plano_tto_id_usuario_insercao_fkey 
   FK CONSTRAINT     ö   ALTER TABLE ONLY public.plano_tto
    ADD CONSTRAINT plano_tto_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 V   ALTER TABLE ONLY public.plano_tto DROP CONSTRAINT plano_tto_id_usuario_insercao_fkey;
       public          postgres    false    264    3428    226            ¯
           2606    76435 0   procedimentos_sus procedimentos_sus_id_tipo_fkey 
   FK CONSTRAINT     °   ALTER TABLE ONLY public.procedimentos_sus
    ADD CONSTRAINT procedimentos_sus_id_tipo_fkey FOREIGN KEY (id_tipo) REFERENCES public.tipos_procedimentos_sus(id);
 Z   ALTER TABLE ONLY public.procedimentos_sus DROP CONSTRAINT procedimentos_sus_id_tipo_fkey;
       public          postgres    false    262    260    3470            ˘
           2606    76445 =   procedimentos_sus procedimentos_sus_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ¨   ALTER TABLE ONLY public.procedimentos_sus
    ADD CONSTRAINT procedimentos_sus_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 g   ALTER TABLE ONLY public.procedimentos_sus DROP CONSTRAINT procedimentos_sus_id_usuario_alteracao_fkey;
       public          postgres    false    260    226    3428            ˙
           2606    76440 <   procedimentos_sus procedimentos_sus_id_usuario_insercao_fkey 
   FK CONSTRAINT     ™   ALTER TABLE ONLY public.procedimentos_sus
    ADD CONSTRAINT procedimentos_sus_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 f   ALTER TABLE ONLY public.procedimentos_sus DROP CONSTRAINT procedimentos_sus_id_usuario_insercao_fkey;
       public          postgres    false    260    3428    226            ﬂ
           2606    76450 1   racas_cores racas_cores_id_usuario_alteracao_fkey 
   FK CONSTRAINT     †   ALTER TABLE ONLY public.racas_cores
    ADD CONSTRAINT racas_cores_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 [   ALTER TABLE ONLY public.racas_cores DROP CONSTRAINT racas_cores_id_usuario_alteracao_fkey;
       public          postgres    false    244    3428    226            ‡
           2606    76455 0   racas_cores racas_cores_id_usuario_insercao_fkey 
   FK CONSTRAINT     û   ALTER TABLE ONLY public.racas_cores
    ADD CONSTRAINT racas_cores_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 Z   ALTER TABLE ONLY public.racas_cores DROP CONSTRAINT racas_cores_id_usuario_insercao_fkey;
       public          postgres    false    244    3428    226            ˆ
           2606    76465 =   setores_materiais setores_materiais_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ¨   ALTER TABLE ONLY public.setores_materiais
    ADD CONSTRAINT setores_materiais_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 g   ALTER TABLE ONLY public.setores_materiais DROP CONSTRAINT setores_materiais_id_usuario_alteracao_fkey;
       public          postgres    false    3428    258    226            ˜
           2606    76460 <   setores_materiais setores_materiais_id_usuario_insercao_fkey 
   FK CONSTRAINT     ™   ALTER TABLE ONLY public.setores_materiais
    ADD CONSTRAINT setores_materiais_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 f   ALTER TABLE ONLY public.setores_materiais DROP CONSTRAINT setores_materiais_id_usuario_insercao_fkey;
       public          postgres    false    226    258    3428            Ó
           2606    76480 ;   solicitacoes_materiais solicitacoes_materiais_id_setor_fkey 
   FK CONSTRAINT     ß   ALTER TABLE ONLY public.solicitacoes_materiais
    ADD CONSTRAINT solicitacoes_materiais_id_setor_fkey FOREIGN KEY (id_setor) REFERENCES public.setores_materiais(id);
 e   ALTER TABLE ONLY public.solicitacoes_materiais DROP CONSTRAINT solicitacoes_materiais_id_setor_fkey;
       public          postgres    false    258    3466    254            Ô
           2606    76485 <   solicitacoes_materiais solicitacoes_materiais_id_status_fkey 
   FK CONSTRAINT     û   ALTER TABLE ONLY public.solicitacoes_materiais
    ADD CONSTRAINT solicitacoes_materiais_id_status_fkey FOREIGN KEY (id_status) REFERENCES public.status(id);
 f   ALTER TABLE ONLY public.solicitacoes_materiais DROP CONSTRAINT solicitacoes_materiais_id_status_fkey;
       public          postgres    false    220    3422    254            
           2606    76470 G   solicitacoes_materiais solicitacoes_materiais_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ∂   ALTER TABLE ONLY public.solicitacoes_materiais
    ADD CONSTRAINT solicitacoes_materiais_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 q   ALTER TABLE ONLY public.solicitacoes_materiais DROP CONSTRAINT solicitacoes_materiais_id_usuario_alteracao_fkey;
       public          postgres    false    254    3428    226            Ò
           2606    76475 F   solicitacoes_materiais solicitacoes_materiais_id_usuario_insercao_fkey 
   FK CONSTRAINT     ¥   ALTER TABLE ONLY public.solicitacoes_materiais
    ADD CONSTRAINT solicitacoes_materiais_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 p   ALTER TABLE ONLY public.solicitacoes_materiais DROP CONSTRAINT solicitacoes_materiais_id_usuario_insercao_fkey;
       public          postgres    false    226    3428    254            ≥
           2606    76490 '   status status_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 Q   ALTER TABLE ONLY public.status DROP CONSTRAINT status_id_usuario_alteracao_fkey;
       public          postgres    false    3428    226    220            ¥
           2606    76495 &   status status_id_usuario_insercao_fkey 
   FK CONSTRAINT     î   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 P   ALTER TABLE ONLY public.status DROP CONSTRAINT status_id_usuario_insercao_fkey;
       public          postgres    false    220    3428    226            Â
           2606    76505 9   tipos_materiais tipos_materiais_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ®   ALTER TABLE ONLY public.tipos_materiais
    ADD CONSTRAINT tipos_materiais_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 c   ALTER TABLE ONLY public.tipos_materiais DROP CONSTRAINT tipos_materiais_id_usuario_alteracao_fkey;
       public          postgres    false    248    3428    226            Ê
           2606    76500 8   tipos_materiais tipos_materiais_id_usuario_insercao_fkey 
   FK CONSTRAINT     ¶   ALTER TABLE ONLY public.tipos_materiais
    ADD CONSTRAINT tipos_materiais_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 b   ALTER TABLE ONLY public.tipos_materiais DROP CONSTRAINT tipos_materiais_id_usuario_insercao_fkey;
       public          postgres    false    226    3428    248                       2606    76510 3   tipos_partos tipos_partos_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ¢   ALTER TABLE ONLY public.tipos_partos
    ADD CONSTRAINT tipos_partos_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 ]   ALTER TABLE ONLY public.tipos_partos DROP CONSTRAINT tipos_partos_id_usuario_alteracao_fkey;
       public          postgres    false    277    3428    226                       2606    76515 2   tipos_partos tipos_partos_id_usuario_insercao_fkey 
   FK CONSTRAINT     †   ALTER TABLE ONLY public.tipos_partos
    ADD CONSTRAINT tipos_partos_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 \   ALTER TABLE ONLY public.tipos_partos DROP CONSTRAINT tipos_partos_id_usuario_insercao_fkey;
       public          postgres    false    226    3428    277            ˚
           2606    76525 I   tipos_procedimentos_sus tipos_procedimentos_sus_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ∏   ALTER TABLE ONLY public.tipos_procedimentos_sus
    ADD CONSTRAINT tipos_procedimentos_sus_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 s   ALTER TABLE ONLY public.tipos_procedimentos_sus DROP CONSTRAINT tipos_procedimentos_sus_id_usuario_alteracao_fkey;
       public          postgres    false    3428    226    262            ¸
           2606    76520 H   tipos_procedimentos_sus tipos_procedimentos_sus_id_usuario_insercao_fkey 
   FK CONSTRAINT     ∂   ALTER TABLE ONLY public.tipos_procedimentos_sus
    ADD CONSTRAINT tipos_procedimentos_sus_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 r   ALTER TABLE ONLY public.tipos_procedimentos_sus DROP CONSTRAINT tipos_procedimentos_sus_id_usuario_insercao_fkey;
       public          postgres    false    3428    262    226            ¿
           2606    76530 7   tipos_usuarios tipos_usuarios_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ¶   ALTER TABLE ONLY public.tipos_usuarios
    ADD CONSTRAINT tipos_usuarios_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 a   ALTER TABLE ONLY public.tipos_usuarios DROP CONSTRAINT tipos_usuarios_id_usuario_alteracao_fkey;
       public          postgres    false    226    230    3428            ¡
           2606    76535 6   tipos_usuarios tipos_usuarios_id_usuario_insercao_fkey 
   FK CONSTRAINT     §   ALTER TABLE ONLY public.tipos_usuarios
    ADD CONSTRAINT tipos_usuarios_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 `   ALTER TABLE ONLY public.tipos_usuarios DROP CONSTRAINT tipos_usuarios_id_usuario_insercao_fkey;
       public          postgres    false    3428    226    230                       2606    76545 '   turmas turmas_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY public.turmas
    ADD CONSTRAINT turmas_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 Q   ALTER TABLE ONLY public.turmas DROP CONSTRAINT turmas_id_usuario_alteracao_fkey;
       public          postgres    false    3428    226    274                       2606    76540 &   turmas turmas_id_usuario_insercao_fkey 
   FK CONSTRAINT     î   ALTER TABLE ONLY public.turmas
    ADD CONSTRAINT turmas_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 P   ALTER TABLE ONLY public.turmas DROP CONSTRAINT turmas_id_usuario_insercao_fkey;
       public          postgres    false    226    274    3428            ª
           2606    76560    usuarios usuarios_id_tipo_fkey 
   FK CONSTRAINT     Ü   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_tipo_fkey FOREIGN KEY (id_tipo) REFERENCES public.tipos_usuarios(id);
 H   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_tipo_fkey;
       public          postgres    false    226    3434    230            º
           2606    76550 +   usuarios usuarios_id_usuario_alteracao_fkey 
   FK CONSTRAINT     ö   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_usuario_alteracao_fkey FOREIGN KEY (id_usuario_alteracao) REFERENCES public.usuarios(id);
 U   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_usuario_alteracao_fkey;
       public          postgres    false    3428    226    226            Ω
           2606    76555 *   usuarios usuarios_id_usuario_insercao_fkey 
   FK CONSTRAINT     ò   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_usuario_insercao_fkey FOREIGN KEY (id_usuario_insercao) REFERENCES public.usuarios(id);
 T   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_usuario_insercao_fkey;
       public          postgres    false    226    226    3428            Ø   
   xúã—„‚‚ ≈ ©      Î   
   xúã—„‚‚ ≈ ©      —   
   xúã—„‚‚ ≈ ©      ª   
   xúã—„‚‚ ≈ ©      ¡   
   xúã—„‚‚ ≈ ©      ´   6   xú3‰t,JMÃ·4‰4202÷54‘50V0¥∞20∂2¥‘35∂¥03·åÒÉ Æ=... ô
O      ©   6   xú3‰HÕ…/I,Ê4202÷54‘50V0¥∞20∞21”≥40±∞0‰åÒÉ Æ=... 8”
       ø   
   xúã—„‚‚ ≈ ©      ∑   
   xúã—„‚‚ ≈ ©      „   
   xúã—„‚‚ ≈ ©      Á   
   xúã—„‚‚ ≈ ©      Â   
   xúã—„‚‚ ≈ ©      ·   
   xúã—„‚‚ ≈ ©      ≠   B   xú3‰tÕKI-JMŒ7‰¥4304 NCN##c]CC]cC
+S+CC=
#
3s3Œ?‚ä—„‚‚ ”
U      Ó   
   xúã—„‚‚ ≈ ©      …   
   xúã—„‚‚ ≈ ©      µ   7   xú3‰,Œœ)IÕ, Á4202÷54‘50V04∑2µ¥22”3001∑0ÂåÒÉ Æ=... WU
û      «   
   xúã—„‚‚ ≈ ©      ”   
   xúã—„‚‚ ≈ ©      ◊   
   xúã—„‚‚ ≈ ©      ±   
   xúã—„‚‚ ≈ ©      Õ   
   xúã—„‚‚ ≈ ©      √   ü   xúMç;¬0DÎı)∏Ä#ÔÆÌ|*$$J(h”,IÑ"≈bD¡Ar1ÇBÅ¶ò)ûÊYÿ?π∆ÕÆoæ
'@bÎ|^î∆¸mêDd€îË˛2Ü4í6©&%ƒtÎ⁄1"ªÌ%H?dM‡∏,,zosÜ ´B~F¿5ƒp<ßnúd~œØ∏|kDmxÉeÂ\≈>ÛñrÁ∫> ™:SJ} z71       ≈   
   xúã—„‚‚ ≈ ©      ﬂ   
   xúã—„‚‚ ≈ ©      €   
   xúã—„‚‚ ≈ ©      À   I   xú3‰,(J-…Á4202÷54‘50V04∑25∞25◊3334∑‡åÒÉ .#Œ§¢ƒºdµÜV∆z∆¶¶Êf≈1z\\\ €Ú      Ÿ   
   xúã—„‚‚ ≈ ©      ’   
   xúã—„‚‚ ≈ ©      ≥   
   xúã—„‚‚ ≈ ©      œ   
   xúã—„‚‚ ≈ ©      Ï   
   xúã—„‚‚ ≈ ©      ›   
   xúã—„‚‚ ≈ ©      Ω   4   xú3‰tÃ)ÕÀÁ4202÷54‘50V0¥∞2∞∞25’3µ∞420„åÒÉ Æ=... C
/      È   
   xúã—„‚‚ ≈ ©      π   M   xú3‰ÙM,) L.ÕI4‰tJÕ))JÃÀÁ4‰4202÷54‘50V0¥∞2∞¥26–≥44710ÊåÒÉ¢‡‘ºåDCCC{Æ=... ÙΩ;     