require_relative 'person'

class Jin < Person
    def deflect_attack
        @num = rand(10)
        if @num <= 8
        puts "#{other_person.name} deflectssss the attack"
        else
        other_person.take_damage(@attack_damage)
        puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
        end
    end
end