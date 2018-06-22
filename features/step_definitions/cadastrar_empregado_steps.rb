Dado("que eu esteja logado no sistema") do                                   
	visit 'http://opensource.demo.orangehrmlive.com/'
	fill_in('txtUsername', :with => 'Admin')
	fill_in('txtPassword', :with => 'admin')
  	find("input#btnLogin.button").click
end                                                                          
                                                                             
Quando("incluir um novo empregado") do                                       
	find(:id, "menu_pim_viewPimModule").click
	find(:id, "menu_pim_addEmployee").click


	fill_in('firstName', :with => 'Galindo')
	fill_in('middleName', :with => 'Carlos')
	fill_in('lastName', :with => 'Prudente')

	id = find(:id, 'employeeId').value

	#Fotografia
    attach_file('photofile', 'C:\projetos\imagem\empregado.jpg')
	
	check('chkLogin')

	fill_in('user_name', :with => 'galindo.' + id)
	fill_in('user_password', :with => 'Teste@123')
	fill_in('re_password', :with => 'Teste@123')

	select('Enabled', :from => 'status')


	find(:id, "btnSave").click
	sleep(5)	
end                                                                          
                                                                             
Entao("seus dados ficarão gravados no sistema") do                           
	assert_text('Personal Details')
	assert_text('Galindo')
	assert_text('Carlos')
	assert_text('Prudente')
	
end                                                                          