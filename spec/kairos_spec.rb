describe 'Kairos', :kairos do

    it 'Login com sucesso' do 

        visit 'http://qcmaint.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'

        fill_in 'LogOnModel.UserName', with: 'teste4562@dimep.com.br'
        fill_in 'LogOnModel.Password', with: '1'

        click_button 'Entrar'
        sleep 2

        visit 'http://qcmaint.dimepkairos.com.br/Dimep/Empresas'
        visit 'http://qcmaint.dimepkairos.com.br/Dimep/Empresas/Edit/511404'
        select('PET SHOP', from: 'Empresa_RamoAtividade_Id')
        sleep 4
    end
end