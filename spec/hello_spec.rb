describe "Meu primeiro script" do 
    it "Visitar a pagina" do
        visit "http://qcmaint.dimepkairos.com.br/Dimep/Account/LogOn?ReturnUrl=%2F"
        sleep 10       
        expect(page.title).to eql "kairos"
    end
end