class ManeuversController < ApplicationController
  # GET /maneuvers
  # GET /maneuvers.json
  def index

    @maneuvers = Maneuver.where("character_id=?", params[:character_id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maneuvers }
    end
  end

  def list
    @maneuvers = Maneuver.where("character_id=?", params[:character_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maneuvers }
    end
  end

  # GET /maneuvers/1
  # GET /maneuvers/1.json
  def show
    @maneuver = Maneuver.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maneuver }
    end
  end

  # GET /maneuvers/new
  # GET /maneuvers/new.json
  def new
    @maneuver = Maneuver.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maneuver }
    end
  end

  # GET /maneuvers/1/edit
  def edit
    @maneuver = Maneuver.find(params[:id])
  end

  # POST /maneuvers
  # POST /maneuvers.json
  def create
    @maneuver = Maneuver.new(params[:maneuver])

    respond_to do |format|
      if @maneuver.save
        format.html { redirect_to @maneuver, notice: 'Maneuver was successfully created.' }
        format.json { render json: @maneuver, status: :created, location: @maneuver }
      else
        format.html { render action: "new" }
        format.json { render json: @maneuver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maneuvers/1
  # PUT /maneuvers/1.json
  def update
    @maneuver = Maneuver.find(params[:id])

    respond_to do |format|
      if @maneuver.update_attributes(params[:maneuver])
        format.html { redirect_to @maneuver, notice: 'Maneuver was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maneuver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maneuvers/1
  # DELETE /maneuvers/1.json
  def destroy
    @maneuver = Maneuver.find(params[:id])
    @maneuver.destroy

    respond_to do |format|
      format.html { redirect_to maneuvers_url }
      format.json { head :no_content }
    end
  end
end
