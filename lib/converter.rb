class Converter
  def initialize(convert_choose, value)
    @convert_choose = convert_choose.to_i
    @value = value.to_f
  end

  def convert_part1
    case @convert_choose
    when 1
      @value + 273.15
    when 2
      (@value * (9.0 / 5.0)) + 32
    when 3
      @value - 273.15
    end
  end

  def convert_part2
    case @convert_choose
    when 4
      ((@value - 273.15) * (9.0 / 5.0)) + 32
    when 5
      (@value - 32) * (5.0 / 9.0)
    when 6
      ((@value - 32) * (5.0 / 9.0)) + 273.15
    end
  end

  def convert
    return convert_part1.round(3) if (1..3).include?(@convert_choose)
    return convert_part2.round(3) if (4..6).include?(@convert_choose)

    nil
  end
end
