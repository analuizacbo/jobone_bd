--------------------------------------------------------
--  DDL for Table CATEGORIA
--------------------------------------------------------

  CREATE TABLE "CATEGORIA" 
   (	"CATEGORIA_ID" NUMBER(20,0), 
	"EMPRESA_ID" NUMBER(20,0), 
	"DESCRICAO" VARCHAR2(200 CHAR), 
	"COD_EXT" VARCHAR2(20 CHAR), 
	"COD_ACAO_OS" VARCHAR2(100 CHAR), 
	"TIPO_ENTREGAVEL" VARCHAR2(100 CHAR), 
	"FLAG_ENTREGUE_CLI" VARCHAR2(1 CHAR), 
	"FLAG_ATIVO" VARCHAR2(1 CHAR), 
	"CLASSE_PRODUTO_ID" NUMBER(20,0), 
	"TIPO_MIDIA_ON" VARCHAR2(1 CHAR), 
	"TIPO_MIDIA_OFF" VARCHAR2(1 CHAR), 
	"FLAG_TP_MIDIA_ON" VARCHAR2(1 CHAR), 
	"FLAG_TP_MIDIA_OFF" VARCHAR2(1 CHAR)
   ) ;
