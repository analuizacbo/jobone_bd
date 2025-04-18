--------------------------------------------------------
--  DDL for Table ITEM_NOTA
--------------------------------------------------------

  CREATE TABLE "ITEM_NOTA" 
   (	"ITEM_NOTA_ID" NUMBER(20,0), 
	"NOTA_FISCAL_ID" NUMBER(20,0), 
	"ITEM_ID" NUMBER(20,0), 
	"TIPO_PRODUTO_ID" NUMBER(20,0), 
	"CARTA_ACORDO_ID" NUMBER(20,0), 
	"VALOR_APROVADO" NUMBER(22,2), 
	"VALOR_FORNECEDOR" NUMBER(22,2), 
	"VALOR_BV" NUMBER(22,2), 
	"VALOR_TIP" NUMBER(22,2), 
	"OBS" VARCHAR2(200 CHAR), 
	"QUANTIDADE" NUMBER(10,2), 
	"FREQUENCIA" NUMBER(10,2), 
	"CUSTO_UNITARIO" NUMBER(25,5), 
	"COMPLEMENTO" VARCHAR2(500 CHAR)
   ) ;
