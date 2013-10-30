class EquipmentsController < ApplicationController
  # GET /equipments
  # GET /equipments.json
  def index
    @letters = Equipment.select("substr(title,0,1) AS letter" )

    if params[:letter].nil?
      if @letters.nil? || @letters.length < 1
        params[:letter] = 'A'
      else
        params[:letter] = @letters[0].letter
      end
    end

    @equipments = Equipment.where("title like upper(:letter)",{:letter => params[:letter] + '%'})
    respond_to do |format|
      render_index_html(format, 'Equipments')      
      format.json { render json: @equipments }
    end
  end

  def list
    respond_to do |format|
      format.html { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @equipments }
    end
  end

  # GET /equipments/1
  # GET /equipments/1.json
  def show
    @equipment = Equipment.find(params[:id])

    respond_to do |format|
      show_html(format,@equipment)      
      format.json { render json: @equipment }
    end
  end

  # GET /equipments/new
  # GET /equipments/new.json
  def new
    @equipment = Equipment.new
    respond_to do |format|
      new_html(format, @skill)
      format.json { render json: @equipment }
    end
  end

  # GET /equipments/1/edit
  def edit
    @equipment = Equipment.find(params[:id])
    respond_to do |format|
      edit_html(format,@equipment)
      format.json { render json: @equipment }      
    end
  end

  # POST /equipments
  # POST /equipments.json
  def create
    @equipment = Equipment.new(params[:equipment])

    respond_to do |format|
      if @equipment.save
        format.html { redirect_to @equipment, notice: 'Equipment was successfully created.' }
        format.json { render json: @equipment, status: :created, location: @equipment }
      else
        new_html(format, @equipment)
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipments/1
  # PUT /equipments/1.json
  def update
    @equipment = Equipment.find(params[:id])

    respond_to do |format|
      if @equipment.update_attributes(params[:equipment])
        format.html { redirect_to @equipment, notice: 'Equipment was successfully updated.' }
        format.json { head :no_content }
      else
        edit_html(format,@equipment)
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipments/1
  # DELETE /equipments/1.json
  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy

    respond_to do |format|
      format.html { redirect_to equipments_url }
      format.json { head :no_content }
    end
  end


  protected
  def new_html(format, model)
    render_new_html(format, model, 'New Equipment')
  end

  def edit_html(format, model)
    render_edit_html(format, model, 'Equipment')
  end 

  def show_html(format, model)
    render_show_html(format, model, 'Equipment')
  end 
  
end
