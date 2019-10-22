Given("estou na pagina determinada") do
  visit '/buscaelementos/dropdowneselect'
end

When("interajo com o Dropdown") do
  find(".btn.dropdown-button").click
  find("#dropdown3").click
end

When("interajo com o Select") do
select 'Safari', from: 'dropdown'
end

When("interajo com o Autocomplete") do
 visit '/widgets/autocomplete'
 find("#autocomplete-input").send_keys("Toca")
 find(:xpath, "//*[@class='autocomplete-content dropdown-content']").click
 sleep(20)
end

Then("mensagem de sucesso") do
puts 'tudo.certo'  
end