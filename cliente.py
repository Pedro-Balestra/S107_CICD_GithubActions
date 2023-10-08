class Cliente:
    def __init__(self, codigo, nome, cpf, telefone, email):
        self.codigo = codigo
        self.nome = nome
        self.cpf = cpf
        self.telefone = telefone
        self.email = email

    def __str__(self):
        return f"Cliente [codigo={self.codigo}, nome={self.nome}, cpf={self.cpf}, telefone={self.telefone}, email={self.email}]"