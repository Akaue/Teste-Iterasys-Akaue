#language: pt

Funcionalidade: Pet Store
Eu sou dono de uma loja de pets e quero cadastrar meus clientes e os pets que possuimos na loja.


@post_client
Cenário: Cadastrando cliente
Dado que insiro os dados para cadastrar um cliente
Quando realizo a ação na api
Então um novo cliente é cadastrado


@post_pet
Cenário: Cadastrando pet
Dado que insiro os dados para cadastrar um pet
Quando efetivo o cadastro na api
Então um novo pet é cadastrado

@put_client
Cenário: Vendendo pet para cliente
Dado que quero vender um pet
Então eu realizo a venda



@get_client_pet
Cenário: Consultando dados do cliente
Dado que quero visualizar os dados do cliente
Então será mostrado os dados atualizados



@get_client_pet
Cenário: Consultando dados do pet
Dado que quero ver o status do pet
Então retornará o status do pet

