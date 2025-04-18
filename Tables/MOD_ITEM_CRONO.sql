--------------------------------------------------------
--  DDL for Table MOD_ITEM_CRONO
--------------------------------------------------------

  CREATE TABLE "MOD_ITEM_CRONO" 
   (	"MOD_ITEM_CRONO_ID" NUMBER(20,0), 
	"MOD_CRONO_ID" NUMBER(20,0), 
	"MOD_ITEM_CRONO_PAI_ID" NUMBER(20,0), 
	"FREQUENCIA_ID" NUMBER(20,0), 
	"PAPEL_RESP_ID" NUMBER(20,0), 
	"NOME" VARCHAR2(100 CHAR), 
	"DIA_INICIO" NUMBER(5,0), 
	"DURACAO" NUMBER(5,0), 
	"NUM_SEQ" NUMBER(5,0), 
	"ORDEM" NUMBER(10,0), 
	"NIVEL" NUMBER(5,0), 
	"OPER" VARCHAR2(20 CHAR), 
	"COD_OBJETO" VARCHAR2(20 CHAR), 
	"FLAG_OBRIGATORIO" CHAR(1 CHAR), 
	"TIPO_OBJETO_ID" NUMBER(20,0), 
	"SUB_TIPO_OBJETO" VARCHAR2(10 CHAR), 
	"FLAG_ENVIAR" CHAR(1 CHAR), 
	"DEMANDA" VARCHAR2(10 CHAR), 
	"REPET_A_CADA" NUMBER(5,0), 
	"REPET_TERM_TIPO" VARCHAR2(10 CHAR), 
	"REPET_TERM_OCOR" NUMBER(5,0)
   ) ;
