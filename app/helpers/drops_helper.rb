module DropsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_drops_path
    elsif action_name == 'edit'
      drop_path
    end
  end
end
