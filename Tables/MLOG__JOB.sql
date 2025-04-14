--------------------------------------------------------
--  DDL for Table MLOG$_JOB
--------------------------------------------------------

  CREATE TABLE "MLOG$_JOB" 
   (	"M_ROW$$" VARCHAR2(255), 
	"SNAPTIME$$" DATE, 
	"DMLTYPE$$" VARCHAR2(1), 
	"OLD_NEW$$" VARCHAR2(1), 
	"CHANGE_VECTOR$$" RAW(255), 
	"XID$$" NUMBER
   ) ;

   COMMENT ON TABLE "MLOG$_JOB"  IS 'snapshot log for master table JOBONE_V4.JOB';
