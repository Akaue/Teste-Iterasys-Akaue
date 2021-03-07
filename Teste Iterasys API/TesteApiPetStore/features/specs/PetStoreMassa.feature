#language: pt

Funcionalidade: Pet Store
Eu sou dono de uma loja de pets e quero cadastrar meus clientes e os pets que possuimos na loja.


@post_client_massa
Cenário: Cadastrando clientes
Dado que insiro os dados para cadastrar cinco clientes
Então os clientes são cadastrados


@post_pet_massa
Cenário: Cadastrando pets
Dado que insiro os dados para cadastrar cinco pets
Então novos pets são cadastrados


@put_client_massa
Cenário: Vendendo atualizando pet para cliente
Dado que quero atualizar o pet do cliente
Então eu realizo a alteração

@put_pet_massa
Cenário: Alterando status
Dado que altero o status dos pets
Então o status dos pets são atualizados



@delete_usuario_pet
Cenário: Deletando usuário e pets
Dado que quero excluir algun pet e usuario
Então deletara o pet e o usuario selecionado


@get_client_pet_massa
Cenário: Consultando dados dos clientes
Dado que quero visualizar os dados dos clientes
Então será mostrado todos dados atualizados



@get_client_pet_massa
Cenário: Consultando dados dos pets
Dado que quero ver os status dos pets
Então retornará os status dos pets


