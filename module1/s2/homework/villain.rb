require_relative 'person'

class Villain < Person
    def initialize(name, hitpoint, attack_damage)
    super(name, hitpoint, attack_damage)
    end
end

class SwordmanVillain < Villain
    def attack(other_person)
        puts "#{@name} slashes #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end

class ArcherVillain < Villain
    def attack(other_person)
        puts "#{@name} shoots an arrows at #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end

class SpearmanVillain < Villain
    def attack(other_person)
        puts "#{@name} thrusts #{other_person.name} with #{@attack_damage} damage"
        other_person.take_damage(@attack_damage)
    end
end
