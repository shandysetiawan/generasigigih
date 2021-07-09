require_relative 'person'
require_relative 'jin'
require_relative 'villain'

jin = Jin.new("Jin Sakai", 100, 50)
puts jin

sword_villain = SwordmanVillain.new("Mongol Swordman", 100, 50)
puts sword_villain

spear_villain = SpearmanVillain.new("Mongol Spearman", 120, 60)
puts spear_villain

archer_villain = ArcherVillain.new("Mongol Archer", 80, 40)
puts archer_villain

loop do

jin.deflect_attack(villain)
puts villain
break if villain.dies?

villain.attack(jin)
puts jin
break if jin.dies?

end