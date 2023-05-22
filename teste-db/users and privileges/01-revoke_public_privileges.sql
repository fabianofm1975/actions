-- Removendo privilégios herdados da role PUBLIC. 
-- Deve ser executado com usuário ADMIN da cloud ou POSTGRES no NOVO BANCO criado.

REVOKE ALL ON SCHEMA public FROM public; 
REVOKE ALL ON DATABASE POSTGRES FROM public;

