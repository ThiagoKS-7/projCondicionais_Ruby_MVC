load './src/controllers/ValidationController.rb'
load './src/views/MenuView.rb'


class TestaCondicionais
    def initialize
    end
end


def runProgram
    op = -1
    mv = MenuView.new
    mv.display_menu(op)
end