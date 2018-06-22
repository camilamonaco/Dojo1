Dado("que eu esteja na home do sistema") do                                   
	visit 'http://opensource.demo.orangehrmlive.com/'
	fill_in('txtUsername', :with => 'Admin')
	fill_in('txtPassword', :with => 'admin')
  	find("input#btnLogin.button").click
end                                                                          
                                                                             
Quando("alterar um empregado") do     

	find(:id, "menu_pim_viewPimModule").click
	find(:id, "menu_pim_viewEmployeeList").click
	fill_in('empsearch_employee_name_empName', :with => 'Galindo')
	find(:id, "searchBtn").click

	table = page.find(:xpath, '//*[@id="resultTable"]/tbody')
    row_count = table.all(:css, 'tr').size
    xpath_check = "//*[@id='resultTable']/tbody/tr["+row_count.to_s+"]//input[@name='chkSelectRow[]']"
    find(:xpath, xpath_check).click
    find(:xpath, "//*[@id='resultTable']/tbody/tr["+row_count.to_s+"]/td[2]/a").click 

	find(:id, "btnSave").click

	otherid = find(:id, 'personal_txtEmployeeId').value
	fill_in('personal_txtOtherID', :with => otherid)
	find(:id, "btnSave").click
	

end                                                                          
                                                                             
Entao("seus dados serão alterados") do                           
  	assert_text('Successfully Saved')
end                                                                          