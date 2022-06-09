load './src/controllers/MenuController.rb'

class MenuView
    def initialize
    end
    """
    Mostra um menu pro usuario, até ele escolher uma 
    opção válida ou sair do sistema
    @param op: int
    """
    def display_menu(op)
        until Integer(op)  === 0 do
            print "\n\n_______________________________________________\n"
            print "|                                             |)\n"
            print "|     **SISTEMA DE TESTES - CONDICIONAIS**    |)\n"
            print "|                                             |)\n"
            print "|   * 1. Verificar maioridade do usuário;     |)\n"
            print "|   * 2. Lorem ipsum dolor sit amet consec;   |)\n"
            print "|   * 3. Lorem ipsum dolor sit amet consec;   |)\n"
            print "|   * 4. Lorem ipsum dolor sit amet consec;   |)\n"
            print "|   * 5. Lorem ipsum dolor sit amet consec;   |)\n"
            print "|   * 6. Lorem ipsum dolor sit amet consec;   |)\n"
            print "|   * 7. Lorem ipsum dolor sit amet consec;   |)\n"
            print "|   * 0. Sair do programa;                    |)\n"
            print "|                                             |)\n"
            print "|                                             |)\n"
            print "|                                             |)\n"
            print "|                                             |)\n"
            print "|_____________________________________________|)\n"

            print "\nDigite a sua escolha: "
            op = gets.chomp()
            mc = MenuController.new
            mc.choose_option(Integer(op))
        end
    end
end