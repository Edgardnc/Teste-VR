require 'httparty'
require 'json'

Given('que eu faça uma requisição para a API de estabelecimentos') do
  @response = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPATS')
end

When('eu recebo a resposta do serviço') do
  @json_response = JSON.parse(@response.body)
end

Then('o JSON deve conter a chave {string}') do |key|
  expect(@json_response).to have_key(key)
end

Then('deve printar um dos tipos de estabelecimentos aleatoriamente') do
  types_of_establishments = @json_response['typeOfEstablishment']
  puts types_of_establishments.sample
end
