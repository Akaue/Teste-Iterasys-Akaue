@auth = { :username => "test", :password => "abc123" }

Dado('que insiro os dados para cadastrar cinco clientes') do
     
    @user1 = {

        "id": 1,
        "username": "Cleber",
        "firstName": "Cleber",
        "lastName": "Messias",
        "email": "teste@teste.com",
        "password": "ak123",
        "phone": "4233434324",
        "userStatus": 1
    }.to_json 
 
    @user2 = {
  
        "id": 2,
        "username": "Jose",
        "firstName": "Jose",
        "lastName": "Menezes",
        "email": "teste@teste.com",
        "password": "ak123",
        "phone": "52334330004",
        "userStatus": 2 
    }.to_json
 
      
    @user3 = {
     
        "id": 3,
        "username": "Mercedez",
        "firstName": "Mercedez",
        "lastName": "Silvaa",
        "email": "teste@teste.com",
        "password": "ak123",
        "phone": "56630004",
        "userStatus": 3
    }.to_json

    @user4 = {
     
        "id": 4,
        "username": "Lurdes",
        "firstName": "Lurdes",
        "lastName": "Sossa",
        "email": "teste@teste.com",
        "password": "ak123",
        "phone": "2260004",
        "userStatus": 4
    }.to_json

    @user5 = {
     
        "id": 5,
        "username": "Adao",
        "firstName": "Adao",
        "lastName": "Marcos",
        "email": "teste@teste.com",
        "password": "ak123",
        "phone": "35260004",
        "userStatus": 5
    }.to_json


    @post_user1 =  HTTParty.post'https://petstore.swagger.io/v2/user/',
    :basic_auth => $auth,
    :body => @user1,
    :headers => {
          "Content-type" => 'application/json'  

    }

    @post_user2 =  HTTParty.post'https://petstore.swagger.io/v2/user/',
    :basic_auth => $auth,
    :body => @user2,
    :headers => {
          "Content-type" => 'application/json'  

    }
   
    @post_user3 =  HTTParty.post'https://petstore.swagger.io/v2/user/',
    :basic_auth => $auth,
    :body => @user3,
    :headers => {
          "Content-type" => 'application/json'  

    }

    @post_user4 =  HTTParty.post'https://petstore.swagger.io/v2/user/',
    :basic_auth => $auth,
    :body => @user4,
    :headers => {
          "Content-type" => 'application/json'  

    }

    @post_user5 =  HTTParty.post'https://petstore.swagger.io/v2/user/',
    :basic_auth => $auth,
    :body => @user5,
    :headers => {
          "Content-type" => 'application/json'  

    }


 
end
  
Então('os clientes são cadastrados') do
     
    log "O Cliente #{@post_user1.body} foi cadastrado com sucesso"
    log "O Cliente #{@post_user2.body} foi cadastrado com sucesso"
    log "O Cliente #{@post_user3.body} foi cadastrado com sucesso"
    log "O Cliente #{@post_user4.body} foi cadastrado com sucesso"
    log "O Cliente #{@post_user5.body} foi cadastrado com sucesso"   
    
    log "Os clientes obtiveram response code: #{@post_user1.code}"
   
    expect(@post_user1.code).to eq 200 
    expect(@post_user2.code).to eq 200
    expect(@post_user3.code).to eq 200 
    expect(@post_user4.code).to eq 200
    expect(@post_user5.code).to eq 200
end
  