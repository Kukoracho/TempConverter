require './lib/converter'
require './lib/io_adapter'

class App
  def run
    io = IOAdapter.new
    loop do
      io.render_value
      value = io.user_value
      return if value == 'q'

      convert_choose = io.convert_choose
      return if convert_choose == 'q'

      puts Converter.new(convert_choose, value).convert
    end
  end
end
