--------------------------------------------------------
--  DDL for Table CONTRATO
--------------------------------------------------------

  CREATE TABLE "CONTRATO" 
   (	"CONTRATO_ID" NUMBER(20,0), 
	"EMPRESA_ID" NUMBER(20,0), 
	"TIPO_CONTRATO_ID" NUMBER(20,0), 
	"EMP_RESP_ID" NUMBER(20,0), 
	"CONTRATANTE_ID" NUMBER(20,0), 
	"CONTATO_ID" NUMBER(20,0), 
	"CONTATO_FATUR_ID" NUMBER(20,0), 
	"EMP_FATURAR_POR_ID" NUMBER(20,0), 
	"USUARIO_SOLIC_ID" NUMBER(20,0), 
	"USUARIO_DESC_ID" NUMBER(20,0), 
	"USUARIO_PARCEL_ID" NUMBER(20,0), 
	"USUARIO_REVPAR_ID" NUMBER(20,0), 
	"NUMERO" NUMBER(20,0), 
	"NOME" VARCHAR2(120 CHAR), 
	"DATA_ENTRADA" DATE, 
	"DATA_ASSINATURA" DATE, 
	"DATA_INICIO" DATE, 
	"DATA_TERMINO" DATE, 
	"FLAG_RENOVAVEL" CHAR(1 CHAR), 
	"COD_EXT_CONTRATO" VARCHAR2(20 CHAR), 
	"OBJETO" CLOB, 
	"ORDEM_COMPRA" VARCHAR2(60 CHAR), 
	"COD_EXT_ORDEM" VARCHAR2(20 CHAR), 
	"PERC_BV" NUMBER(8,5), 
	"FLAG_BV_FORNEC" CHAR(1 CHAR), 
	"FLAG_PAGO_CLIENTE" CHAR(1 CHAR), 
	"FLAG_BLOQ_NEGOC" CHAR(1 CHAR), 
	"STATUS" VARCHAR2(10 CHAR), 
	"DATA_STATUS" DATE, 
	"FLAG_ASSINADO" CHAR(1 CHAR) DEFAULT 'N', 
	"PERC_DESC" NUMBER(5,2), 
	"MOTIVO_DESC" VARCHAR2(1000 CHAR), 
	"DATA_DESC" DATE, 
	"STATUS_PARCEL" VARCHAR2(10 CHAR), 
	"MOTIVO_REVPAR" VARCHAR2(100 CHAR), 
	"COMPL_REVPAR" VARCHAR2(500 CHAR), 
	"FLAG_CTR_FISICO" CHAR(1 CHAR) DEFAULT 'N'
   ) ;
