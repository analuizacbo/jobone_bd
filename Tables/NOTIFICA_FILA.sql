--------------------------------------------------------
--  DDL for Table NOTIFICA_FILA
--------------------------------------------------------

  CREATE TABLE "NOTIFICA_FILA" 
   (	"NOTIFICA_FILA_ID" NUMBER(20,0), 
	"EMPRESA_ID" NUMBER(20,0), 
	"HISTORICO_ID" NUMBER(20,0), 
	"EVENTO_CONFIG_ID" NUMBER(20,0), 
	"USUARIO_DE_ID" NUMBER(20,0), 
	"DATA_EVENTO" DATE, 
	"CLASSE_EVENTO" VARCHAR2(10 CHAR), 
	"COD_ACAO" VARCHAR2(40 CHAR), 
	"COD_OBJETO" VARCHAR2(40 CHAR), 
	"OBJETO_ID" NUMBER(20,0), 
	"IDENTIF_OBJETO" VARCHAR2(500 CHAR), 
	"ASSUNTO" VARCHAR2(100 CHAR), 
	"CORPO" VARCHAR2(1000 CHAR), 
	"TEXTO" VARCHAR2(1000 CHAR), 
	"FLAG_PEND" CHAR(1 CHAR)
   ) ;
