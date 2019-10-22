@end
Feature: Funcionar end to end

Scenario: Cadastrar Usuario

Given acesso pagina de usuarios cad
When cadastro um Usuario
Then verifico se foi cadastrado


Scenario: Editar Usuario

When edito um usuario
Then verifico se foi editado