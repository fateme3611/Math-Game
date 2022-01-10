class Player
    attr_reader :name
    attr_reader :maxLifeCount

    def initialize(name)
        @name = name
        @maxLifeCount = 3
    end

    def decreaseLife()
        @maxLifeCount = @maxLifeCount - 1;
    end
end
