class CarrinhoCompras:
    def __init__(self, cliente):
        self.cliente = cliente
        self.produtos = []

    def adicionar_produto(self, produto):
        self.produtos.append(produto)

    def remover_produto(self, produto):
        self.produtos.remove(produto)

    def calcular_total(self):
        total = 0
        for produto in self.produtos:
            total += produto.preco
        return total

    def exibir_detalhes(self):
        print("Detalhes do Cliente:")
        print(self.cliente)

        print("\nProdutos no Carrinho:")
        for produto in self.produtos:
            print(produto)

        print(f"\nTotal da Compra: R${self.calcular_total():.2f}")