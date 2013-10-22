class SpellsController < ApplicationController
  # GET /spells
  # GET /spells.json
  #
  def index
    @letters = Skill.select("substr(title,0,1) AS letter" )

    if params[:letter].nil?
      if @letters.nil? || @letters.length < 1
        params[:letter] = 'A'
      else
        params[:letter] = @letters[0].letter
      end
    end

    @spells = Spell.where("title like upper(:letter)",{:letter => params[:letter] + '%'})
    respond_to do |format|
      format.html  { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
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
      format.html  { render :layout => 'sub_page_layout' if request.xhr? }  # show.html.erb
      format.json { render json: @spell }
    end
  end

  # GET /spells/new
  # GET /spells/new.json
  def new
    @viewHolder='#spellHolder'
    
    @spell = Spell.new
    @spell.character_id=params[:character_id]

    respond_to do |format|
      format.html  { render :layout => 'sub_page_layout' if request.xhr? }  # new.html.erb
      format.json { render json: @spell }
    end
  end

  # GET /spells/1/edit
  def edit
    @viewHolder='#spellHolder'    
    @spell = Spell.find(params[:id])
    respond_to do |format|
      format.html  { render :layout => 'sub_page_layout' if request.xhr? }  # new.html.erb
      format.json { render json: @spell }
    end
  end

  # POST /spells
  # POST /spells.json
  def create
    @spell = Spell.new(params[:spell])
    params[:character_id]=@spell.character_id
    respond_to do |format|
      if @spell.save
        format.html do 
          flash[:notice] = 'Spell was successfully created.'
          index
        end
        format.json { render json: @spell, status: :created, location: @spell }
      else
        format.html { render action: "new" }
        format.json { render json: @spell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spells/1
  # PUT /spells/1.json
  def update
    @spell = Spell.find(params[:id])
    params[:character_id]=@spell.character_id

    respond_to do |format|
      if @spell.update_attributes(params[:spell])
        format.html do 
          flash[:notice] = 'Spell was successfully updated.'
          index
        end
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
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
      format.html { index }
      format.json { head :no_content }
    end
  end
end
