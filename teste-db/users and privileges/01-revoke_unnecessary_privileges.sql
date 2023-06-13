-- Removendo privilégios herdados da role PUBLIC. 
-- Deve ser executado com usuário POSTGRES no NOVO BANCO criado e outros bancos que existam no ambiente.

REVOKE ALL ON SCHEMA public FROM public; 
REVOKE ALL ON DATABASE POSTGRES FROM public;

-- Executar no BANCO DA APLICAÇÃO logado com usuário POSTGRES

GRANT ALL ON SCHEMA public TO postgres;

