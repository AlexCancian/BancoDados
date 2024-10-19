CREATE OR REPLACE FUNCTION atualizaEstoque()
RETURNS trigger
AS $$
BEGIN
   UPDATE Produto
   SET qtd_disponivel = qtd_disponivel - NEW.qtd_vendida
   WHERE cod_prod = NEW.id_produto;
   
   RETURN NEW;
END;
$$ LANGUAGE plpgsql;