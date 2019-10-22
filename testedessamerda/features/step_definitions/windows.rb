Given("estou na pagina de janelas") do
    visit 'http://automacaocombatista.herokuapp.com/mudancadefoco/janela'
  end

When("clico no botao para abrir janela") do

    janela = window_opened_by do  
    click_link 'Clique aqui'
    end

    within_window janela do
      @var = find("h5[class='red-text text-darken-1 center']")
      expect(@var.text).to eql 'Você Abriu uma nova janela!!'
      sleep(3)
  end

end

Then("valido a mensagem na nova janela") do
puts 'tudo certo com janela'
end

Given("estou na pagina de alert") do
  visit 'http://automacaocombatista.herokuapp.com/mudancadefoco/alert'
end

When("interajo com o alert") do
find('button[onclick="jsAlert()"]').click
page.accept_alert

find('button[onclick="jsConfirm()"]').click
page.dismiss_confirm


find('button[onclick="jsPrompt()"]').click
page.accept_prompt(with: 'bruno batista')
page.dismiss_confirm

end

Then("tudo certo com o alert") do
puts 'tudo certo com alerts'  
end