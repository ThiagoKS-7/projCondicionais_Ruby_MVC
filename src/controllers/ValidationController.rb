class ValidationController
    def initialize register
        @register = register
    end
    """
        valida se o usuario brasileiro é maior de idade
    """
    def validate_age
        if (@register[:idade].class == Integer)
            if (@register[:idade] >= 18)
                @register[:maioridade] = "É maior de idade"
                print "É maior de idade\n"
            elsif (@register[:idade] >= 11 && @register[:idade]  < 15)
                @register[:maioridade] = "Pré adolescência - não maioridade"
                print "Pre adolescência - não maioridade\n"
            else
                @register[:maioridade] = "Não é maior de idade"
                print "Não é maior de idade\n"
            end
        else 
            print "Erro - o programa só aceita valores inteiros.\n"
        end
    end

    """
        equivale ao switch case;
        imprime uma das opções (usuario estrangeiro)
    """
    def validate_foreign_age
        case @register[:idade]
        when 0 .. 2
           @register[:maioridade] = "baby"
           puts "baby"
        when 3 .. 6
           @register[:maioridade] = "little child"
           puts "little child"
        when 7 .. 12
           @register[:maioridade] = "child"   
           puts "child"
        when 13 .. 18
           @register[:maioridade] = "youth"  
           puts "youth"
        else
           @register[:maioridade] = "adult" 
           puts "adult"
        end
    end
end