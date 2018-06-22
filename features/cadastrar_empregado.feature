#language: pt
#utf-8

Funcionalidade: Cadastrar Empregado
Eu como administrador do sistema
Quero cadastrar um empregado
Para manter seus dados no sistema

	@cadastrar
	Cenario: Cadastrar novo empregado
	Dado que eu esteja logado no sistema
	Quando incluir um novo empregado
	Entao seus dados ficarão gravados no sistema