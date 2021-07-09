require_relative 'person'

class Hero < Person
    def initialize(name, hitpoint, attack_damage)
    super(name, hitpoint, attack_damage)
    end
    
    def d_attack(other_person)
        @num = rand(10)
        if @num <= 8
        puts "#{other_person.name} deflects the attack"
        else
        other_person.take_damage(@attack_damage)
        puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
        end
    end
end