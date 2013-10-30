class ApplicationController < ActionController::Base
  protect_from_forgery

  def set_view_index_variables(title,url_params=nil)
    set_view_title(title)
    set_view_index_template_path()
    set_view_new_path(url_params)
  end

  def set_view_show_variables(model, title,url_params=nil)
    set_view_model(model)
    set_view_title(title)
    set_view_back_path(url_params)
    set_view_show_template_path()
    set_view_edit_path(model,url_params)
  end


  def set_view_edit_variables(model, title,url_params=nil)
    set_view_model(model)
    set_view_title(title)
    set_view_back_path(url_params)
    set_view_form_template_path()
    set_view_show_path(model,url_params)
  end


  def set_view_new_variables(model, title, url_params=nil)
    set_view_model(model)
    set_view_title(title)
    set_view_back_path(url_params)
    set_view_form_template_path()
  end

  def set_view_edit_path(model,url_params=nil)
    edit_function = 'edit_' + self.controller_name.singularize + '_path'
    @edit_path = send edit_function.to_sym, model
    @edit_path = @edit_path + get_param_string(url_params)
  end

  def set_view_show_path(model,url_params=nil)
    edit_function = self.controller_name.singularize + '_path'
    @show_path = send edit_function.to_sym, model
    @show_path = @show_path + get_param_string(url_params)
  end

  def set_view_new_path(url_params=nil)
    edit_function = 'new_' + self.controller_name.singularize + '_path'
    @new_path = send edit_function.to_sym
    @new_path = @new_path + get_param_string(url_params)
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

  def set_view_back_path(url_params=nil)
    back_function = self.controller_name + '_path'
    @back_path = send back_function.to_sym
    @back_path = @back_path + get_param_string(url_params)
  end 

  def get_layout(request)
    if request.xhr?
      local_layout = 'sub_page_layout'
    else
      local_layout = 'application'
    end
  end

  def get_param_string(url_params)
    param_string = '?'
    if !url_params.nil? && url_params.class.to_s == 'Hash'
      url_params.each do | key, value |
        param_string = param_string + "#{key}=#{value}&"
      end
    end
    param_string
  end


  def render_new_html(format, model, title,url_params=nil)
    set_view_new_variables(model , title,url_params)
    format.html { render :template => '/layouts/new', :layout => get_layout(request) }  
  end

  def render_edit_html(format, model, title,url_params=nil)
    set_view_edit_variables(model , title,url_params)
    format.html { render :template => '/layouts/edit', :layout => get_layout(request) }  
  end  

  def render_show_html(format, model, title,url_params=nil)
    set_view_show_variables(model , title,url_params)
    format.html { render :template => '/layouts/show', :layout => get_layout(request) }  
  end 

   def render_index_html(format, title,url_params=nil)
    set_view_index_variables(title,url_params)
    format.html { render :template => '/layouts/index', :layout => get_layout(request) }  
  end 
  
end
