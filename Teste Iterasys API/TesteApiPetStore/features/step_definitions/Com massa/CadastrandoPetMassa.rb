@auth = { :username => "test", :password => "abc123" }

Dado('que insiro os dados para cadastrar cinco pets') do
    @dog1 = {

        "id": 10 ,
        "name": "Abelardo",
        "status": "Available"
               
       
  
    }.to_json
  
      
    @dog2 = {

        
        "id": 102,
        "name": "Rex",
        "status": "Available"
       
        
    }.to_json
  
  
        
    @dog3 = {

        "id": 103,
        "name": "Jasmine",
        "status": "Available"
       
       
    }.to_json
  

    @dog4 = {

        "id": 104,
        "name": "Rebelde",
        "status": "Available"
      
      
  
    }.to_json
  

    @dog5 = {

        "id": 105,
        "name": "Diana",
        "status": "Available"
        
       
  
    }.to_json

   
    @cat1 = {

        "id": 106,
        "name": "Auroraa",
        "status": "Available"
       
      
  
    }.to_json
  
      
    @cat2 = {

        "id": 107,
        "name": "Dinda",
        "status": "Available"
        
      
     
  
    }.to_json
  
  
        
    @cat3 = {

        "id": 108,
        "name": "Dica",
        "status": "Available"
       
      
        
  
    }.to_json
  

    @cat4 = {

        "id": 109,
        "name": "Plutos",
        "status": "Available"
        
      
       
  
    }.to_json
  

    @cat5 = {

        "id": 110,
        "name": "Bob",
        "status": "Available"
        
        
  
    }.to_json
  
  

   


    @post_dog1 =  HTTParty.post'https://petstore.swagger.io/v2/pet',
       :basic_auth => $auth,  
       :body => @dog1,
       :headers => {
  
        "Content-Type" =>  'application/json'
  
    }
      
    @post_dog2 =  HTTParty.post'https://petstore.swagger.io/v2/pet',
      :basic_auth => $auth,    
      :body => @dog2,
      :headers => {
  
        "Content-Type" =>  'application/json'
  
    }

    @post_dog3 =  HTTParty.post'https://petstore.swagger.io/v2/pet',
      :basic_auth => $auth,  
      :body => @dog3,
      :headers => {
  
        "Content-Type" =>  'application/json'
  
    }

    @post_dog4 =  HTTParty.post'https://petstore.swagger.io/v2/pet',
      :basic_auth => $auth,  
      :body => @dog4,
      :headers => {

        "Content-Type" =>  'application/json'

    }

    @post_dog5 =  HTTParty.post'https://petstore.swagger.io/v2/pet',
      :basic_auth => $auth,   
      :body => @dog5,
      :headers => {

        "Content-Type" =>  'application/json'

    }


    @post_cat1 =  HTTParty.post'https://petstore.swagger.io/v2/pet',
     :basic_auth => $auth,  
     :body => @cat1,
     :headers => {

        "Content-Type" =>  'application/json'

    }


    @post_cat2 =  HTTParty.post'https://petstore.swagger.io/v2/pet',
      :basic_auth => $auth,  
      :body => @cat2,
      :headers => {

        "Content-Type" =>  'application/json'

    }


    @post_cat3 =  HTTParty.post'https://petstore.swagger.io/v2/pet',
     :basic_auth => $auth,   
     :body => @cat3,
     :headers => {

        "Content-Type" =>  'application/json'

    }


    @post_cat4 =  HTTParty.post'https://petstore.swagger.io/v2/pet',
     :basic_auth => $auth,  
     :body => @cat4,
     :headers => {

        "Content-Type" =>  'application/json'

    }


     @post_cat5 =  HTTParty.post'https://petstore.swagger.io/v2/pet',
      :basic_auth => $auth,  
      :body => @cat5,
      :headers => {

        "Content-Type" =>  'application/json'

    }

  
end
  
Então('novos pets são cadastrados') do
    log "O cachorro #{@post_dog1.body} foi cadastrado com sucesso"
    log "O cachorro #{@post_dog2.body} foi cadastrado com sucesso"
    log "O cachorro #{@post_dog3.body} foi cadastrado com sucesso"
    log "O cachorro #{@post_dog4.body} foi cadastrado com sucesso"
    log "O cachorro #{@post_dog5.body} foi cadastrado com sucesso"
       
    log "O gato #{@post_cat1.body} foi cadastrado com sucesso"
    log "O gato #{@post_cat2.body} foi cadastrado com sucesso"
    log "O gato #{@post_cat3.body} foi cadastrado com sucesso"
    log "O gato #{@post_cat4.body} foi cadastrado com sucesso"
    log "O gato #{@post_cat5.body} foi cadastrado com sucesso"
    
    log "Os cães obtiveram o response code: #{@post_dog1.code}"
    log "Os gatos obtiveram o response code: #{@post_cat1.code}"

   
end
  