Given("estou na pagina certa") do
   visit '/buscaelementos/radioecheckbox'
  end
  
  When("interajo com Checkbox") do
    find(:xpath, "//label[@for='white']").click
    find(:xpath, "//label[@for='purple']").click
    find(:xpath, "//label[@for='white']").click
    sleep(5)
  end
  
  When("interajo com Radio") do
    find("//label[@for='red']").click
  end
  
  Then("Mensagem de sucesso") do
    puts 'success'
  end