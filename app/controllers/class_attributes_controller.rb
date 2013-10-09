class ClassAttributesController < ApplicationController
  # GET /class_attributes
  # GET /class_attributes.json
  def index

    @class_attributes = ClassAttribute.where("character_id=?", params[:character_id])
    respond_to do |format|
      format.html  { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @class_attributes }
    end
  end

  def list
    @class_attributes = ClassAttribute.where("character_id=?", params[:character_id])

    respond_to do |format|
      format.html { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @class_attributes }
    end
  end

  # GET /class_attributes/1
  # GET /class_attributes/1.json
  def show
    @class_attribute = ClassAttribute.find(params[:id])

    respond_to do |format|
      format.html  { render :layout => 'sub_page_layout' if request.xhr? }  # show.html.erb
      format.json { render json: @class_attribute }
    end
  end

  # GET /class_attributes/new
  # GET /class_attributes/new.json
  def new
    @class_attribute = ClassAttribute.new
    @class_attribute.character_id=params[:character_id]

    respond_to do |format|
      format.html  { render :layout => 'sub_page_layout' if request.xhr? }  # new.html.erb
      format.json { render json: @class_attribute }
    end
  end

  # GET /class_attributes/1/edit
  def edit
    @class_attribute = ClassAttribute.find(params[:id])
  end

  # POST /class_attributes
  # POST /class_attributes.json
  def create
    @class_attribute = ClassAttribute.new(params[:class_attribute])

    respond_to do |format|
      if @class_attribute.save
        format.html { redirect_to @class_attribute, notice: 'Class attribute was successfully created.' }
        format.json { render json: @class_attribute, status: :created, location: @class_attribute }
      else
        format.html { render action: "new" }
        format.json { render json: @class_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /class_attributes/1
  # PUT /class_attributes/1.json
  def update
    @class_attribute = ClassAttribute.find(params[:id])

    respond_to do |format|
      if @class_attribute.update_attributes(params[:class_attribute])
        format.html { redirect_to @class_attribute, notice: 'Class attribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @class_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_attributes/1
  # DELETE /class_attributes/1.json
  def destroy
    @class_attribute = ClassAttribute.find(params[:id])
    @class_attribute.destroy

    respond_to do |format|
      format.html { redirect_to class_attributes_url }
      format.json { head :no_content }
    end
  end
end