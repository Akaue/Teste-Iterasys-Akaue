@auth = { :username => "test", :password => "abc123" }

Dado("que insiro os dados para cadastrar um pet") do
  @pet = {
    "id": 44,
    "name": "Brutus",
    "type": "Dog",
    "age": "2 meses",
    "status": "available",

  }.to_json
end

Quando("efetivo o cadastro na api") do
  @post_pet = HTTParty.post "https://petstore.swagger.io/v2/pet",
                            :basic_auth => $auth,
                            :body => @pet,
                            :headers => {

                              "Content-Type" => "application/json",

                            }
end

Então("um novo pet é cadastrado") do
  log "O Pet #{@post_pet.body} foi cadastrado com sucesso"

  log "Os pets obtiveram o response code: Pet:#{@post_pet.code}"

  expect(@post_pet.code).to eq 200
end
