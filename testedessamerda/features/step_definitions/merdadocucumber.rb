Given("acesso a puta") do
    visit '/buscaelementos/botoes'
  end
  
  Then("ve se estou nessa merda") do
    find_by_id("teste")
    find_button(class: 'btn waves-light')
end

  