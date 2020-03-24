class Login_page < SitePrism::Page

    element :input_name,               '#MainContent_txt_usu_email'
    element :input_senha,              '#MainContent_txt_sen_descricao'
    element :button_entrar,            '#MainContent_BtnEntrar'
    element :alerta_campo_invalido,    '#MainContent_lbl_Msg'
    element :alerta_campo_em_branco,   '.ajax__validatorcallout_error_message_cell'

    def preenchendo_dados(email, senha)
        input_name.set(email)
        input_senha.set(senha)
        button_entrar.click
    end

    def alerta_email(mensagem) 
        alerta_campo_invalido.text(mensagem)
    end

    def alerta_campo(mensagem)
        alerta_campo_em_branco.text
    end
end