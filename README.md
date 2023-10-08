# S107_CICD_GithubActions

[![CI Unittest](https://github.com/Pedro-Balestra/S107_CICD_GithubActions/actions/workflows/python-app.yml/badge.svg)](https://github.com/Pedro-Balestra/S107_CICD_GithubActions/actions/workflows/python-app.yml)

<h1 align="center"> S107 - Git Actions </h1>
<p>
  <img src="https://img.shields.io/static/v1?label=License&message=MIT&color=00bfff&style=plastic"/>
  
  <img src="https://img.shields.io/static/v1?label=LP&message=Python&color=daa520&style=plastic"/>
  
  <img src="https://img.shields.io/static/v1?label=IDE&message=VsCode&color=9acd32&style=plastic"/>
</p>

### :point_right: Tecnologias

- Linguagem de Programação: Python
- IDE: [Visual Studio Code](https://code.visualstudio.com)

### :notebook_with_decorative_cover: Gerenciamento de Dependências

1. Instale pip como o gerenciador de dependências usando o comando no terminal `python -m pip install -U pip`
2. Para incluir todas as dependências do projeto use o comando `pip freeze > requirements.txt`
3. Instale as dependências usando o comando no terminal `pip install -r requirements.txt`

### :heavy_check_mark: Execução

Para executar os projetos, siga as instruções abaixo:

1. Certifique-se de ter o [Python](https://www.python.org) instalado em sua máquina.
2. Faça o download do código do GitHub ou clone o repositório: `https://github.com/ThiagoMiguel7/C214_CI_Seminario.git`. Certifique-se de ter o [Git](https://git-scm.com) instalado.
3. Abra o terminal ou prompt de comando e navegue até o diretório raiz do projeto.
4. Execute o arquivo [main.py](https://github.com/ThiagoMiguel7/C214_CI_Seminario/blob/main/main.py) para rodar a aplicação.

### :mag: Testes unitários

O sistema implementa testes unitários para a classe CarrinhoCompras usando a biblioteca unittest. O objetivo desses testes é verificar se a classe CarrinhoCompras está funcionando corretamente.

#### Requisitos:

Certifique-se que as seguintes bibliotecas estão instaladas:

- unittest
- HtmlTestRunner

Na IDE, execute o arquivo [`test_CarrinhoCompras.py`](https://github.com/ThiagoMiguel7/C214_CI_Seminario/blob/main/test_CarrinhoCompras.py) ou os testes individualmente para verificar a funcionalidade correta do sistema. Outra possibilidade é executar o seguinte comando no terminal: `python -m unittest -v` ou `python test_CarrinhoCompras.py`.

1. **test_calcular_total_Pedro_Equal:** verifica se o cálculo do total para o carrinho de compras do cliente Pedro está correto e é igual ao valor esperado.
2. **test_calcular_total_Lucas_Equal:** verifica se o cálculo do total para o carrinho de compras do cliente Thiago está correto e é igual ao valor esperado.
3. **test_calcular_total_Wesley_Equal:** verifica se o cálculo do total para o carrinho de compras do cliente Wesley está correto e é igual ao valor esperado.
4. **test_calcular_total_Pedro_NotEqual:** verifica se o cálculo do total para o carrinho de compras do cliente Pedro não é igual ao valor inesperado.
5. **test_calcular_total_Lucas_NotEqual:** verifica se o cálculo do total para o carrinho de compras do cliente Thiago não é igual ao valor inesperado.
6. **test_calcular_total_Wesley_NotEqual:** verifica se o cálculo do total para o carrinho de compras do cliente Wesley não é igual ao valor inesperado.
7. **test_adicionar_produto_Pedro:** verifica se um produto é adicionado corretamente ao carrinho de compras do cliente Pedro.
8. **test_adicionar_produto_Lucas:** verifica se um produto é adicionado corretamente ao carrinho de compras do cliente Thiago.
9. **test_adicionar_produto_Wesley:** verifica se um produto é adicionado corretamente ao carrinho de compras do cliente Wesley.
10. **test_carrinho_Nvazio_Pedro:** verifica se o carrinho de compras do cliente Pedro não está vazio.
11. **test_carrinho_Nvazio_Lucas:** verifica se o carrinho de compras do cliente Thiago não está vazio.
12. **test_carrinho_Nvazio_Wesley:** verifica se o carrinho de compras do cliente Wesley não está vazio.

#### Relatórios de Teste

Os resultados dos testes serão exibidos no console e também serão gerados relatórios HTML, arquivo test_report, na pasta artifacts presente no [GitHub Actions](https://github.com/ThiagoMiguel7/C214_CI_Seminario/actions/). Esses relatórios fornecem uma visão mais detalhada dos resultados dos testes, incluindo informações sobre testes passados e falhados.

## 👥 Autores
<table>
  <tr>
    <td>
      <h4 align="center">
        <img style="border-radius: 50%" src="https://avatars.githubusercontent.com/pedro-balestra" width="180px;" alt="Pedro Balestra">
      </h4>
      <strong>Pedro Balestra</strong>
      <br>
      <a href="https://www.linkedin.com/in/pedro-balestra/">
        <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn Badge">
      </a>
      <a href="mailto:pedro.balestra@outlook.com">
        <img src="https://img.shields.io/badge/Outlook-0078D4?style=for-the-badge&logo=microsoft-outlook&logoColor=white" alt="Outlook Badge">
      </a>
    </td>
    <td>
      <h4 align="center">
        <img style="border-radius: 50%" src="https://avatars.githubusercontent.com/wesley-marcos" width="180px;" alt="Wesley Marcos">
      </h4>
      <strong>Wesley Marcos</strong>
      <br>
      <a href="https://www.linkedin.com/in/wesley-marcos-borges/">
        <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn Badge">
      </a>
      <a href="mailto:wesley.marcos@gec.inatel.com">
        <img src="https://img.shields.io/badge/Outlook-0078D4?style=for-the-badge&logo=microsoft-outlook&logoColor=white" alt="Outlook Badge">
      </a>
    </td>
    <td>
      <h4 align="center">
        <img style="border-radius: 50%" src="https://avatars.githubusercontent.com/u/99922083?v=4" width="180px;" alt="Lucas Resende">
      </h4>
      <strong>Lucas Resende</strong>
      <br>
      <a href="https://www.linkedin.com/in/lucassresende/">
        <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn Badge">
      </a>
      <a href="mailto:lucas.resende.ges.inatel.br">
        <img src="https://img.shields.io/badge/Outlook-0078D4?style=for-the-badge&logo=microsoft-outlook&logoColor=white" alt="Outlook Badge">
      </a>
    </td>
  </tr>
</table>

### :small_blue_diamond: Licença

MIT
