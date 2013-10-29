class RacesController < ApplicationController
  # GET /races
  # GET /races.json
  def index
    @letters = Race.select("substr(title,0,1) AS letter" )

    if params[:letter].nil?
      if @letters.nil? || @letters.length < 1
        params[:letter] = 'A'
      else
        params[:letter] = @letters[0].letter
      end
    end

    @races = Race.where("title like upper(:letter)",{:letter => params[:letter] + '%'})
    respond_to do |format|
      render_index_html(format, 'Races')
      format.json { render json: @races }
    end
  end

  def list

    respond_to do |format|
      format.html { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @races }
    end
  end

  # GET /races/1
  # GET /races/1.json
  def show
    @race = Race.find(params[:id])

    respond_to do |format|
      show_html(format,@race)
      format.json { render json: @race }
    end
  end


  # GET /races/new
  # GET /races/new.json
  def new
    @race = Race.new
    respond_to do |format|
      new_html(format, @race)
      format.json { render json: @race }
    end
  end

  # GET /races/1/edit
  def edit
    @race = Race.find(params[:id])
    respond_to do |format|
      edit_html(format,@race)
      format.json { render json: @race }      
    end
  end

  # POST /races
  # POST /races.json
  def create
    @race = Race.new(params[:race])

    respond_to do |format|
      if @race.save
        format.html { redirect_to @race, notice: 'Race was successfully created.' }
        format.json { render json: @race, status: :created, location: @race }
      else
        new_html(format, @race)
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /races/1
  # PUT /races/1.json
  def update
    @race = Race.find(params[:id])

    respond_to do |format|
      if @race.update_attributes(params[:race])
        format.html { redirect_to @race, notice: 'Race was successfully updated.' }
        format.json { head :no_content }
      else
        edit_html(format,@race)
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /races/1
  # DELETE /races/1.json
  def destroy
    @race = Race.find(params[:id])
    @race.destroy

    respond_to do |format|
      format.html { redirect_to races_url }
      format.json { head :no_content }
    end
  end

  protected
  def new_html(format, model)
    render_new_html(format, model, 'New Race')
  end

  def edit_html(format, model)
    render_edit_html(format, model, 'Race')
  end 

  def show_html(format, model)
    render_show_html(format, model, 'Race')
  end 
end
