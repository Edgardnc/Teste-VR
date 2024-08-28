Feature: Validar o JSON retornado pelo serviço

  @teste_verification_json
  Scenario: Verificar se o JSON tem a chave "typeOfEstablishment"
    Given que eu faça uma requisição para a API de estabelecimentos
    When eu recebo a resposta do serviço
    Then o JSON deve conter a chave "typeOfEstablishment"
    And deve printar um dos tipos de estabelecimentos aleatoriamente
    

  @teste_vr1
    Scenario: 1
    Given a string de entrada “bananas, tomates # e ventiladores” 
    When os marcadores [“#”, “!”]
    Then a saída esperada é: “bananas, tomates” 


   @teste_vr2
    Scenario: 2
    Given o a string de entrada “o rato roeu a roupa $ do rei % de roma” 
    When os marcadores [“%”, “!”]
    Then a saída esperada é: “o rato roeu a roupa $ do rei”  


    @teste_vr3
    Scenario: 3
    Given a string de entrada “the quick brown fox & jumped over * the lazy dog” 
    When os marcadores [“&”, “*”, “%”, “!”]
    Then a saída esperada é: “the quick brown fox”