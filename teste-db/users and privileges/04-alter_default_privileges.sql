-- Executar no BANCO DA APLICA��O logado com usu�rio MIGRATIONAPPUSER

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT,USAGE, UPDATE ON SEQUENCES TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON FUNCTIONS TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON ROUTINES TO appuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE ON TYPES TO appuser;

-- Executar no BANCO DA APLICA��O logado com usu�rio MIGRATIONAPPUSER

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT,USAGE, UPDATE ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT EXECUTE ON ROUTINES TO postgres;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE ON TYPES TO postgres;

-- Esta parte deve ser executada SOMENTE em ambientes que j� existiam e est�o migrando para o novo template

-- Executar no BANCO DA APLICA��O logado com usu�rio MIGRATIONAPPUSER

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO appuser;
GRANT SELECT, USAGE, UPDATE ON ALL SEQUENCES  IN SCHEMA public TO appuser;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public TO appuser;
GRANT EXECUTE ON ALL ROUTINES IN SCHEMA public TO appuser;
GRANT EXECUTE ON ALL PROCEDURES IN SCHEMA public TO appuser;

-- Executar no BANCO DA APLICA��O logado com usu�rio MIGRATIONAPPUSER

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO postgres;
GRANT SELECT,USAGE, UPDATE ON ALL SEQUENCES  IN SCHEMA public TO postgres;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public TO postgres;
GRANT EXECUTE ON ALL ROUTINES IN SCHEMA public TO postgres;
GRANT EXECUTE ON ALL PROCEDURES IN SCHEMA public TO postgres;
