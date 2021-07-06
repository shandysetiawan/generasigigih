class Person
    attr_reader :name, :hitpoint, :attack_damage
    # attr_accessor :hitpoint

    def initialize(name, hitpoint, attack_damage)
    @name = name
    @hitpoint = hitpoint
    @attack_damage = attack_damage
    end

    def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
    end

    def attack(other_person)
        if other_person.name == "Jin Sakai" 
            @num = rand(10)
            if @num <= 8
            puts "#{other_person.name} deflects the attack"
            else
            other_person.take_damage(@attack_damage)
            puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
            end
        else 
            other_person.take_damage(@attack_damage)
            puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
        end
    end

    def take_damage(damage)
        @hitpoint -= damage
    end

    def dies?
        if @hitpoint <= 0
        puts "#{@name} dies"
        true
        end
    end
end