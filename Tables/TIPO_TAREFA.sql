--------------------------------------------------------
--  DDL for Table TIPO_TAREFA
--------------------------------------------------------

  CREATE TABLE "TIPO_TAREFA" 
   (	"TIPO_TAREFA_ID" NUMBER(20,0), 
	"EMPRESA_ID" NUMBER(20,0), 
	"NOME" VARCHAR2(60 CHAR), 
	"FLAG_ATIVO" CHAR(1 CHAR), 
	"FLAG_PADRAO" CHAR(1 CHAR), 
	"FLAG_TEM_DESCRICAO" CHAR(1 CHAR), 
	"FLAG_TEM_CORPO" CHAR(1 CHAR), 
	"FLAG_TEM_ITENS" CHAR(1 CHAR), 
	"FLAG_OBRIGA_ITEM" CHAR(1 CHAR), 
	"FLAG_TEM_DESC_ITEM" CHAR(1 CHAR), 
	"FLAG_TEM_META_ITEM" CHAR(1 CHAR), 
	"FLAG_AUTO_ENDER" CHAR(1 CHAR), 
	"FLAG_PODE_ENDER_EXEC" CHAR(1 CHAR), 
	"FLAG_ABRE_ARQ_REFER" CHAR(1 CHAR), 
	"FLAG_ABRE_ARQ_EXEC" CHAR(1 CHAR), 
	"FLAG_ABRE_AFAZER" CHAR(1 CHAR), 
	"FLAG_ABRE_REPET" CHAR(1 CHAR), 
	"NUM_MAX_ITENS" NUMBER(5,0), 
	"NUM_MAX_DIAS_PRAZO" NUMBER(5,0), 
	"FLAG_APONT_HORAS_ALOC" CHAR(1 CHAR) DEFAULT 'N'
   ) ;
