-- Executar em qualquer banco com usuário ADMIN da cloud ou POSTGRES

CREATE USER migrationappuser WITH ENCRYPTED PASSWORD 'Stone@2023!';
GRANT CONNECT ON DATABASE "teste-db" TO migrationappuser;

-- Executar no BANCO DA APLICAÇÃO logado com usuário ADMIN da cloud ou POSTGRES

GRANT ALL ON SCHEMA public TO migrationappuser;

