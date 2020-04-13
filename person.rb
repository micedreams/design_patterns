
class Person
    attr_accessor :name , :age
    def initialize(name,age=1)
        @name = name
        @age = age
      end
    
      def <=>(other)
        other.age <=> @age
      end
end


person1 = Person.new("aku", 24)
person2 = Person.new("steampunk", 20)
person3 = Person.new("goth", 40)
person4 = Person.new("emo", 12)
person5 = Person.new("cosplay", 11)
 
persons =[person1,person2,person3,person4,person5 ]
persons.sort!
persons.each do|person|
    
     puts person.name
     

    end









