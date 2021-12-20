require './lib/check_error'

class IOAdapter < CheckError
  def render_menu
    puts "Выберите: \n" \
         "\t1 - Цельсий в Кельвин\n" \
         "\t2 - Цельсий в Фаренгейт\n" \
         "\t3 - Кельвин в Цельсий\n" \
         "\t4 - Кельвин в Фаренгейт\n" \
         "\t5 - Фаренгейт в Цельсий\n" \
         "\t6 - Фаренгейт в Кельвин\n" \
         "Введите 'q' для выхода."
  end

  def render_value
    puts "Введите 'q' для выхода."
    puts 'Введите значение температуры:'
  end

  def user_value
    gets.to_s.chomp
  end

  def convert_choose
    loop do
      render_menu
      choose = user_value
      return choose if check_menu_user_value?(choose)

      puts 'Неправильный ввод. Повторите попытку.'
    end
  end
end
