require_relative 'person'

class Hero < Person
    def initialize(name, hitpoint, attack_damage,healpoints)
    super(name, hitpoint, attack_damage)
    @healpoints = 20
    end
    
    def d_attack(other_person,enemy)
        @num = rand(10)
        if @num <= 8
        puts "#{@name} deflects the attack"

        other_person.take_damage(@attack_damage)
        puts "#{@name} attacks #{enemy} with #{@attack_damage} damage"
        # else
        # other_person.take_damage(@attack_damage)
        # puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
        end
    end

    def heal(other_person,allies)
        other_person.recovery(@attack_damage)
        puts "#{@name} heals #{allies}, restoring #{@healpoints} hitpoints"
    end
end