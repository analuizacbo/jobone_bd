--------------------------------------------------------
--  DDL for Table JOB
--------------------------------------------------------

  CREATE TABLE "JOB" 
   (	"JOB_ID" NUMBER(20,0), 
	"EMPRESA_ID" NUMBER(20,0), 
	"CLIENTE_ID" NUMBER(20,0), 
	"CONTATO_ID" NUMBER(20,0), 
	"CONTATO_FATUR_ID" NUMBER(20,0), 
	"TIPO_JOB_ID" NUMBER(20,0), 
	"EMP_FATURAR_POR_ID" NUMBER(20,0), 
	"PRODUTO_CLIENTE_ID" NUMBER(20,0), 
	"TIPO_FINANCEIRO_ID" NUMBER(20,0), 
	"EMP_RESP_ID" NUMBER(20,0), 
	"USUARIO_SOLIC_ID" NUMBER(20,0), 
	"CONTRATO_ID" NUMBER(20,0), 
	"USU_STATUS_HORAS_ID" NUMBER(20,0), 
	"USU_AUTOR_HORAS_ID" NUMBER(20,0), 
	"STATUS_AUX_JOB_ID" NUMBER(20,0), 
	"CAMPANHA_ID" NUMBER(20,0), 
	"UNIDADE_NEGOCIO_ID" NUMBER(20,0), 
	"CONTEXTO_CRONO_ID" NUMBER(20,0), 
	"NUMERO" VARCHAR2(20 CHAR), 
	"NOME" VARCHAR2(60 CHAR), 
	"DESCRICAO" VARCHAR2(1000 CHAR), 
	"DESCRICAO_CLIENTE" CLOB, 
	"DATA_ENTRADA" DATE, 
	"DATA_PRI_APROV" DATE, 
	"BUDGET" NUMBER(22,2), 
	"RECEITA_PREVISTA" NUMBER(22,2), 
	"FLAG_BUDGET_ND" CHAR(1 CHAR) DEFAULT 'N', 
	"DATA_PREV_INI" DATE, 
	"DATA_PREV_FIM" DATE, 
	"TIPO_DATA_PREV" VARCHAR2(5 CHAR), 
	"PERC_BV" NUMBER(8,5), 
	"FLAG_BV_FORNEC" CHAR(1 CHAR) DEFAULT 'S', 
	"FLAG_PAGO_CLIENTE" CHAR(1 CHAR) DEFAULT 'N', 
	"COD_EXT_JOB" VARCHAR2(20 CHAR), 
	"FLAG_CONCORRENCIA" CHAR(1 CHAR) DEFAULT 'N', 
	"CONTRA_QUEM" VARCHAR2(200 CHAR), 
	"FLAG_CONC_PERDIDA" CHAR(1 CHAR) DEFAULT NULL, 
	"PERDIDA_PARA" VARCHAR2(100 CHAR), 
	"STATUS" VARCHAR2(10 CHAR), 
	"DATA_STATUS" DATE, 
	"MOTIVO_CANCEL" VARCHAR2(500 CHAR), 
	"STATUS_CHECKIN" CHAR(1 CHAR), 
	"DATA_STATUS_CHECKIN" DATE, 
	"STATUS_FATUR" CHAR(1 CHAR), 
	"DATA_STATUS_FATUR" DATE, 
	"VALOR_AJUSTE_FINAL" NUMBER(22,2) DEFAULT 0, 
	"FLAG_BLOQ_NEGOC" CHAR(1 CHAR) DEFAULT 'N', 
	"CAMINHO_ARQ_EXTERNO" VARCHAR2(100 CHAR), 
	"DATA_APONT_INI" DATE, 
	"DATA_APONT_FIM" DATE, 
	"STATUS_HORAS" VARCHAR2(10 CHAR), 
	"DATA_STATUS_HORAS" DATE, 
	"MOTIVO_STATUS_HORAS" VARCHAR2(100 CHAR), 
	"COMPL_STATUS_HORAS" VARCHAR2(1000 CHAR), 
	"DATA_APROV_HORAS_LIMITE" DATE, 
	"FLAG_COM_APROV_HORAS" CHAR(1 CHAR) DEFAULT 'N', 
	"COMPLEX_JOB" VARCHAR2(2 CHAR), 
	"ESTRAT_JOB" VARCHAR2(10 CHAR), 
	"DATA_DIST_LIMITE" DATE, 
	"TIPO_NUM_JOB" VARCHAR2(20 CHAR), 
	"FLAG_OBRIGA_DESC_HORAS" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_USA_BUDGET" CHAR(1 CHAR) DEFAULT 'S', 
	"FLAG_USA_RECEITA_PREV" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_OBRIGA_CONTRATO" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_RESTRINGE_ALT_CRONO" CHAR(1 CHAR) DEFAULT 'N', 
	"DATA_GOLIVE" DATE, 
	"SERVICO_ID" NUMBER(20,0)
   ) ;
