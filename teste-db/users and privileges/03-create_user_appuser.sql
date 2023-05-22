-- Executar em qualquer banco com usuário ADMIN da cloud ou POSTGRES

CREATE USER appuser WITH ENCRYPTED PASSWORD 'Stone@2023!';
GRANT CONNECT ON DATABASE "teste-db" TO appuser;

-- Executar no BANCO DA APLICAÇÃO logado com usuário ADMIN da cloud ou POSTGRES

GRANT USAGE ON SCHEMA public TO appuser;


