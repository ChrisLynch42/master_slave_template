class SpellsController < ApplicationController
  # GET /spells
  # GET /spells.json
  #
  def index
    @letters = Spell.select("substr(title,0,1) AS letter" )

    if params[:letter].nil?
      if @letters.nil? || @letters.length < 1
        params[:letter] = 'A'
      else
        params[:letter] = @letters[0].letter
      end
    end

    @spells = Spell.where("title like upper(:letter)",{:letter => params[:letter] + '%'})
    respond_to do | format |
      render_index_html(format, 'Spells')    
      format.json { render json: @spells }
    end
  end

  def list
    @spells = Spell.where("character_id=?", params[:character_id])

    respond_to do |format|
      format.html { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @spells }
    end
  end

  # GET /spells/1
  # GET /spells/1.json
  def show
    @spell = Spell.find(params[:id])
    respond_to do |format|
      show_html(format,@spell)
      format.json { render json: @spell }
    end
  end

  # GET /spells/new
  # GET /spells/new.json
  def new    
    @spell = Spell.new
    respond_to do |format|
      new_html(format, @spell)
      format.json { render json: @spell }
    end
  end

  # GET /spells/1/edit
  def edit
    @spell = Spell.find(params[:id])
    respond_to do |format|
      edit_html(format,@spell)
      format.json { render json: @spell }
    end
  end

  # POST /spells
  # POST /spells.json
  def create
    @spell = Spell.new(params[:spell])
    respond_to do |format|
      if @spell.save
        format.html { redirect_to @spell, notice: 'Spell was successfully created.' }
        format.json { render json: @spell, status: :created, location: @spell }
      else
        new_html(format, @spell)
        format.json { render json: @spell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spells/1
  # PUT /spells/1.json
  def update
    @spell = Spell.find(params[:id])

    respond_to do |format|
      if @spell.update_attributes(params[:spell])
        format.html { redirect_to @spell, notice: 'Spell was successfully updated.' }
        format.json { head :no_content }
      else
        edit_html(format,@spell)
        format.json { render json: @spell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spells/1
  # DELETE /spells/1.json
  def destroy
    @spell = Spell.find(params[:id])
    @spell.destroy

    respond_to do |format|
      format.html { redirect_to spells_url }
      format.json { head :no_content }
    end
  end

  protected
  def new_html(format, model)
    render_new_html(format, model, 'New Spell')
  end

  def edit_html(format, model)
    render_edit_html(format, model, 'Spell')
  end 

  def show_html(format, model)
    render_show_html(format, model, 'Spell')
  end  
end
