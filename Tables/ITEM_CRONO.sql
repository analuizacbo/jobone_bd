--------------------------------------------------------
--  DDL for Table ITEM_CRONO
--------------------------------------------------------

  CREATE TABLE "ITEM_CRONO" 
   (	"ITEM_CRONO_ID" NUMBER(20,0), 
	"CRONOGRAMA_ID" NUMBER(20,0), 
	"ITEM_CRONO_PAI_ID" NUMBER(20,0), 
	"COD_OBJETO" VARCHAR2(20 CHAR), 
	"OBJETO_ID" NUMBER(20,0), 
	"FREQUENCIA_ID" NUMBER(20,0), 
	"PAPEL_RESP_ID" NUMBER(20,0), 
	"NUM_SEQ" NUMBER(5,0), 
	"NOME" VARCHAR2(100 CHAR), 
	"DATA_PLANEJ_INI" DATE, 
	"DATA_PLANEJ_FIM" DATE, 
	"ORDEM" NUMBER(10,0), 
	"NIVEL" NUMBER(5,0), 
	"OPER" VARCHAR2(20 CHAR), 
	"FLAG_OBRIGATORIO" CHAR(1 CHAR) DEFAULT 'N', 
	"TIPO_OBJETO_ID" NUMBER(20,0), 
	"SUB_TIPO_OBJETO" VARCHAR2(10 CHAR), 
	"FLAG_ENVIAR" CHAR(1 CHAR) DEFAULT 'N', 
	"NUM_VERSAO" NUMBER(5,0), 
	"FLAG_PLANEJADO" CHAR(1 CHAR) DEFAULT 'S', 
	"DURACAO_ORI" NUMBER(5,0), 
	"DEMANDA" VARCHAR2(10 CHAR), 
	"REPET_GRUPO" NUMBER(20,0), 
	"REPET_SEQ" NUMBER(5,0), 
	"REPET_A_CADA" NUMBER(5,0), 
	"REPET_TERM_TIPO" VARCHAR2(10 CHAR), 
	"REPET_TERM_OCOR" NUMBER(5,0), 
	"DATA_TERM_REPET" DATE, 
	"NUM_GANTT" VARCHAR2(50 CHAR), 
	"OBS" VARCHAR2(500 CHAR), 
	"USUARIO_SITUACAO_ID" NUMBER(20,0), 
	"SITUACAO" VARCHAR2(4000 CHAR), 
	"DATA_SITUACAO" DATE
   ) ;
