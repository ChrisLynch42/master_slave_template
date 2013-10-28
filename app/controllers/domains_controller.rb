class DomainsController < ApplicationController
  # GET /domains
  # GET /domains.json
  def index
    @letters = Domain.select("substr(name,0,1) AS letter" )

    if params[:letter].nil?
      if @letters.nil? || @letters.length < 1
        params[:letter] = 'A'
      else
        params[:letter] = @letters[0].letter
      end
    end

    @domains = Domain.where("name like upper(:letter)",{:letter => params[:letter] + '%'})
    respond_to do |format|
      render_index_html(format, 'Domains')      
      format.json { render json: @domains }
    end
  end

  def list
    respond_to do |format|
      format.html { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @domains }
    end
  end

  # GET /domains/1
  # GET /domains/1.json
  def show
    @domain = Domain.find(params[:id])

    respond_to do |format|
      show_html(format,@domain)      
      format.json { render json: @domain }
    end
  end

  # GET /domains/new
  # GET /domains/new.json
  def new
    @domain = Domain.new
    respond_to do |format|
      new_html(format, @skill)
      format.json { render json: @domain }
    end
  end

  # GET /domains/1/edit
  def edit
    @domain = Domain.find(params[:id])
    respond_to do |format|
      edit_html(format,@domain)
      format.json { render json: @domain }      
    end
  end

  # POST /domains
  # POST /domains.json
  def create
    @domain = Domain.new(params[:domain])

    respond_to do |format|
      if @domain.save
        format.html { redirect_to @domain, notice: 'Domain was successfully created.' }
        format.json { render json: @domain, status: :created, location: @domain }
      else
        new_html(format, @domain)
        format.json { render json: @domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /domains/1
  # PUT /domains/1.json
  def update
    @domain = Domain.find(params[:id])

    respond_to do |format|
      if @domain.update_attributes(params[:domain])
        format.html { redirect_to @domain, notice: 'Domain was successfully updated.' }
        format.json { head :no_content }
      else
        edit_html(format,@domain)
        format.json { render json: @domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /domains/1
  # DELETE /domains/1.json
  def destroy
    @domain = Domain.find(params[:id])
    @domain.destroy

    respond_to do |format|
      format.html { redirect_to domains_url }
      format.json { head :no_content }
    end
  end


  protected
  def new_html(format, model)
    render_new_html(format, model, 'New Domain')
  end

  def edit_html(format, model)
    render_edit_html(format, model, 'Domain')
  end 

  def show_html(format, model)
    render_show_html(format, model, 'Domain')
  end 
  
end
