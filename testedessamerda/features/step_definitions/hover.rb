Given("estou no site da conestoga") do
    visit 'https://www.conestogac.on.ca/'
  end
  
  When("clico na opcao do menu usando hover") do
    find("#seconditem").hover
    click_on("Full-time Programs")
  end
  
  Then("sucessinho") do
    puts 'sucesso'
  end