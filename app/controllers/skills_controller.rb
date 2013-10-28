class SkillsController < ApplicationController
  # GET /skills
  # GET /skills.json
  def index
    @letters = Skill.select("substr(title,0,1) AS letter" )

    if params[:letter].nil?
      if @letters.nil? || @letters.length < 1
        params[:letter] = 'A'
      else
        params[:letter] = @letters[0].letter
      end
    end

    @skills = Skill.where("title like upper(:letter)",{:letter => params[:letter] + '%'})
    set_view_index_variables('Skills')    
    respond_to do |format|
      format.html { render :template => '/layouts/index', :layout => get_layout(request) }
      format.json { render json: @skills }
    end
  end

  def list
    @skills = Skill.where("character_id=?",params[:character_id])

    respond_to do |format|
      format.html { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @skills }
    end
  end

  # GET /skills/1
  # GET /skills/1.json
  def show
    @skill = Skill.find(params[:id])
    title = 'Feat:  '
    unless @skill.nil? || @skill.title.nil?
      title = title + @skill.title
    end
    set_view_show_variables(@skill , title )

    respond_to do |format|
      format.html { render :template => '/layouts/show', :layout => get_layout(request) }
      format.json { render json: @skill }
    end
  end

  # GET /skills/new
  # GET /skills/new.json
  def new
    @skill = Skill.new
    set_view_new_variables(@feat , 'New Feat')
    respond_to do |format|
      format.html { render :template => '/layouts/new', :layout => get_layout(request) }
      format.json { render json: @skill }
    end
  end

  # GET /skills/1/edit
  def edit
    @skill = Skill.find(params[:id])
    set_view_edit_variables(@feat, 'Edit Skill:')
    respond_to do |format|
      format.html { render :template => '/layouts/edit', :layout => get_layout(request) }
      format.json { render json: @skill }      
    end
  end

  # POST /skills
  # POST /skills.json
  def create
    @skill = Skill.new(params[:skill])

    respond_to do |format|
      if @skill.save
        format.html { redirect_to @skill, notice: 'Skill was successfully created.' }
        format.json { render json: @skill, status: :created, location: @skill }
      else
        format.html { render action: "new" }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /skills/1
  # PUT /skills/1.json
  def update
    @skill = Skill.find(params[:id])

    respond_to do |format|
      if @skill.update_attributes(params[:skill])
        format.html { redirect_to @skill, notice: 'Skill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.json
  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy

    respond_to do |format|
      format.html { redirect_to skills_url }
      format.json { head :no_content }
    end
  end
end
