require_relative 'person'
require_relative 'hero'

jin = Person.new("Jin Sakai", 100, 50)
puts jin

khotun = Hero.new("Khotun Khan", 500, 50)
puts khotun

loop do

jin.attack(khotun)
puts khotun
break if khotun.dies?

khotun.d_attack(jin)
puts jin
break if jin.dies?

end