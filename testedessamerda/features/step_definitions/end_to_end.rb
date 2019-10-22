Given("acesso pagina de usuarios cad") do
visit '/users/new'  
end

When("cadastro um Usuario") do
find("#user_name").send_keys("gabriel")
find("#user_lastname").send_keys("campos")
find("#user_email").send_keys("gabriel@fg.com")
find("#user_address").send_keys("gftfgt")
find("input[value='Criar']").send_keys(:enter)
end

Then("verifico se foi cadastrado") do
page.has_text?("Usuário Criado com sucesso") 
end

When("edito um usuario") do
    sleep(4)
find('.btn.waves-light.blue').click
sleep(2)
find("#user_address").send_keys("coisaboa")
end

Then("verifico se foi editado") do
page.has_text?("Seu Usuário foi Atualizado!")
end