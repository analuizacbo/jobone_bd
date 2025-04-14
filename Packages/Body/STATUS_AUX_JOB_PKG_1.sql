--------------------------------------------------------
--  DDL for Package Body STATUS_AUX_JOB_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "STATUS_AUX_JOB_PKG" IS
 --
 PROCEDURE adicionar
 ------------------------------------------------------------------------------------------
  -- DESENVOLVEDOR: Silvia            ProcessMind     DATA: 21/03/2016
  -- DESCRICAO: Inclus�o de status auxiliar/estendido do job
  --
  -- ALTERADO POR      DATA        MOTIVO ALTERACAO
  -- ----------------  ----------  ---------------------------------------------------------
  --
  ------------------------------------------------------------------------------------------
 (
  p_usuario_sessao_id IN NUMBER,
  p_empresa_id        IN empresa.empresa_id%TYPE,
  p_cod_status_pai    IN status_aux_job.cod_status_pai%TYPE,
  p_nome              IN status_aux_job.nome%TYPE,
  p_ordem             IN VARCHAR2,
  p_flag_padrao       IN VARCHAR2,
  p_status_aux_job_id OUT status_aux_job.status_aux_job_id%TYPE,
  p_erro_cod          OUT VARCHAR2,
  p_erro_msg          OUT VARCHAR2
 ) IS
  v_qt                INTEGER;
  v_exception         EXCEPTION;
  v_status_aux_job_id status_aux_job.status_aux_job_id%TYPE;
  v_ordem             status_aux_job.ordem%TYPE;
  --
 BEGIN
  v_qt                := 0;
  p_status_aux_job_id := 0;
  --
  ------------------------------------------------------------
  -- verificacao de seguranca
  ------------------------------------------------------------
  IF usuario_pkg.priv_verificar(p_usuario_sessao_id,
                                'STATUS_AUX_JOB_C',
                                NULL,
                                NULL,
                                p_empresa_id) = 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Voc� n�o tem privil�gio para realizar essa opera��o.';
   RAISE v_exception;
  END IF;
  --
  ------------------------------------------------------------
  -- consistencia dos parametros de entrada
  ------------------------------------------------------------
  IF rtrim(p_cod_status_pai) IS NULL THEN
   p_erro_cod := '90000';
   p_erro_msg := 'O preenchimento do status principal � obrigat�rio.';
   RAISE v_exception;
  END IF;
  --
  IF util_pkg.desc_retornar('status_job', p_cod_status_pai) IS NULL THEN
   p_erro_cod := '90000';
   p_erro_msg := 'C�digo do status principal � inv�lido (' || p_cod_status_pai || ').';
   RAISE v_exception;
  END IF;
  --
  IF rtrim(p_nome) IS NULL THEN
   p_erro_cod := '90000';
   p_erro_msg := 'O preenchimento do nome � obrigat�rio.';
   RAISE v_exception;
  END IF;
  --
  IF rtrim(p_ordem) IS NULL THEN
   p_erro_cod := '90000';
   p_erro_msg := 'O preenchimento da ordem � obrigat�rio.';
   RAISE v_exception;
  END IF;
  --
  IF inteiro_validar(p_ordem) = 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Ordem inv�lida.';
   RAISE v_exception;
  END IF;
  --
  v_ordem := nvl(to_number(p_ordem), 0);
  --
  IF flag_validar(p_flag_padrao) = 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Flag padr�o inv�lido.';
   RAISE v_exception;
  END IF;
  --
  ------------------------------------------------------------
  -- verificacao de integridade
  ------------------------------------------------------------
  SELECT COUNT(*)
    INTO v_qt
    FROM status_aux_job
   WHERE upper(nome) = TRIM(upper(p_nome))
     AND cod_status_pai = p_cod_status_pai
     AND empresa_id = p_empresa_id;
  --
  IF v_qt > 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Esse nome de status j� existe.';
   RAISE v_exception;
  END IF;
  --
  ------------------------------------------------------------
  -- atualizacao do banco
  ------------------------------------------------------------
  SELECT seq_status_aux_job.nextval
    INTO v_status_aux_job_id
    FROM dual;
  --
  INSERT INTO status_aux_job
   (status_aux_job_id,
    empresa_id,
    cod_status_pai,
    nome,
    ordem,
    flag_padrao,
    flag_ativo)
  VALUES
   (v_status_aux_job_id,
    p_empresa_id,
    p_cod_status_pai,
    TRIM(p_nome),
    v_ordem,
    p_flag_padrao,
    'S');
  --
  IF p_flag_padrao = 'S' THEN
   -- apenas um pode ser padrao.
   UPDATE status_aux_job
      SET flag_padrao = 'N'
    WHERE empresa_id = p_empresa_id
      AND cod_status_pai = p_cod_status_pai
      AND status_aux_job_id <> v_status_aux_job_id;
  END IF;
  --
  COMMIT;
  p_status_aux_job_id := v_status_aux_job_id;
  p_erro_cod          := '00000';
  p_erro_msg          := 'Opera��o realizada com sucesso.';
  --
 EXCEPTION
  WHEN v_exception THEN
   ROLLBACK;
  WHEN OTHERS THEN
   p_erro_cod := SQLCODE;
   p_erro_msg := substr(SQLERRM || ' Linha Erro: ' || dbms_utility.format_error_backtrace,
                        1,
                        200);
   ROLLBACK;
 END adicionar;
 --
 --
 PROCEDURE atualizar
 ------------------------------------------------------------------------------------------
  -- DESENVOLVEDOR: Silvia            ProcessMind     DATA: 21/03/2016
  -- DESCRICAO: Atualiza��o de status auxiliar/estendido do job
  --
  -- ALTERADO POR      DATA        MOTIVO ALTERACAO
  -- ----------------  ----------  ---------------------------------------------------------
  --
  ------------------------------------------------------------------------------------------
 (
  p_usuario_sessao_id IN NUMBER,
  p_empresa_id        IN empresa.empresa_id%TYPE,
  p_status_aux_job_id IN status_aux_job.status_aux_job_id%TYPE,
  p_nome              IN status_aux_job.nome%TYPE,
  p_ordem             IN VARCHAR2,
  p_flag_padrao       IN VARCHAR2,
  p_flag_ativo        IN VARCHAR2,
  p_erro_cod          OUT VARCHAR2,
  p_erro_msg          OUT VARCHAR2
 ) IS
  v_qt              INTEGER;
  v_exception       EXCEPTION;
  v_cod_status_pai  status_aux_job.cod_status_pai%TYPE;
  v_ordem           status_aux_job.ordem%TYPE;
  v_nome_status_pai VARCHAR2(100);
  --
 BEGIN
  v_qt := 0;
  --
  ------------------------------------------------------------
  -- verificacao de seguranca
  ------------------------------------------------------------
  IF usuario_pkg.priv_verificar(p_usuario_sessao_id,
                                'STATUS_AUX_JOB_C',
                                NULL,
                                NULL,
                                p_empresa_id) = 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Voc� n�o tem privil�gio para realizar essa opera��o.';
   RAISE v_exception;
  END IF;
  --
  SELECT COUNT(*)
    INTO v_qt
    FROM status_aux_job
   WHERE status_aux_job_id = p_status_aux_job_id
     AND empresa_id = p_empresa_id;
  --
  IF v_qt = 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Esse status n�o existe.';
   RAISE v_exception;
  END IF;
  --
  SELECT cod_status_pai
    INTO v_cod_status_pai
    FROM status_aux_job
   WHERE status_aux_job_id = p_status_aux_job_id;
  --
  ------------------------------------------------------------
  -- consistencia dos parametros de entrada
  ------------------------------------------------------------
  IF rtrim(p_nome) IS NULL THEN
   p_erro_cod := '90000';
   p_erro_msg := 'O preenchimento do nome � obrigat�rio.';
   RAISE v_exception;
  END IF;
  --
  IF rtrim(p_ordem) IS NULL THEN
   p_erro_cod := '90000';
   p_erro_msg := 'O preenchimento da ordem � obrigat�rio.';
   RAISE v_exception;
  END IF;
  --
  IF inteiro_validar(p_ordem) = 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Ordem inv�lida.';
   RAISE v_exception;
  END IF;
  --
  v_ordem := nvl(to_number(p_ordem), 0);
  --
  IF flag_validar(p_flag_padrao) = 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Flag padr�o inv�lido.';
   RAISE v_exception;
  END IF;
  --
  IF flag_validar(p_flag_ativo) = 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Flag ativo inv�lido.';
   RAISE v_exception;
  END IF;
  --
  IF p_flag_ativo = 'N' AND p_flag_padrao = 'S' THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Status estendido marcado como padr�o n�o pode ficar inativo.';
   RAISE v_exception;
  END IF;
  --
  v_nome_status_pai := util_pkg.desc_retornar('status_job', v_cod_status_pai);
  --
  ------------------------------------------------------------
  -- verificacao de integridade
  ------------------------------------------------------------
  SELECT COUNT(*)
    INTO v_qt
    FROM status_aux_job
   WHERE upper(nome) = TRIM(upper(p_nome))
     AND cod_status_pai = v_cod_status_pai
     AND empresa_id = p_empresa_id
     AND status_aux_job_id <> p_status_aux_job_id;
  --
  IF v_qt > 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Esse nome j� existe.';
   RAISE v_exception;
  END IF;
  --
  ------------------------------------------------------------
  -- atualizacao do banco
  ------------------------------------------------------------
  UPDATE status_aux_job
     SET nome        = TRIM(p_nome),
         ordem       = v_ordem,
         flag_padrao = p_flag_padrao,
         flag_ativo  = p_flag_ativo
   WHERE status_aux_job_id = p_status_aux_job_id;
  --
  IF p_flag_padrao = 'S' THEN
   -- apenas um pode ser padrao. Marca os demais como nao padrao.
   UPDATE status_aux_job
      SET flag_padrao = 'N'
    WHERE empresa_id = p_empresa_id
      AND cod_status_pai = v_cod_status_pai
      AND status_aux_job_id <> p_status_aux_job_id;
  ELSE
   -- verifica se sobrou outro status padrao.
   SELECT COUNT(*)
     INTO v_qt
     FROM status_aux_job
    WHERE cod_status_pai = v_cod_status_pai
      AND empresa_id = p_empresa_id
      AND flag_padrao = 'S';
   --
   IF v_qt = 0 THEN
    p_erro_cod := '90000';
    p_erro_msg := 'Deve existir um status estendido padr�o para o status ' ||
                  v_nome_status_pai || '.';
    RAISE v_exception;
   END IF;
  END IF;
  --
  IF p_flag_padrao = 'N' THEN
   -- verifica se sobrou outro status ativo.
   SELECT COUNT(*)
     INTO v_qt
     FROM status_aux_job
    WHERE cod_status_pai = v_cod_status_pai
      AND empresa_id = p_empresa_id
      AND flag_ativo = 'S';
   --
   IF v_qt = 0 THEN
    p_erro_cod := '90000';
    p_erro_msg := 'Deve existir pelo menos um status estendido ativo para o status ' ||
                  v_nome_status_pai || '.';
    RAISE v_exception;
   END IF;
  END IF;
  --
  COMMIT;
  p_erro_cod := '00000';
  p_erro_msg := 'Opera��o realizada com sucesso.';
  --
 EXCEPTION
  WHEN v_exception THEN
   ROLLBACK;
  WHEN OTHERS THEN
   p_erro_cod := SQLCODE;
   p_erro_msg := substr(SQLERRM || ' Linha Erro: ' || dbms_utility.format_error_backtrace,
                        1,
                        200);
   ROLLBACK;
 END atualizar;
 --
 --
 PROCEDURE excluir
 ------------------------------------------------------------------------------------------
  -- DESENVOLVEDOR: Silvia            ProcessMind     DATA: 21/03/2016
  -- DESCRICAO: Exclus�o de status auxiliar/estendido do job
  --
  -- ALTERADO POR      DATA        MOTIVO ALTERACAO
  -- ----------------  ----------  ---------------------------------------------------------
  --
  ------------------------------------------------------------------------------------------
 (
  p_usuario_sessao_id IN NUMBER,
  p_empresa_id        IN empresa.empresa_id%TYPE,
  p_status_aux_job_id IN status_aux_job.status_aux_job_id%TYPE,
  p_erro_cod          OUT VARCHAR2,
  p_erro_msg          OUT VARCHAR2
 ) IS
  v_qt              INTEGER;
  v_exception       EXCEPTION;
  v_lbl_jobs        VARCHAR2(100);
  v_flag_padrao     status_aux_job.flag_padrao%TYPE;
  v_cod_status_pai  status_aux_job.cod_status_pai%TYPE;
  v_nome_status_pai VARCHAR2(100);
  --
 BEGIN
  v_qt       := 0;
  v_lbl_jobs := empresa_pkg.parametro_retornar(p_empresa_id, 'LABEL_JOB_PLURAL');
  --
  ------------------------------------------------------------
  -- verificacao de seguranca
  ------------------------------------------------------------
  IF usuario_pkg.priv_verificar(p_usuario_sessao_id,
                                'STATUS_AUX_JOB_C',
                                NULL,
                                NULL,
                                p_empresa_id) = 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Voc� n�o tem privil�gio para realizar essa opera��o.';
   RAISE v_exception;
  END IF;
  --
  SELECT COUNT(*)
    INTO v_qt
    FROM status_aux_job
   WHERE status_aux_job_id = p_status_aux_job_id
     AND empresa_id = p_empresa_id;
  --
  IF v_qt = 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Esse status n�o existe.';
   RAISE v_exception;
  END IF;
  --
  SELECT flag_padrao,
         cod_status_pai
    INTO v_flag_padrao,
         v_cod_status_pai
    FROM status_aux_job
   WHERE status_aux_job_id = p_status_aux_job_id;
  --
  IF v_flag_padrao = 'S' THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Outro status deve ser definido como padr�o para que esse possa ser exclu�do.';
   RAISE v_exception;
  END IF;
  --
  v_nome_status_pai := util_pkg.desc_retornar('status_job', v_cod_status_pai);
  --
  ------------------------------------------------------------
  -- verificacao de integridade
  ------------------------------------------------------------
  SELECT COUNT(*)
    INTO v_qt
    FROM job
   WHERE status_aux_job_id = p_status_aux_job_id;
  --
  IF v_qt > 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Existem ' || v_lbl_jobs || ' associados a esse status.';
   RAISE v_exception;
  END IF;
  --
  ------------------------------------------------------------
  -- atualizacao do banco
  ------------------------------------------------------------
  DELETE FROM status_aux_job
   WHERE status_aux_job_id = p_status_aux_job_id;
  --
  SELECT COUNT(*)
    INTO v_qt
    FROM status_aux_job
   WHERE cod_status_pai = v_cod_status_pai
     AND empresa_id = p_empresa_id
     AND flag_ativo = 'S';
  --
  IF v_qt = 0 THEN
   p_erro_cod := '90000';
   p_erro_msg := 'Deve existir pelo menos um status estendido ativo para o status ' ||
                 v_nome_status_pai || '.';
   RAISE v_exception;
  END IF;
  --
  COMMIT;
  p_erro_cod := '00000';
  p_erro_msg := 'Opera��o realizada com sucesso.';
  --
 EXCEPTION
  WHEN v_exception THEN
   ROLLBACK;
  WHEN OTHERS THEN
   p_erro_cod := SQLCODE;
   p_erro_msg := substr(SQLERRM || ' Linha Erro: ' || dbms_utility.format_error_backtrace,
                        1,
                        200);
   ROLLBACK;
 END excluir;
 --
--
END; -- STATUS_AUX_JOB_PKG



/
