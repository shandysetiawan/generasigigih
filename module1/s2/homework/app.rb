require_relative 'person'
require_relative 'hero'
require_relative 'villain'
require_relative 'allies'

jin = Hero.new("Jin Sakai", 100, 50, 20)
puts jin

yuna = Yuna.new("Yuna", 90, 45)
puts yuna

ishikawa = Ishikawa.new("Sensei Ishikawa", 80, 60)
puts ishikawa

puts

sword_villain = SwordmanVillain.new("Mongol Swordman", 100, 50)
puts sword_villain

spear_villain = SpearmanVillain.new("Mongol Spearman", 120, 60)
puts spear_villain

archer_villain = ArcherVillain.new("Mongol Archer", 80, 40)
puts archer_villain

puts

puts "As Jin Sakai, what do you want to do this turn?"
puts "1) Attack an enemy"
puts "2) Heal an ally"
cmd = gets.chomp

if cmd == "1"
    puts "Which enemy you want to attack"
    puts "1) Mongol Archer"
    puts "2) Mongol Swordman"
    puts "3) Mongol Spearman"
    cmd_attack= gets.chomp
    @enemy = ""
    @enemyname=""
    if(cmd_attack== "1")
        @enemy=archer_villain
        @enemyname="Mongol Archer"
    elsif(cmd_attack == "2")
        @enemy=sword_villain
        @enemyname="Mongol Swordman"
    else
        @enemy=spear_villain
        @enemyname="Mongol Spearman"
    end
    jin.d_attack(@enemy,@enemyname)
elsif cmd == "2"
    puts "Which ally you want to heal?"
    puts "1) Yuna"
    puts "2) Sensei Ishikawa"
    cmd_heal= gets.chomp
    
    if cmd_heal == "1"
        @allies= yuna
        @alliesname="Yuna"
    elsif cmd_heal == "2"
        @allies= ishikawa
        @alliesname = "Sensei Ishikawa"
    end
    jin.heal(@allies,@alliesname)

else
    puts cmd + "wrong number"
end


# loop do

# jin.d_attack(sword_villain)
# puts sword_villain
# break if sword_villain.dies?

# sword_villain.attack(jin)
# puts jin
# break if jin.dies?

# end