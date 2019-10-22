@windows
Feature: Windows and Alerts

Scenario: Acessar uma nova janela

Given estou na pagina de janelas
When clico no botao para abrir janela
Then valido a mensagem na nova janela


Scenario: Acessar um alert
Given estou na pagina de alert
When interajo com o alert
Then tudo certo com o alert