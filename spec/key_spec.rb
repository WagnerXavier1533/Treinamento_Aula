describe 'Teclado', :key do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
    end

    it 'Enviando teclas' do
        
        teclas = %i[tab escape space enter shift control alt]
        
        teclas.each do |t|
            
            find('#campo-id').send_keys t
            
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 1
        end
    end

    it 'Enviando letras' do
        letras = %w[w a g n i n h o]
        letras.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 1
        end
    end
end