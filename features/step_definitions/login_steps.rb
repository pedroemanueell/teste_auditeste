Dado("que eu esteja na home do site") do
    @home = Home_page.new
    @home.load
end
  
Quando("eu fizer o login {string}{string}") do |email, senha| 
    @login = Login_page.new
    @login.preenchendo_dados(email, senha)
end

Quando("eu inserir os dados invalidos {string},{string}") do |email, senha|
    @dados = Login_page.new
    @dados.preenchendo_dados(email, senha)
  end

Quando("eu deixar o campo em branco {string}, {string}") do |email, senha|
    @campo = Login_page.new
    @campo.preenchendo_dados(email, senha)
end
  
Então("eu tenho que ver o usuario logado") do
    @login = expect(page).to have_content('Ana Sousa')
    puts @login
end

Então("eu vejo a {string} de erro") do |mensagem|
    expect(@dados.alerta_email(mensagem)).to have_content(mensagem)
  end
  
Então("eu vejo a {string} de alerta") do |mensagem|
    expect(page).to have_content(mensagem)
    $alerta_campo = @campo.alerta_campo(mensagem)
    puts $alerta_campo
end