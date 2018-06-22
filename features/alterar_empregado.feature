#language: pt
#utf-8

Funcionalidade: Alterar Empregado
Eu como administrador do sistema
Quero alterar os dados de um empregado
Para manter as informações atualizadas no sistema
	
	@alterar
	Cenario: Alterar dados do empregado
	Dado que eu esteja logado no sistema
	Quando alterar um empregado
	Entao seus dados serão alterados