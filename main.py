from carrinhoCompras import CarrinhoCompras
from cliente import Cliente
from produto import Produto
import unittest


if __name__ == '__main__':
    cliente1 = Cliente(1, "Pedro Balestra", "123.456.789-00", "(35) 9 9999-9999", "pedro.balestra@gec.inatel.br")
    cliente2 = Cliente(2, "Lucas Resende", "456.789.123-00", "(35) 9 8888-8888", "lucas.resende@ges.inatel.br")
    cliente3 = Cliente(3, "Wesley Marcos", "789.123.456-00", "(35) 9 7777-7777", "wesley.marcos@gec.inatel.br")
    
    # Criando os produtos do cliente 1
    produtoCl1_1 = Produto(1, "Xbox Series X", "Microsoft", 4499.99, 5)
    produtoCl1_2  = Produto(2, "Civic SI", "Honda", 70000.00, 2)
    produtoCl1_3  = Produto(3, "Tênis", "Nike", 1899.99, 5)
    produtoCl1_4 = Produto(4, "Predator 2023", "Acer", 22000.00, 3)
    
    # Criando os produtos do cliente 2
    produtoCl2_1 = Produto(1, "Falcon", "Honda", 220000.00, 1)
    produtoCl2_2 = Produto(2, "Iphone 14", "Apple", 7499.99, 6)
    produtoCl2_3 = Produto(3, "Air Jordan", "Nike", 2799.99, 2)
    produtoCl2_4 = Produto(4, "Filme: 'Como treinar seu dragão'", "DreamWorks Animation Inc", 47.00, 1)
    
    # Criando os produtos do cliente 3
    produtoCl3_1 = Produto(1, "PS5", "Sony", 4499.99, 2)
    produtoCl3_2 = Produto(2, 'TV 4k 50"', "LG", 5499.99, 3)
    produtoCl3_3 = Produto(3, "Home Theater", "Pioneer", 4999.99, 4)
    produtoCl3_4 = Produto(4, "Ecosport", "Ford", 130000.00, 2)
    
    # Criando o carrinho de compras para os clientes
    carrinhoCl_1 = CarrinhoCompras(cliente1)
    carrinhoCl_2 = CarrinhoCompras(cliente2)
    carrinhoCl_3 = CarrinhoCompras(cliente3)
    
    # Adicionando produtos ao carrinho 1
    carrinhoCl_1.adicionar_produto(produtoCl1_1)
    carrinhoCl_1.adicionar_produto(produtoCl1_2)
    carrinhoCl_1.adicionar_produto(produtoCl1_3)
    carrinhoCl_1.adicionar_produto(produtoCl1_4)
    
    # Adicionando produtos ao carrinho 2
    carrinhoCl_2.adicionar_produto(produtoCl2_1)
    carrinhoCl_2.adicionar_produto(produtoCl2_2)
    carrinhoCl_2.adicionar_produto(produtoCl2_3)
    carrinhoCl_2.adicionar_produto(produtoCl2_4)
    
    # Adicionando produtos ao carrinho 3
    carrinhoCl_3.adicionar_produto(produtoCl3_1)
    carrinhoCl_3.adicionar_produto(produtoCl3_2)
    carrinhoCl_3.adicionar_produto(produtoCl3_3)
    carrinhoCl_3.adicionar_produto(produtoCl3_4)
    
    # Exibindo os detalhes do carrinho 1
    print("______________________ Carrinho Pedro ______________________")
    carrinhoCl_1.exibir_detalhes()
    print("______________________ Carrinho Lucas ______________________")
    carrinhoCl_2.exibir_detalhes()
    print("______________________ Carrinho Wesley ______________________")
    carrinhoCl_3.exibir_detalhes()