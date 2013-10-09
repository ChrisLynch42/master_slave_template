class RacialAttributesController < ApplicationController
  # GET /racial_attributes
  # GET /racial_attributes.json
  def index

    @racial_attributes = RacialAttribute.where("character_id=?",params[:character_id])
    respond_to do |format|
      format.html  { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @racial_attributes }
    end
  end

  # GET /racial_attributes
  # GET /racial_attributes.json
  def list
    @racial_attributes = RacialAttribute.where("character_id=?",params[:character_id])

    respond_to do |format|
      format.html { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @racial_attributes }
    end
  end

  # GET /racial_attributes/1
  # GET /racial_attributes/1.json
  def show
    @racial_attribute = RacialAttribute.find(params[:id])

    respond_to do |format|
      format.html  { render :layout => 'sub_page_layout' if request.xhr? }  # show.html.erb
      format.json { render json: @racial_attribute }
    end
  end

  # GET /racial_attributes/new
  # GET /racial_attributes/new.json
  def new
    @racial_attribute = RacialAttribute.new
    @racial_attribute.character_id = params[:character_id]
    respond_to do |format|
      format.html  { render :layout => 'sub_page_layout' if request.xhr? }  # new.html.erb
      format.json { render json: @racial_attribute }
    end
  end

  # GET /racial_attributes/1/edit
  def edit
    @racial_attribute = RacialAttribute.find(params[:id])
  end

  # POST /racial_attributes
  # POST /racial_attributes.json
  def create
    @racial_attribute = RacialAttribute.new(params[:racial_attribute])

    respond_to do |format|
      if @racial_attribute.save
        format.html { redirect_to @racial_attribute, notice: 'Racial attribute was successfully created.' }
        format.json { render json: @racial_attribute, status: :created, location: @racial_attribute }
      else
        format.html { render action: "new" }
        format.json { render json: @racial_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /racial_attributes/1
  # PUT /racial_attributes/1.json
  def update
    @racial_attribute = RacialAttribute.find(params[:id])

    respond_to do |format|
      if @racial_attribute.update_attributes(params[:racial_attribute])
        format.html { redirect_to @racial_attribute, notice: 'Racial attribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @racial_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /racial_attributes/1
  # DELETE /racial_attributes/1.json
  def destroy
    @racial_attribute = RacialAttribute.find(params[:id])
    @racial_attribute.destroy

    respond_to do |format|
      format.html { redirect_to racial_attributes_url(:character_id => params[:character_id]) }
      format.json { head :no_content }
    end
  end
end