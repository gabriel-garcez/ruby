Given("acessei o site da OLX") do
  visit 'https://www.olx.com.br/'
end

When("clico em sp") do
  click_on("sp")
end

When("procuro por xbox") do
    #find("#searchtext").send_keys("xbox")
    find(:xpath, "//*[@class='form-field form-field-text placeholder']").send_keys("xbox") 
  end
  
  When("estou na pagina do xbox") do
    #find("#searchbutton").click
    click_on(:xpath, "//*[@class='form-field form-field-text placeholder']")
 end
  
  Then("estou na pagina de sp") do
    puts 'ola'
  end


