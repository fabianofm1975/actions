-- Executar em qualquer banco com usuário POSTGRES

CREATE USER migrationappuser WITH ENCRYPTED PASSWORD 'Stone@2023!';
GRANT CONNECT ON DATABASE "teste-db" TO migrationappuser;

-- Executar no BANCO DA APLICAÇÃO logado com usuário POSTGRES

GRANT ALL ON SCHEMA public TO migrationappuser;

