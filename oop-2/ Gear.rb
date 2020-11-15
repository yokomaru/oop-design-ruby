chainring = 52
cog = 11
ratio = chainring/cog.to_f
puts ratio

chainring = 30
cog = 27
ratio = chainring/cog.to_f
puts ratio


class Gear
  attr_reader :chainring, :cog
  def initialize(chainring, cog)
    @chainring= chainring
    @cog = cog
  end

  def ratio
    chainring / cog.to_f
  end
end

Gear.new(32, 45)

# irb(main):022:0> g = Gear.new(32, 45)
# => #<Gear:0x00007fa9b60ecb28 @chainring=32, @cog=45>
# irb(main):023:0> g.chainring
# => 32
# irb(main):024:0> g.cog
# => 45
# irb(main):025:0> g.ratio
# => 0.7111111111111111

class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring= chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def geer_inches
    ration * (rim +(tire * 2))
  end
end

Gear.new(32, 45, 1, 5)

# irb(main):045:0> Gear.new(32, 45, 1, 5)
# => #<Gear:0x00007fa9b68859e8 @chainring=32, @cog=45, @rim=1, @tire=5>

Gear.new(32, 45)
ArgumentError (wrong number of arguments (given 2, expected 4))

class Gear
  attr_reader :chainring, :cog
  def initialize(chainring, cog)
    @chainring= chainring
    @cog = cog
  end

  def ratio
    @chainring / @cog.to_f <-X
  end
end

attr_reader :cog

def cog
  @cog
end

def cog
  @cog * aaa
end

def cog
  @cog * foo? ? 111:111
end


class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring= chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def geer_inches
    ration * diameter
  end

  def dirmeter
    rim +(tire * 2)
  end
end

class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring, cog, wheel=nil)
    @chainring= chainring
    @cog = cog
    @wheel = wheel
  end

  def gear_inches
    ration * wheel.diameter
  end

  def ratio
    chainring / cog.to_f
  end
end

class Wheel
  attr_reader :rim, :tire
  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  def cicumference
    diameter * Math::PI
  end
end

@wheel = Wheel.new(21, 1.5)
puts @wheel.cicumference
puts Gear.new(52, 11, @wheel).gear_inches
puts Gear.new(52, 11).ratio