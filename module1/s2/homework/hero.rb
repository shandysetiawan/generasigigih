require_relative 'person'

class Hero < Person
    def initialize(name, hitpoint, attack_damage,healpoints)
    super(name, hitpoint, attack_damage)
    @healpoints = healpoints
    end
    
    def d_attack(other_person)
        @num = rand(10)
        if @num <= 8
        puts "#{@name} deflects the attack"
        other_person.take_damage(@attack_damage)
        puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
        # else
        # other_person.take_damage(@attack_damage)
        # puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
        end
    end

    def heal(allies)
        "#{@name} heals #{allies}, restoring #{healpoints}"
    end
end