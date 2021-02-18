describe 'Forms', :forms do

    it 'Login com sucesso' do 

        visit 'http://qcmaint.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'

        fill_in 'LogOnModel.UserName', with: 'teste4562@dimep.com.br'
        fill_in 'LogOnModel.Password', with: '1'

        click_button 'Entrar'
        sleep 5

    end

end