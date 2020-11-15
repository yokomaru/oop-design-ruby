class RevealingReferences
  attr_reader :wheel

  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.collect {|wheel|
      diameter(wheel)}
  end

  def diameter
    wheel.rim + (wheel.tire * 2)
  end

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.collect {|cell|
    Wheels.new(cell[0], cell[1])}
  end
end