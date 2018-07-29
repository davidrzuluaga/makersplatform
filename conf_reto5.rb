module Programa

    class Preguntas

        attr_reader :directorio_preguntas
        attr_reader :definiciones_respuestas

        def initialize(archivopreguntas)
            
            @archivopreguntas = archivopreguntas
            @directorio_preguntas = {}
            @definiciones_respuestas = {}
            importar_preguntas
        end

        def importar_preguntas
            
            array_preguntas = IO.readlines(@archivopreguntas).each { |elemento| elemento.chop! }
            
            array_preguntas.each do |element|
                pregunta = element.split(";")
                @directorio_preguntas[pregunta[0].to_sym] = pregunta[1]
                @definiciones_respuestas[pregunta[1].to_sym] = pregunta[2]
            end
            
        end

        def definicion_respuestas
            @definiciones_respuestas
        end
        
    end
end
