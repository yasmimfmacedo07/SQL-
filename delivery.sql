CREATE table cliente
(idcliente INTEGER NOT NULL,
nome VARCHAR(45) NOT NULL,
cpf VARCHAR(11) NOT NULL,
telefone VARCHAR(15),
email VARCHAR(45),
PRIMARY KEY(idcliente)
);

CREATE table produto 
(idproduto INTEGER NOT NULL,
categoria VARCHAR(45) NOT NULL,
preco DECIMAL NOT NULL,
descricao VARCHAR(45),
nome_produto VARCHAR(45),
PRIMARY KEY(idproduto)
);

CREATE table endereco
(idendereco INTEGER NOT NULL,
complemento VARCHAR(45) NOT NULL,
rua VARCHAR(45) NOT NULL,
numero VARCHAR(10) NOT NULL,
bairro VARCHAR(45) NOT NULL,
cep VARCHAR(8) NOT NULL,
cliente_idcliente INTEGER NOT NULL,
PRIMARY KEY(idendereco),
FOREIGN KEY(cliente_idcliente)REFERENCES cliente (idcliente)
);

CREATE table pedido
(idpedido INTEGER NOT NULL,
data_hora DATETIME NOT NULL,
statusp VARCHAR(45) NOT NULL,
codigo_de_verificacao INTEGER NOT NULL,
valor_total DECIMAL NOT NULL,
cliente_idcliente INTEGER NOT NULL,
PRIMARY KEY(idpedido),
FOREIGN KEY(cliente_idcliente) REFERENCES cliente (idcliente)
);

CREATE table item_pedido
(id_item_pedido INTEGER NOT NULL,
quantidade INTEGER NOT NULL,
preco_unitario DECIMAL NOT NULL,
pedido_idpedido INTEGER NOT NULL,
produto_idproduto INTEGER NOT NULL,
PRIMARY KEY(id_item_pedido),
FOREIGN KEY(pedido_idpedido)REFERENCES pedido (idpedido),
FOREIGN KEY(produto_idproduto)REFERENCES produto (id_produto)
);

-- INSERINDO VALORES NA TABELA CLIENTE 
-- ID CLIENTE, NOME, CPF, TELEFONE, E-MAIL
INSERT INTO cliente VALUES (1, 'Yasmim Fiorio', '12345678901', '11223344332','yasmimfiorio@gmail.com');

-- INSERINDO VALORES NA TABELA PRODUTO
-- ID PRODUTO, CATEGORIA, PREÇO, DESCRIÇÃO, NOME_PRODUTO
INSERT INTO produto VALUES(2, 'Beleza', 'R$12,50', 'Batom sabor morango', 'Gloss Vermelho');

-- INSERINDO VALORES NA TABELA ENDEREÇO
-- ID CLIENTE, COMPLEMENTO, RUA, NÚMERO, BAIRRO, CEP
INSERT INTO endereco VALUE(33,'Ed Ana Ferrari', 'Rua Maria da Penha Queiroz','388', 'Praia da Costa', '29101-140');

-- INSERINDO VALORES NA TABELA PEDIDO
-- ID PEDIDO, DATA_HORA, STATUSP,CODIGO_DE_VERIFICACAO, VALOR TOTAL, CLIENTE_ID_CLIENTE
INSERT INTO endereco VALUE(44, '09:30', 'Em andamento', '1556213', 'R$10,00', 1);