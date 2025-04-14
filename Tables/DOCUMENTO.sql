--------------------------------------------------------
--  DDL for Table DOCUMENTO
--------------------------------------------------------

  CREATE TABLE "DOCUMENTO" 
   (	"DOCUMENTO_ID" NUMBER(20,0), 
	"JOB_ID" NUMBER(20,0), 
	"PAPEL_RESP_ID" NUMBER(20,0), 
	"TIPO_DOCUMENTO_ID" NUMBER(20,0), 
	"USUARIO_ID" NUMBER(20,0), 
	"NOME" VARCHAR2(100 CHAR), 
	"VERSAO" NUMBER(5,0), 
	"DATA_VERSAO" DATE, 
	"FLAG_ATUAL" CHAR(1 CHAR) DEFAULT 'S', 
	"DESCRICAO" VARCHAR2(200 CHAR), 
	"COMENTARIO" VARCHAR2(500 CHAR), 
	"TIPO_FLUXO" CHAR(2 CHAR), 
	"STATUS" VARCHAR2(10 CHAR), 
	"CONSOLIDACAO" VARCHAR2(500 CHAR)
   ) ;
