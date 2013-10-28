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
    respond_to do |format|
      render_index_html(format, 'Skills')
      format.json { render json: @skills }
    end
  end

  def list

    respond_to do |format|
      format.html { render :layout => 'sub_page_layout' if request.xhr? }# index.html.erb
      format.json { render json: @skills }
    end
  end

  # GET /skills/1
  # GET /skills/1.json
  def show
    @skill = Skill.find(params[:id])

    respond_to do |format|
      show_html(format,@skill)
      format.json { render json: @skill }
    end
  end


  # GET /skills/new
  # GET /skills/new.json
  def new
    @skill = Skill.new
    respond_to do |format|
      new_html(format, @skill)
      format.json { render json: @skill }
    end
  end

  # GET /skills/1/edit
  def edit
    @skill = Skill.find(params[:id])
    respond_to do |format|
      edit_html(format,@skill)
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
        new_html(format, @skill)
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
        edit_html(format,@skill)
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

  protected
  def new_html(format, model)
    render_new_html(format, model, 'New Skill')
  end

  def edit_html(format, model)
    render_edit_html(format, model, 'Skill')
  end 

  def show_html(format, model)
    render_show_html(format, model, 'Skill')
  end 
end
