require_relative 'person'

jin = Person.new("Jin Sakai", 100, 50)
puts jin

khotun = Person.new("Khotun Khan", 500, 50)
puts khotun

loop do

jin.attack(khotun)
puts khotun
break if khotun.dies?

khotun.attack(jin)
puts jin
break if jin.dies?

end