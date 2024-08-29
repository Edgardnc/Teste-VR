require 'capybara/rspec'

# Configuração do Capybara
Capybara.default_driver = :selenium_chrome # Ou :selenium_firefox, conforme sua preferência mantive o crhome
Capybara.app_host = 'http://www.vr.com.br'

RSpec.describe 'Adicionar produto ao carrinho', type: :feature do
  it 'valida que um produto pode ser adicionado ao carrinho com sucesso' do
    # Acessar a home do portal web
    visit 'http://www.vr.com.br'

    # Clicar no botão "Compre online"
    click_link 'Compre online'

    # Selecionar a opção "Cartões VR"
    click_link 'Cartões VR'

    # Adicionar uma quantidade aleatória de cartões do produto "Auto"
    quantidade = rand(1..10) # Quantidade aleatória entre 1 e 10
    fill_in 'quantidade', with: quantidade

    # Digitar um valor de crédito aleatório para o produto "Auto"
    valor_credito = rand(10..100) # Valor aleatório entre R$10,00 e R$100,00
    fill_in 'valor_credito', with: valor_credito

    # Clicar no botão "Adicionar ao carrinho"
    click_button 'Adicionar ao carrinho'

    # Validar que produto foi adicionado ao carrinho com sucesso
    expect(page).to have_content('Produto adicionado ao carrinho') # Ajuste conforme a mensagem correta
  end
end