load './src/controllers/RegisterController.rb'
load './src/views/RegisterView.rb'

class MenuController
    def initialize
    end
    """
    define qual feature o sistema fará
    @param op: int
    """
    def choose_option(op)
        case op
        when 0
            print "Fim do programa!\n"
        when 1
            register = {}
            rc = RegisterController.new(register)
            rv = RegisterView.new(register)
            register =  rc.request_data
            rc.raw_results
            print rv.display_results
            print "\nFim do programa!\n"
        when 2 .. 7
        puts "[INFO] EM FASE DE CONSTRUÇÃO\n"
        else
        puts "[Error] Opção inválida!\n"
        end
    end
end