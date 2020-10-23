require './kbot'

describe KBot do
   it "Saludar en idioma default a las 10 de la mañana" do
       kbot= KBot.new
       expect(kbot.saludo('Andres',10)).to match /Buen día Andres/
   end
   it "Saludar en ingles a las 10 de la mañana" do
       kbot= KBot.new "en"
       expect(kbot.saludo('Andres',10)).to match /Good morning Andres/
   end
end


##puts "Saludar en idioma default a las 10 de la mañana"
##kbot= KBot.new
##puts (kbot.saludo('Andres',10)=="Buen día Andres")
##puts "Saludar en españols a las 15 de la tarde"
##kbot= KBot.new "es"
##puts (kbot.saludo('Andres',15)=="Buenas tardes Andres")