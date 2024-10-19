CREATE OR REPLACE FUNCTION procedureBackup()
RETURNS trigger
AS $$
BEGIN
   INSERT INTO bkpUsuarios (id, nome, senha)
   VALUES (OLD.id, OLD.nome, OLD.senha);

   RETURN OLD;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER backupAposDelete
AFTER DELETE ON usuarios
FOR EACH ROW
EXECUTE FUNCTION procedureBackup();