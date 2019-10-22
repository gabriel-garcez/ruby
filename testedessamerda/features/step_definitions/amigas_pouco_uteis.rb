Given("estou na pagina de Scrolls") do
  visit '/outros/scroll'
end

Then("faco um scrollzao da massa") do
page.execute_script("window.scrollBy(0, 1500)")
sleep(4) 
end

Given("estou na pagina de drag and Drop") do
visit 'iteracoes/draganddrop'  
end

Then("faco um drag em drop do bom") do
 @firstelement = find("#winston")
 @secondelement  = find("#dropzone")
 @firstelement.drag_to(@secondelement)
 sleep(4) 
end

Given("estou na pagina de atalhos do teclado") do
visit 'users/new'
end

Then("faco um atalhos ae") do
    find("#user_name").send_keys(:page_down)
    find("input[value='Criar']").send_keys(:enter)
    sleep(4)  
end
