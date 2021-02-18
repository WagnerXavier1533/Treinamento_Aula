describe 'Formss', :formss do


    it 'Senha incorreta' do

        visit 'http://qcmaint.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'

        fill_in 'LogOnModel.UserName', with: 'teste4562@dimep.com.br'
        fill_in 'LogOnModel.Password', with: '2'

        click_button 'Entrar'

      end

    it 'Usuario não cadastrado' do

        visit 'http://qcmaint.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F'

        fill_in 'LogOnModel.UserName', with: 'teste4562@dimep.com'
        fill_in 'LogOnModel.Password', with: '1'

        click_button 'Entrar'

    end

end