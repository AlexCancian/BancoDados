CREATE TRIGGER triggerAtualizarEstoque
AFTER INSERT ON ItensVenda
FOR EACH ROW
EXECUTE FUNCTION atualizaEstoque();