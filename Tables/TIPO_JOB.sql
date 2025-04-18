--------------------------------------------------------
--  DDL for Table TIPO_JOB
--------------------------------------------------------

  CREATE TABLE "TIPO_JOB" 
   (	"TIPO_JOB_ID" NUMBER(20,0), 
	"EMPRESA_ID" NUMBER(20,0), 
	"CODIGO" VARCHAR2(30 CHAR), 
	"NOME" VARCHAR2(60 CHAR), 
	"MODELO_BRIEFING" CLOB, 
	"COD_EXT_TIPO_JOB" VARCHAR2(20 CHAR), 
	"FLAG_PADRAO" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_APR_BRIEF_AUTO" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_APR_CRONO_AUTO" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_APR_ORCAM_AUTO" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_APR_HORAS_AUTO" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_CRIA_CRONO_AUTO" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_USA_CRONO_CRIA_JOB" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_OBR_CRONO_CRIA_JOB" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_USA_DATA_CRIA_JOB" CHAR(1 CHAR) DEFAULT 'N', 
	"COMPLEX_JOB_PDR" VARCHAR2(2 CHAR), 
	"FLAG_ALT_COMPLEX" CHAR(1 CHAR) DEFAULT 'S', 
	"FLAG_ALT_TIPO_EST" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_TEM_CAMP" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_CAMP_OBR" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_USA_PER_JOB" CHAR(1 CHAR) DEFAULT 'S', 
	"FLAG_USA_DATA_CLI" CHAR(1 CHAR) DEFAULT 'S', 
	"FLAG_OBRIGA_DATA_CLI" CHAR(1 CHAR) DEFAULT 'N', 
	"ESTRAT_JOB" VARCHAR2(10 CHAR), 
	"FLAG_USA_MATRIZ" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_ATIVO" CHAR(1 CHAR) DEFAULT 'S', 
	"FLAG_USA_DATA_GOLIVE" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_OBR_DATA_GOLIVE" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_ENDER_TODOS" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_TOPO_APONT" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_PODE_QQ_SERV" CHAR(1 CHAR) DEFAULT 'N', 
	"FLAG_PODE_OS" CHAR(1 CHAR) DEFAULT 'S', 
	"FLAG_PODE_TAREFA" CHAR(1 CHAR) DEFAULT 'S'
   ) ;
