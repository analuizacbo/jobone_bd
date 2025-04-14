--------------------------------------------------------
--  DDL for Table MI_METAS_DIGITAL
--------------------------------------------------------

  CREATE TABLE "MI_METAS_DIGITAL" 
   (	"MI_METAS_DIGITAL_ID" NUMBER(20,0), 
	"EMPRESA_ID" NUMBER(20,0), 
	"ANO" NUMBER(10,0), 
	"DATA_CARGA" DATE, 
	"VEICULO" VARCHAR2(100 CHAR), 
	"FORMATO" VARCHAR2(100 CHAR), 
	"NEGOCIACAO" VARCHAR2(100 CHAR), 
	"FLAG_SEM_META" CHAR(1 CHAR), 
	"VALOR_UNIT_NEG" NUMBER(25,4) DEFAULT 0, 
	"VALOR_UNIT_NEG_REAL" NUMBER(25,4) DEFAULT 0, 
	"VALOR_UNIT_NEG_Q1_REAL" NUMBER(25,4) DEFAULT 0, 
	"VALOR_UNIT_NEG_Q2_REAL" NUMBER(25,4) DEFAULT 0, 
	"VALOR_UNIT_NEG_Q3_REAL" NUMBER(25,4) DEFAULT 0, 
	"VALOR_UNIT_NEG_Q4_REAL" NUMBER(25,4) DEFAULT 0, 
	"MI_CARGA_ID" NUMBER(20,0), 
	"FLAG_BONIFICACAO" CHAR(1 CHAR) DEFAULT 'N', 
	"VALOR_UNIT_NEG_Q1_MED" NUMBER(25,4) DEFAULT 0, 
	"VALOR_UNIT_NEG_Q2_MED" NUMBER(25,4) DEFAULT 0, 
	"VALOR_UNIT_NEG_Q3_MED" NUMBER(25,4) DEFAULT 0, 
	"VALOR_UNIT_NEG_Q4_MED" NUMBER(25,4) DEFAULT 0, 
	"VALOR_UNIT_NEG_Q1" NUMBER(25,4), 
	"VALOR_UNIT_NEG_Q2" NUMBER(25,4), 
	"VALOR_UNIT_NEG_Q3" NUMBER(25,4), 
	"VALOR_UNIT_NEG_Q4" NUMBER(25,4)
   ) ;
