class ClassificationsController < ApplicationController
  # GET /classifications
  # GET /classifications.json
  def index
    @letters = Classification.select("substr(title,0,1) AS letter" )

    if params[:letter].nil?
      if @letters.nil? || @letters.length < 1
        params[:letter] = 'A'
      else
        params[:letter] = @letters[0].letter
      end
    end

    @classifications = Classification.where("title like upper(:letter)",{:letter => params[:letter] + '%'})
    respond_to do |format|
      render_index_html(format, 'Classes')      
      format.json { render json: @classifications }
    end
  end

  def list
    respond_to do |format|
      format.html { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @classifications }
    end
  end

  # GET /classifications/1
  # GET /classifications/1.json
  def show
    @classification = Classification.find(params[:id])

    respond_to do |format|
      show_html(format,@classification)      
      format.json { render json: @classification }
    end
  end

  # GET /classifications/new
  # GET /classifications/new.json
  def new
    @classification = Classification.new
    respond_to do |format|
      new_html(format, @skill)
      format.json { render json: @classification }
    end
  end

  # GET /classifications/1/edit
  def edit
    @classification = Classification.find(params[:id])
    respond_to do |format|
      edit_html(format,@classification)
      format.json { render json: @classification }      
    end
  end

  # POST /classifications
  # POST /classifications.json
  def create
    @classification = Classification.new(params[:classification])

    respond_to do |format|
      if @classification.save
        format.html { redirect_to @classification, notice: 'Classification was successfully created.' }
        format.json { render json: @classification, status: :created, location: @classification }
      else
        new_html(format, @classification)
        format.json { render json: @classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /classifications/1
  # PUT /classifications/1.json
  def update
    @classification = Classification.find(params[:id])

    respond_to do |format|
      if @classification.update_attributes(params[:classification])
        format.html { redirect_to @classification, notice: 'Classification was successfully updated.' }
        format.json { head :no_content }
      else
        edit_html(format,@classification)
        format.json { render json: @classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classifications/1
  # DELETE /classifications/1.json
  def destroy
    @classification = Classification.find(params[:id])
    @classification.destroy

    respond_to do |format|
      format.html { redirect_to classifications_url }
      format.json { head :no_content }
    end
  end


  protected
  def new_html(format, model)
    render_new_html(format, model, 'New Class')
  end

  def edit_html(format, model)
    render_edit_html(format, model, 'Class')
  end 

  def show_html(format, model)
    render_show_html(format, model, 'Class')
  end 
  
end
