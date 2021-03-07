@auth = { :username => "test", :password => "abc123" }
Dado("que quero excluir algun pet e usuario") do
  @delete = HTTParty.delete "https://petstore.swagger.io/v2/user/Maria",
                            :basic_auth => $auth,
                            :body => @delete_user,
                            :headers => {
                              "Content-type" => "application/json",

                            }
  @delete2 = HTTParty.delete "https://petstore.swagger.io/v2/pet/10",
                             :basic_auth => $auth,
                             :body => @delete_pet,
                             :headers => {
                               "Content-type" => "application/json",
                             }
end

Então("deletara o pet e o usuario selecionado") do
  log "O cliente #{@delete.body} foi deletado com sucesso"
  log "Com o response code: #{@delete.code}"
  expect(@delete.code).to eq 200

  log "O pet #{@delete2.body} foi deletado com sucesso"
  log "Com o response code: #{@delete2.code}"
  expect(@delete2.code).to eq 200
end
