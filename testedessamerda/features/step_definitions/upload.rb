Given("estou na pagina de upload de Arquivos") do
  puts 'ola'
end

When("faco o upload de um Arquivos") do
visit 'http://automacaocombatista.herokuapp.com/outros/uploaddearquivos'
sleep(5)
@file = File.join(Dir.pwd, 'features/imagen21.jpg')
attach_file('upload', @file)
end

Then("sucesso upload") do
  puts 'sucesso upload'
end