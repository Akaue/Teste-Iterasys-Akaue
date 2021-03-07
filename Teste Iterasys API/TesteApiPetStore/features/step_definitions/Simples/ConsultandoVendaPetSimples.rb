#Clientes
#---------------------------------------------------------------------------------------------------------

Dado("que quero visualizar os dados do cliente") do
  @get_cadastro = HTTParty.get "https://petstore.swagger.io/v2/pet/44"
end

Então("será mostrado os dados atualizados") do
  log "Os dados atualizados do cliente: #{@get_cadastro.body}"
  log "Com response code #{@get_cadastro.code}"

  expect(@get_cadastro.code).to eq 200
end

#PETS
#----------------------------------------------------------------------------------------------------------
Dado("que quero ver o status do pet") do
  @get_cadastro = HTTParty.get "https://petstore.swagger.io/v2/user/Maria"
end

Então("retornará o status do pet") do
  log "Os dados do pet:  #{@get_cadastro.body}"
  log "Com response code #{@get_cadastro.code}"

  expect(@get_cadastro.code).to eq 200
end
