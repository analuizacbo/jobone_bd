--------------------------------------------------------
--  DDL for Table EVENTO_CONFIG
--------------------------------------------------------

  CREATE TABLE "EVENTO_CONFIG" 
   (	"EVENTO_CONFIG_ID" NUMBER(20,0), 
	"EMPRESA_ID" NUMBER(20,0), 
	"EVENTO_ID" NUMBER(20,0), 
	"TIPO_OS_ID" NUMBER(20,0), 
	"FLAG_HISTORICO" CHAR(1 CHAR), 
	"FLAG_NOTIFICA_EMAIL" CHAR(1 CHAR), 
	"FLAG_NOTIFICA_TELA" CHAR(1 CHAR) DEFAULT 'N', 
	"NOTIF_CORPO" VARCHAR2(1000 CHAR), 
	"EMAIL_ASSUNTO" VARCHAR2(100 CHAR), 
	"EMAIL_CORPO" VARCHAR2(1000 CHAR)
   ) ;
