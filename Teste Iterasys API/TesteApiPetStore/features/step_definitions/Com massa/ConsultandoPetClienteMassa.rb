#Clientes
#---------------------------------------------------------------------------------------------------------

Dado("que quero visualizar os dados dos clientes") do
    @get_cadastro = HTTParty.get "https://petstore.swagger.io/v2/user/Cleber"
    @get_cadastro2 = HTTParty.get "https://petstore.swagger.io/v2/user/Jose"
    @get_cadastro3 = HTTParty.get "https://petstore.swagger.io/v2/user/Mercedez"
    @get_cadastro4 = HTTParty.get "https://petstore.swagger.io/v2/user/Lurdes"
    @get_cadastro5 = HTTParty.get "https://petstore.swagger.io/v2/user/Adao"
  end
  
  Então("será mostrado todos dados atualizados") do
    log "Os dados atualizados do cliente: #{@get_cadastro.body}"   
    log "Os dados atualizados do cliente: #{@get_cadastro2.body}"
    log "Os dados atualizados do cliente: #{@get_cadastro3.body}"
    log "Os dados atualizados do cliente: #{@get_cadastro4.body}"
    log "Os dados atualizados do cliente: #{@get_cadastro5.body}"
    
    
    
    
    log "Com response code #{@get_cadastro.code}"
    log "Com response code #{@get_cadastro2.code}"
  
    expect(@get_cadastro.code).to eq 200
  end
  
  #PETS
  #----------------------------------------------------------------------------------------------------------
  Dado("que quero ver os status dos pets") do
    @get_cadastro6 = HTTParty.get "https://petstore.swagger.io/v2/pet/10"
    @get_cadastro7 = HTTParty.get "https://petstore.swagger.io/v2/pet/102"
    @get_cadastro8 = HTTParty.get "https://petstore.swagger.io/v2/pet/103"
    @get_cadastro9 = HTTParty.get "https://petstore.swagger.io/v2/pet/104"
    @get_cadastro10 = HTTParty.get "https://petstore.swagger.io/v2/pet/105"


    @get_cadastro11 = HTTParty.get "https://petstore.swagger.io/v2/pet/106"
    @get_cadastro12 = HTTParty.get "https://petstore.swagger.io/v2/pet/107"
    @get_cadastro13 = HTTParty.get "https://petstore.swagger.io/v2/pet/108"
    @get_cadastro14 = HTTParty.get "https://petstore.swagger.io/v2/pet/109"
    @get_cadastro15 = HTTParty.get "https://petstore.swagger.io/v2/pet/110"



  end
  
  Então("retornará os status dos pets") do
    log "Os dados do pet:  #{@get_cadastro10.body}"
    log "Com response code #{@get_cadastro10.code}"
    
  
    log "Os dados do pet:  #{@get_cadastro11.body}"
    log "Com response code #{@get_cadastro11.code}"
    expect(@get_cadastro10.code).to eq 200
    expect(@get_cadastro11.code).to eq 200
  end
  
