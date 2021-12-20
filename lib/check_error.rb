class CheckError
  def check_menu_user_value?(user_value)
    (1..6).include?(user_value.to_i) or user_value == 'q'
  end
end
