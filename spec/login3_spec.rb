describe 'Login com cadastro', :login3 do
    before(:each) do
      visit 'https://training-wheels-protocol.herokuapp.com/access'
      sleep 1
    end
    
    it 'Login com sucesso' do    
 
      within('#login') do
        find('input[name=username]').set 'stark'
        find('input[name=password]').set 'jarvis!'
        click_button 'Entrar'
      end
  
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end
  
      it 'cadastro com suceso', :signupSuccess do

      within('#signup') do
        find('input[name=username]').set 'fernando'
        find('input[name=password]').set '123456!'
        click_link 'Criar Conta'
      end
  
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'   
        sleep 5
      end

end