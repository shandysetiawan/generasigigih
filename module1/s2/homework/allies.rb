require_relative 'person'
require_relative 'villain'

sword_villain = SwordmanVillain.new("Mongol Swordman", 100, 50)
puts sword_villain

spear_villain = SpearmanVillain.new("Mongol Spearman", 120, 60)
puts spear_villain

archer_villain = ArcherVillain.new("Mongol Archer", 80, 40)
puts archer_villain

class Yuna < Person
    @num = rand(10)
    if @num <= 5
        @rand_atk = rand(100)
            if @rand_atk <= 33
                other_person = sword_villain
                
            elsif @rand_atk >=34 && @rand_atk <=66
                other_person = spear_villain
            else
                other_person = archer_villain
            end 
        other_person.take_damage(@attack_damage)
        puts "#{@name} attacks #{enemy} with #{@attack_damage} damage"
    end
end

class Ishikawa < Person
    @num = rand(10)
    if @num <= 5
        @rand_atk = rand(100)
            if @rand_atk <= 33
                other_person = sword_villain
                
            elsif @rand_atk >=34 && @rand_atk <=66
                other_person = spear_villain
            else
                other_person = archer_villain
            end 
        other_person.take_damage(@attack_damage)
        puts "#{@name} attacks #{enemy} with #{@attack_damage} damage"
    end
end