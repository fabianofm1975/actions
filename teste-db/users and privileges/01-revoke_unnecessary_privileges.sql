-- Removendo privilégios herdados da role PUBLIC. 
-- Deve ser executado com usuário POSTGRES no NOVO BANCO criado e outros bancos que existam no ambiente.

REVOKE CREATE ON SCHEMA public FROM public; 
REVOKE ALL ON DATABASE POSTGRES FROM public;


