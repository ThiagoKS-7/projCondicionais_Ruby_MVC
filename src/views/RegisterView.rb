class RegisterView
    def initialize register
        @register = register
    end

    """
        Exibe os dados de forma formatada
        @void
    """
    def display_results
        print "\n\n" + ("_" * 47) + "\n"
        print "|                                             |)\n"
        print "|   #{@register[:nome][0..20]}" + ( " " * (42 - Integer(@register[:nome][0..20].length))) + "|)\n"
        print "|                                             |)\n"
        print "|   * #{@register[:idade]};" + ( " " * (39 - Integer(String(@register[:idade]).length))) + "|)\n"
        print "|   * #{@register[:pais]};" + ( " " * (39 - Integer(@register[:pais].length))) + "|)\n"
        print "|   * #{@register[:cidade][0..20]};" + ( " " * (39 - Integer(@register[:cidade][0..20].length))) + "|)\n"
        print "|   * #{@register[:maioridade]};"+ ( " " * (39 - Integer(@register[:maioridade].length))) + "|)\n"
        print "|   * #{@register[:conhece]};" + ( " " * (39 - Integer(@register[:conhece].length))) + "|)\n"
        print "|                                             |)\n"
        print "|                                             |)\n"
        print "|_____________________________________________|)\n"

    end
end