class Produto:
    def __init__(self, id, nome, marca, preco, estoque):
        self.id = id
        self.nome = nome
        self.marca = marca
        self.preco = preco
        self.estoque = estoque

    def __str__(self):
        return f"Produto [id={self.id}, nome={self.nome}, marca={self.marca}, preco={self.preco}, estoque={self.estoque}]"