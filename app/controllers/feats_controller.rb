class FeatsController < ApplicationController
  # GET /feats
  # GET /feats.json
  def index
    @letters = Feat.select("substr(title,0,1) AS letter" )

    if params[:letter].nil?
      if @letters.nil? || @letters.length < 1
        params[:letter] = 'A'
      else
        params[:letter] = @letters[0].letter
      end
    end
    @feats = Feat.where("title like upper(:letter)",{:letter => params[:letter] + '%'})
    respond_to do |format|
      render_index_html(format, 'Feats')
      format.json { render json: @feats }
    end
  end

  def list
    @feats = Feat.where("character_id=?", params[:character_id])

    respond_to do |format|
      format.html { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @feats }
    end
  end

  # GET /feats/1
  # GET /feats/1.json
  def show
    @feat = Feat.find(params[:id])

    respond_to do |format|      
      show_html(format, @feat)
      format.json { render json: @feat }
    end
  end

  # GET /feats/new
  # GET /feats/new.json
  def new
    @feat = Feat.new
    respond_to do |format|
      new_html(format, @feat)
      format.json { render json: @feat }
    end
  end

  # GET /feats/1/edit
  def edit
    @feat = Feat.find(params[:id])
    respond_to do |format|
      edit_html(format,@feat)
      format.json { render json: @feat }
    end    
  end

  # POST /feats
  # POST /feats.json
  def create
    @feat = Feat.new(params[:feat])

    respond_to do |format|
      if @feat.save
        format.html { redirect_to @feat, notice: 'Feat was successfully created.' }
        format.json { render json: @feat, status: :created, location: @feat }
      else
        new_html(format, @feat)
        format.json { render json: @feat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feats/1
  # PUT /feats/1.json
  def update
    @feat = Feat.find(params[:id])

    respond_to do |format|
      if @feat.update_attributes(params[:feat])
        format.html { redirect_to @feat, notice: 'Feat was successfully updated.' }
        format.json { head :no_content }
      else
        edit_html(format,@feat)
        format.json { render json: @feat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feats/1
  # DELETE /feats/1.json
  def destroy
    @feat = Feat.find(params[:id])
    @feat.destroy

    respond_to do |format|
      format.html { redirect_to feats_url }
      format.json { head :no_content }
    end
  end

  protected
  def new_html(format, model)
    render_new_html(format, model, 'New Feat')
  end

  def edit_html(format, model)
    render_edit_html(format, model, 'Feat')
  end 

   def show_html(format, model)
    render_show_html(format, model, 'Feat')
  end  
end
