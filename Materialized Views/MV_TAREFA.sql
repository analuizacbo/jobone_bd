--------------------------------------------------------
--  DDL for Materialized View MV_TAREFA
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "MV_TAREFA" ("EMPRESA_ID", "COD_OBJETO", "OBJETO_ID", "ITEM_CRONO_ID", "CLIENTE_ESPECIFICO", "CLIENTE", "JOB_ID", "JOB_DESCRICAO", "JOB_STATUS_CODIGO", "ATIVIDADE_TIPO", "ATIVIDADE_COR_NO_QUADRO", "ATIVIDADE_NUMERO", "ATIVIDADE_DESCRICAO_SEM_NUMERO", "ATIVIDADE_METADADOS", "STATUS", "STATUS_CODIGO", "STATUS_NEGOCIACAO", "PRAZO", "PRAZO_FMT", "PRAZO_COR", "PRAZO_INTERNO", "PRAZO_INTERNO_FMT", "PRAZO_INTERNO_COR", "SOLICITANTE", "SOLICITANTE_ID", "SOLICITANTE_NOME_FISICO", "SOLICITANTE_VOLUME_PREFIXO", "SOLICITANTE_VOLUME_NUMERO", "EQUIPE", "EQUIPE_ID", "AREA", "EXECUTORES", "EXECUTORES_ID", "EXECUTORES_NOME_FISICO", "EXECUTORES_VOLUME_PREFIXO", "EXECUTORES_VOLUME_NUMERO", "HORAS", "PRODUTO_CLIENTE", "CONTRATO_NUMERO", "CONTRATO_NOME", "DATA_INICIO_PLANEJADA", "DATA_INICIO_PLANEJADA_FMT", "DATA_FIM_PLANEJADA", "DATA_FIM_PLANEJADA_FMT", "RESPONSAVEL_PELO_JOB", "RESPONSAVEL_PELO_JOB_ID", "RESPONSAVEL_PELO_JOB_NOME_FISICO", "RESPONSAVEL_PELO_JOB_PREFIXO", "RESPONSAVEL_PELO_JOB_NUMERO", "CONTATO_JOB", "DATA_ENTRADA_JOB", "DATA_ENTRADA_JOB_FMT", "DATA_ENVIO", "DATA_ENVIO_FMT", "DATA_APRESENTACAO", "DATA_APRESENTACAO_FMT", "DATA_GO_LIVE", "DATA_GO_LIVE_FMT", "COMENT_STATUS_AUTOR", "COMENT_STATUS_DATA", "COMENT_STATUS_DATA_FMT", "COMENT_STATUS", "DATA_CONCLUSAO", "FILTRO_PRAZO", "CONTATO_ID", "USUARIO_SITUACAO_ID", "TA_ROWID", "DC_ROWID", "IC_ROWID", "CR_ROWID", "JO_ROWID", "PJ_ROWID", "CO_ROWID", "PC_ROWID", "PR_ROWID")
  SEGMENT CREATION IMMEDIATE
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
   CACHE 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FAST ON COMMIT
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE ON QUERY COMPUTATION DISABLE QUERY REWRITE
  AS SELECT JO.EMPRESA_ID AS EMPRESA_ID,
       IC.COD_OBJETO,
       IC.OBJETO_ID,
       IC.ITEM_CRONO_ID,
       PJ.APELIDO AS CLIENTE_ESPECIFICO,
       PJ.PESSOA_ID AS CLIENTE,
       JO.JOB_ID,
       NVL(JO.NUMERO || ' ' || JO.NOME,'-') AS JOB_DESCRICAO,
       JO.STATUS AS JOB_STATUS_CODIGO,
       'Task' AS ATIVIDADE_TIPO,
       'branco' AS ATIVIDADE_COR_NO_QUADRO,
       IC.OBJETO_ID AS ATIVIDADE_NUMERO,
       TA.DESCRICAO AS ATIVIDADE_DESCRICAO_SEM_NUMERO,
       '-' AS ATIVIDADE_METADADOS,
       TA.STATUS AS STATUS,
       TA.STATUS AS STATUS_CODIGO,
       'N/A' AS STATUS_NEGOCIACAO,
       TA.DATA_TERMINO AS PRAZO,
       TA.DATA_TERMINO AS PRAZO_FMT,
       ' ' AS PRAZO_COR,
       ' ' AS PRAZO_INTERNO,
       ' ' AS PRAZO_INTERNO_FMT,
       'branco' AS PRAZO_INTERNO_COR,
       ' ' AS SOLICITANTE,
       TO_CHAR(TA.USUARIO_DE_ID) AS SOLICITANTE_ID,
       ' ' AS SOLICITANTE_NOME_FISICO,
       ' ' AS SOLICITANTE_VOLUME_PREFIXO,
       ' ' AS SOLICITANTE_VOLUME_NUMERO,
       ' ' AS EQUIPE,
       ' ' AS EQUIPE_ID,
       ' ' AS AREA,
       ' ' AS EXECUTORES,
       ' ' AS EXECUTORES_ID,
       ' ' AS EXECUTORES_NOME_FISICO,
       ' ' AS EXECUTORES_VOLUME_PREFIXO,
       ' ' AS EXECUTORES_VOLUME_NUMERO,
       ' ' AS HORAS,
       PR.NOME AS PRODUTO_CLIENTE,
       CO.CONTRATO_ID  AS CONTRATO_NUMERO,
       DECODE(CO.NOME, NULL, '-', CO.NOME) AS CONTRATO_NOME,
       IC.DATA_PLANEJ_INI AS DATA_INICIO_PLANEJADA,
       IC.DATA_PLANEJ_INI AS DATA_INICIO_PLANEJADA_FMT,
       IC.DATA_PLANEJ_FIM AS DATA_FIM_PLANEJADA,
       IC.DATA_PLANEJ_FIM AS DATA_FIM_PLANEJADA_FMT,
       ' ' AS RESPONSAVEL_PELO_JOB,
       CAST(NULL AS NUMBER) AS RESPONSAVEL_PELO_JOB_ID,
       ' ' AS RESPONSAVEL_PELO_JOB_NOME_FISICO,
       ' ' AS RESPONSAVEL_PELO_JOB_PREFIXO,
       ' ' AS RESPONSAVEL_PELO_JOB_NUMERO,
       NVL(PJ.APELIDO || DECODE(PJ.FUNCAO,NULL,'',' (' || PJ.FUNCAO || ')'),'-') AS CONTATO_JOB,
       JO.DATA_ENTRADA AS DATA_ENTRADA_JOB,
       JO.DATA_ENTRADA AS DATA_ENTRADA_JOB_FMT,
       TA.DATA_ENVIO AS DATA_ENVIO,
       TA.DATA_ENVIO AS DATA_ENVIO_FMT,
       JO.DATA_PRI_APROV AS DATA_APRESENTACAO,
       JO.DATA_PRI_APROV AS DATA_APRESENTACAO_FMT,
       JO.DATA_GOLIVE AS DATA_GO_LIVE,
       JO.DATA_GOLIVE AS DATA_GO_LIVE_FMT,
       ' '  AS COMENT_STATUS_AUTOR,
       IC.DATA_SITUACAO AS COMENT_STATUS_DATA,
       IC.DATA_SITUACAO AS COMENT_STATUS_DATA_FMT,
       NVL(IC.SITUACAO,'-') AS COMENT_STATUS,
       DECODE(TA.STATUS, 'CONC', TA.DATA_STATUS, NULL) AS DATA_CONCLUSAO,
--       TRUNC(TA.DATA_TERMINO) AS DATA_CONCLUSAO,
       TRUNC(TA.DATA_TERMINO) AS FILTRO_PRAZO,
       JO.CONTATO_ID,
       IC.USUARIO_SITUACAO_ID,
       TA.ROWID AS TA_ROWID,
       DC.ROWID AS DC_ROWID,
       IC.ROWID AS IC_ROWID,
       CR.ROWID AS CR_ROWID,
       JO.ROWID AS JO_ROWID,
       PJ.ROWID AS PJ_ROWID,
       CO.ROWID AS CO_ROWID,
       PC.ROWID AS PC_ROWID,
       PR.ROWID AS PR_ROWID
  FROM TAREFA          TA,
       DICIONARIO      DC,
       ITEM_CRONO      IC,
       CRONOGRAMA      CR,
       JOB             JO,
       PESSOA          PJ,
       PRODUTO_CLIENTE PR,
       CONTRATO        CO,
       PESSOA          PC
   WHERE (IC.CRONOGRAMA_ID     = CR.CRONOGRAMA_ID AND IC.COD_OBJETO = 'TAREFA')
     AND JO.JOB_ID             = CR.JOB_ID
     AND JO.CLIENTE_ID         = PJ.PESSOA_ID
     AND JO.PRODUTO_CLIENTE_ID = PR.PRODUTO_CLIENTE_ID (+)
     AND JO.CONTRATO_ID        = CO.CONTRATO_ID (+)
     AND CO.CONTATO_ID         = PC.PESSOA_ID   (+)
     AND TA.TAREFA_ID          = IC.OBJETO_ID
     AND (TA.STATUS            = DC.CODIGO AND DC.TIPO           = 'status_tarefa')
     AND NVL(ta.status,'OK')   <> 'CANC';

  CREATE INDEX "IDX01_MV_TAREFA" ON "MV_TAREFA" ("EMPRESA_ID") 
  ;
  CREATE INDEX "IDX02_MV_TAREFA" ON "MV_TAREFA" ("DATA_CONCLUSAO", 1) 
  ;
  CREATE INDEX "IDX03_MV_TAREFA" ON "MV_TAREFA" ("COD_OBJETO", "OBJETO_ID") 
  ;
  CREATE INDEX "IDX04_MV_TAREFA" ON "MV_TAREFA" ("FILTRO_PRAZO") 
  ;
  CREATE INDEX "IDX05_MV_TAREFA" ON "MV_TAREFA" ("STATUS") 
  ;
  CREATE INDEX "IDX06_MV_TAREFA" ON "MV_TAREFA" ("RESPONSAVEL_PELO_JOB_ID") 
  ;

   COMMENT ON MATERIALIZED VIEW "MV_TAREFA"  IS 'snapshot table for snapshot JOBONE_V4.MV_TAREFA';
