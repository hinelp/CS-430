module Markup
    def Markup.compose_tag(element, hash, symbol)
        tag = "<#{element}"
        hash.each do |key, value|
            tag += " #{key}=\"#{value}\""
        end
        if symbol == :empty
            tag += ">"
        elsif symbol == :sandwich
            tag += "></#{element}>"
        elsif symbol == :selfclose
            tag += " />"
        end
        return tag
    end  
end