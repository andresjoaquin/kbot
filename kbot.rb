class KBot
    def initialize(lang="es")
        @lang = lang
        @saludo_temprano= {"es"=> 'Buen día', "en"=> 'Good morning'}
        @saludo_tarde= {"es"=> 'Buenas tardes', "en"=> 'Good afternoon'}
        @saludo_noche= {"es"=> 'Buenas noches', "en"=> 'Good evening'}
    end

    def saludo(nombre,hora = Time.now.hour)

            case hora
            when (0..10) then
                 "#{@saludo_temprano[@lang]} #{nombre}"
            when (11..18) then 
                 "#{@saludo_tarde[@lang]} #{nombre}"
            when (19..23) then
                 "#{@saludo_noche[@lang]} #{nombre}"
            end
    end
end







