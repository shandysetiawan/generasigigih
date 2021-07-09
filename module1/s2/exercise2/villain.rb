require_relative 'person'

class Villain < Person
    def initialize(flee_chance)
    super(name, hitpoint, attack_damage)
    @flee_chance = 0.5
    end
end

class SwormanVillain < Villain
    super(name, hitpoint, attack_damage,flee_chance)
end

class ArcherVillain < Villain
    super(name, hitpoint, attack_damage,flee_chance)
end

class SpearmanVillain < Villain
    super(name, hitpoint, attack_damage,flee_chance)
end
