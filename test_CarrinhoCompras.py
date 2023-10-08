import unittest
from cliente import Cliente
from produto import Produto
from carrinhoCompras import CarrinhoCompras
import HtmlTestRunner


class TestCarrinhoCompras(unittest.TestCase):
    def setUp(self):
        cliente1 = Cliente(
            1,
            "Pedro Balestra",
            "123.456.789-00",
            "(35) 9 9999-9999",
            "pedro.balestra@gec.inatel.br",
        )
        cliente2 = Cliente(
            2,
            "Lucas Resende",
            "808.107.321-88",
            "(35) 9 7777-9874",
            "lucas.resende@ges.inatel.br",
        )

        cliente3 = Cliente(3, "Wesley Marcos", "789.123.456-00", "(35) 9 7777-7777", "wesley.marcos@gec.inatel.br")

        self.carrinhoCl1 = CarrinhoCompras(cliente1)
        self.carrinhoCl2 = CarrinhoCompras(cliente2)
        self.carrinhoCl3 = CarrinhoCompras(cliente3)

        # Balestra
        produtoCl1_1 = Produto(1, "Xbox Series X", "Microsoft", 4499.99, 5)
        produtoCl1_2 = Produto(2, "Civic SI", "Honda", 70000.00, 2)
        produtoCl1_3 = Produto(3, "Tênis", "Nike", 1899.99, 5)
        produtoCl1_4 = Produto(4, "Predator 2023", "Acer", 22000.00, 3)

        self.carrinhoCl1.adicionar_produto(produtoCl1_1)
        self.carrinhoCl1.adicionar_produto(produtoCl1_2)
        self.carrinhoCl1.adicionar_produto(produtoCl1_3)
        self.carrinhoCl1.adicionar_produto(produtoCl1_4)

        # Lucas
        produtoCl2_1 = Produto(1, "Golf GTI MK8", "Volkswagen", 220000.00, 1)
        produtoCl2_2 = Produto(2, "Iphone 14", "Apple", 7499.99, 6)
        produtoCl2_3 = Produto(3, "Air Jordan", "Nike", 2799.99, 2)
        produtoCl2_4 = Produto(
            4, "Filme: 'Como treinar seu dragão'", "DreamWorks Animation Inc", 47.00, 1
        )

        self.carrinhoCl2.adicionar_produto(produtoCl2_1)
        self.carrinhoCl2.adicionar_produto(produtoCl2_2)
        self.carrinhoCl2.adicionar_produto(produtoCl2_3)
        self.carrinhoCl2.adicionar_produto(produtoCl2_4)

        #Wesley
        produtoCl3_1 = Produto(1, "PS5", "Sony", 4499.99, 2)
        produtoCl3_2 = Produto(2, 'TV 4k 50"', "LG", 5499.99, 3)
        produtoCl3_3 = Produto(3, "Home Theater", "Pioneer", 4999.99, 4)
        produtoCl3_4 = Produto(4, "Ecosport", "Ford", 130000.00, 2)

        self.carrinhoCl3.adicionar_produto(produtoCl3_1)
        self.carrinhoCl3.adicionar_produto(produtoCl3_2)
        self.carrinhoCl3.adicionar_produto(produtoCl3_3)
        self.carrinhoCl3.adicionar_produto(produtoCl3_4)

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
        self.assertNotEqual(len(self.carrinhoCl3.produtos), 0)

    def test_calcular_total_Lucas_Equal(self):
        total_esperado = 220000.0 + 7499.99 + 2799.99 + 47.0
        self.assertEqual(self.carrinhoCl2.calcular_total(), total_esperado)

    def test_calcular_total_Lucas_NotEqual(self):
        total_Nesperado = 220000.0 + 7499.99 + 2799.99
        self.assertNotEqual(self.carrinhoCl2.calcular_total(), total_Nesperado)

    def test_adicionar_produto_Lucas(self):
        produto = Produto(1, "Golf GTI MK8", "Volkswagen", 220000.00, 1)
        self.carrinhoCl2.adicionar_produto(produto)
        self.assertIn(produto, self.carrinhoCl2.produtos)

    def test_carrinho_Nvazio_Lucas(self):
        self.assertNotEqual(len(self.carrinhoCl3.produtos), 0)

    def test_calcular_total_Wesley_Equal(self):
        total_esperado = 4499.99 + 5499.99 + 4999.99 + 130000.0
        self.assertEqual(self.carrinhoCl3.calcular_total(), total_esperado)

    def test_calcular_total_Wesley_NotEqual(self):
        total_Nesperado = 4499.99 + 5499.99 + 4999.99
        self.assertNotEqual(self.carrinhoCl3.calcular_total(), total_Nesperado)

    def test_adicionar_produto_Wesley(self):
        produto = Produto(1, "PS5", "Sony", 4499.99, 2)
        self.carrinhoCl3.adicionar_produto(produto)
        self.assertIn(produto, self.carrinhoCl3.produtos)

    def test_carrinho_Nvazio_Wesley(self):
        self.assertNotEqual(len(self.carrinhoCl3.produtos),0)

if __name__ == "__main__":
    # unittest.main()
    unittest.main(testRunner=HtmlTestRunner.HTMLTestRunner(output="artifacts"))
