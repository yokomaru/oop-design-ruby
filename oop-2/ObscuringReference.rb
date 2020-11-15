class ObscuringReference
  attr_reader :data
  def initialize(data)
    @data = data
  end

  def diameters
    # 0ハリム、1はタイヤ
    data.collect {|cell|
      cell[0] + (cell[1] * 2) }
  end
end

@data = [[xx,xx],[yy,yy],[zz,zz]]
