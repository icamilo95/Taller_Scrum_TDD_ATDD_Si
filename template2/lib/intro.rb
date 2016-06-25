#esto es un comentario
class Saludador

  def initialize (idioma = "es")
    @idioma = idioma
  end

  def saludar nombre
    if(@idioma == "es")
       " #{convertidor("es")} #{nombre}"
    elsif @idioma == "en"
       " #{convertidor("en")}  #{nombre}"
    elsif @idioma == "po"
      " #{convertidor("po")}   #{nombre}"
    end
  end

    def convertidor idioma
      hora = Time.new.hour.to_i

       if  hora < 12 && idioma == "es"
         return "buenos dias"
       elsif hora < 17
          return "buenas tardes"
        else
          return "buenas noches"
       end
    end




end

#seniorSaludador = Saludador.new "en"
#p seniorSaludador.saludar "Alex"
