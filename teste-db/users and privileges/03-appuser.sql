-- Executar em qualquer banco com usuário POSTGRES

CREATE USER appuser WITH ENCRYPTED PASSWORD 'Stone@2023!';
GRANT CONNECT ON DATABASE "teste-db" TO appuser;




