Given("estou na pagina de iframes") do
    visit 'https://www.w3schools.com/htmL/html_iframe.asp'
  end
  
  When("faco uma acao em um objeto do iframe") do
    within_frame(:xpath, "//iframe[@src='default.asp']") do
    find("a[title='CSS Tutorial']").click
  end
end
  
  Then("sucesso") do
    puts 'iframe - sucesso'
  end
  
  Given("estou na pagina de Modals") do
    visit 'http://automacaocombatista.herokuapp.com/mudancadefoco/modal'
  end
  
  When("faco uma acao em Modal") do
  find("a[href='#modal1']").click
  within('#modal1') do
  find(".modal-close").click
  end
  sleep(5)
  end
  
  Then("sucessao") do
  puts 'sucessao' 
  end