module ApplicationHelper

  def custom_form_render(form_path)
    String return_value = ""
    return_value = render form_path
    return_value = return_value + ' | '
  end

  def set_action_variables(title,form_path,back_path)
    @title = 'New Feat'
    @form_path = '/feats/form'
    @back_path = feats_path()
  end

end
