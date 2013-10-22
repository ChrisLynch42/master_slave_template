module ApplicationHelper

  def custom_form_render(form_path)
    String return_value = ""
    return_value = render form_path
    return_value = return_value + ' | '
  end


end
