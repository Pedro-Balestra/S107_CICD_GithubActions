import unittest
from cliente import Cliente
from produto import Produto
from carrinhoCompras import CarrinhoCompras
import HtmlTestRunner

class TestCarrinhoCompras(unittest.TestCase):
    def setUp(self):
        cliente1 = Cliente(1, "Pedro Balestra", "123.456.789-00", "(35) 9 9999-9999", "pedro.balestra@gec.inatel.br")
    
        self.carrinhoCl1 = CarrinhoCompras(cliente1)
    
        #Balestra
        produtoCl1_1 = Produto(1, "Xbox Series X", "Microsoft", 4499.99, 5)
        produtoCl1_2  = Produto(2, "Civic SI", "Honda", 70000.00, 2)
        produtoCl1_3  = Produto(3, "Tênis", "Nike", 1899.99, 5)
        produtoCl1_4 = Produto(4, "Predator 2023", "Acer", 22000.00, 3)

        self.carrinhoCl1.adicionar_produto(produtoCl1_1)
        self.carrinhoCl1.adicionar_produto(produtoCl1_2)
        self.carrinhoCl1.adicionar_produto(produtoCl1_3)
        self.carrinhoCl1.adicionar_produto(produtoCl1_4)



    def test_calcular_total_Pedro_Equal(self):
        total_esperado = 4499.99 + 70000.0 + 1899.99 + 22000.0
        self.assertEqual(self.carrinhoCl1.calcular_total(), total_esperado)
    
    def test_calcular_total_Pedro_NotEqual(self):
        total_Nesperado = 4499.99 + 70000.0 + 1899.99
        self.assertNotEqual(self.carrinhoCl1.calcular_total(), total_Nesperado)

    def test_adicionar_produto_Pedro(self):
        produto = Produto(2, "Civic SI", "Honda", 70000.00, 2)
        self.carrinhoCl1.adicionar_produto(produto)
        self.assertIn(produto, self.carrinhoCl1.produtos)

    def test_carrinho_Nvazio_Pedro(self):
        self.assertNotEqual(len(self.carrinhoCl3.produtos),0)  

if __name__ == '__main__':
    #unittest.main()
    unittest.main(testRunner=HtmlTestRunner.HTMLTestRunner(output='artifacts'))
    