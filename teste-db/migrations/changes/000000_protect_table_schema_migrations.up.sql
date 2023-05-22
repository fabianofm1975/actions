DO
$do$
BEGIN
   IF EXISTS (
      SELECT FROM pg_catalog.pg_roles WHERE  rolname = 'appuser') 
   THEN
      REVOKE ALL ON public.schema_migrations from appuser;
   END IF;
END
$do$;

