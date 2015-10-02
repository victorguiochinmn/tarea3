class Nodo
    attr_accessor :data, :sig
    def initialize data,sig=nil
        @data = data
        @sig=sig
    end
end

class Lista
    def initialize data
       @header = Nodo.new(data,nil)
    end

    def add2(d)
        current = @header
        while current.sig != nil
            current = current.sig
        end 
        current.sig = Nodo.new(d,nil)
    end
    
    def del(d)
    temp=@header
    if (@header != nil)
        temp = @header
        if temp.data == d
           @header = @header.sig
        else
            temp= @header
            while (temp != nil) && (temp.sig != nil) && ((temp.sig).data != d)
                temp = temp.sig
            end
            if (temp!= nil) && (temp.sig != nil)
                temp.sig = (temp.sig).sig
            end
        end
    end
    end
    
    def display2
         current = @header
        full_list = [] 
        while current.sig != nil 
            full_list += [current.data.to_s]
            current = current.sig
        end
        full_list += [current.data.to_s]
        puts full_list.join(",")
    end
end
puts "Add values until you write -1"
var = gets.chomp
limit = "-1"
test2 = Lista.new(var)

while var != limit
    var = gets.chomp
    if var != limit
        test2.add2(var)
    end
end
test2.display2
