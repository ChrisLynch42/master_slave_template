class ApplicationController < ActionController::Base
  protect_from_forgery

  def set_view_index_variables(title)
    set_view_title(title)
    set_view_index_template_path()
    set_view_new_path()
  end

  def set_view_show_variables(model, title)
    set_view_model(model)
    set_view_title(title)
    set_view_back_path()
    set_view_show_template_path()
    set_view_edit_path(model)
  end


  def set_view_edit_variables(model, title)
    set_view_model(model)
    set_view_title(title)
    set_view_back_path()
    set_view_form_template_path()
  end


  def set_view_new_variables(model, title)
    set_view_model(model)
    set_view_title(title)
    set_view_back_path()
    set_view_form_template_path()
  end

  def set_view_edit_path(model)
    edit_function = 'edit_' + self.controller_name.singularize + '_path'
    @edit_path = send edit_function.to_sym, model
  end

  def set_view_new_path()
    edit_function = 'new_' + self.controller_name.singularize + '_path'
    @new_path = send edit_function.to_sym
  end
  

  def set_view_form_template_path
    @form_path = '/' + self.controller_name + '/form'
  end

  def set_view_index_template_path
    @index_template_path = '/' + self.controller_name + '/index'
  end

  def set_view_show_template_path
    @show_template_path = '/' + self.controller_name + '/show'
  end

  def set_view_model(model)
    @model = model
  end

  def set_view_title(title)
    @title = title
  end

  def set_view_back_path
    back_function = self.controller_name + '_path'
    @back_path = send back_function.to_sym
  end 

  def get_layout(request)
    if request.xhr?
      local_layout = 'sub_page_layout'
    else
      local_layout = 'application'
    end
  end

end
