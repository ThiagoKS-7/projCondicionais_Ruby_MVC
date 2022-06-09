load './src/controllers/ValidationController.rb'

class RegisterController
    def initialize(register)
        @register = register
    end
    """
    Mostra nome a não ser q esteja vazio ou nulo
    @void
    """
    def show_name
        print @register[:nome] unless (@register[:nome].nil? or @register[:nome].empty?)
    end

    """
        mostra se conhece a cidade a não ser q esteja vazia
        @void
    """
    def show_city
        unless (@register[:cidade].nil? or @register[:cidade].empty?)
            validate = @register[:cidade].upcase == "SAPUCAIA" ? "Conheço" : "Não conheço"
            @register[:conhece] = validate
            print(validate) 
        end
    end

    """
        mostra todos os resultados
        @void
    """
    def raw_results
        if @register[:nome].nil? or @register[:nome].empty?
            print "\nName: [REDACTED]\n"
        else
            print "\nNome: "
            show_name
            print "\n"
        end
        vc = ValidationController.new(@register)
        print "País: #{@register[:pais]}\n"
        (@register[:pais].upcase == "BRAZIL" || @register[:pais].upcase == "BRASIL") ? vc.validate_age : vc.validate_foreign_age
        print "Cidade: #{@register[:cidade]}\n"
        show_city
    end


    """
    Faz os inputs pro usuario digitar
    @void
    """
    def request_data
        print "\nDigite a seu nome: "
        @register[:nome] = gets.chomp()
        print "Digite a sua idade: "
        idade = gets.chomp()
        @register[:idade] = Integer(idade)
        print "Digite o seu país: "
        @register[:pais] = gets.chomp()
        print "Digite a sua cidade: "
        @register[:cidade] = gets.chomp()
        return @register
    end
end    