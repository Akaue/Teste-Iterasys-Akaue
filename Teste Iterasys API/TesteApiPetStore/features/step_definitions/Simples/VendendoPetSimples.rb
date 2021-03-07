@auth = { :username => "test", :password => "abc123" }
Dado("que quero vender um pet") do
  @realizando_venda = {

    "id": 44,
    "name": "Brutus",
    "type": "Dog",
    "age": "2 meses",
    "status": "delivered",

  }.to_json

  @venda = HTTParty.post "https://petstore.swagger.io/v2/pet/",
                         :basic_auth => $auth,
                         :body => @realizando_venda,
                         :headers => {
                           "Content-Type" => "application/json",
                         }
end

Então("eu realizo a venda") do
  log "O pet #{@venda.body} foi vendido"
  log "Com o response code: #{@venda.code}"

  expect(@venda.code).to eq 200
end
