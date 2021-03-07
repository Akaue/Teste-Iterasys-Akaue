@auth = { :username => "test", :password => "abc123" }

Dado("que insiro os dados para cadastrar um cliente") do
  @user = {

    "id": 1,
    "username": "Maria",
    "firstName": "Maria",
    "lastName": "Assunção",
    "email": "teste@teste.com",
    "password": "aka1234",
    "phone": "1199999999",
    "userStatus": 1,

  }.to_json
end

Quando("realizo a ação na api") do
  @post_user = HTTParty.post "https://petstore.swagger.io/v2/user",
                             :basic_auth => $auth,
                             :body => @user,
                             :headers => {
                               "Content-type" => "application/json",
                             }
end

Então("um novo cliente é cadastrado") do
  log "O Cliente#{@post_user.body} foi cadastrado com sucesso"

  log "O Cliente obteve o response code: user:#{@post_user.code}"
  expect(@post_user.code).to eq 200
end
