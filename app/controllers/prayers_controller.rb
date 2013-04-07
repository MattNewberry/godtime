class PrayersController < ApplicationController
  before_action :set_prayer, only: [:show, :edit, :update, :destroy]

  # GET /prayers
  # GET /prayers.json
  def index
    @prayers = Prayer.all
  end

  # GET /prayers/1
  # GET /prayers/1.json
  def show
  end

  # GET /prayers/new
  def new
    @prayer = Prayer.new
  end

  # GET /prayers/1/edit
  def edit
  end

  # POST /prayers
  # POST /prayers.json
  def create
    p = prayer_params
    p[:created_by] = User.find(params[:prayer][:created_by])
    p[:created_for] = User.find(params[:prayer][:created_for])
    @prayer = Prayer.new(p)

    respond_to do |format|
      if @prayer.save
        format.html { redirect_to @prayer, notice: 'Prayer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prayer }
      else
        format.html { render action: 'new' }
        format.json { render json: @prayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prayers/1
  # PATCH/PUT /prayers/1.json
  def update
    p = prayer_params
    p[:created_by] = User.find(params[:prayer][:created_by])
    p[:created_for] = User.find(params[:prayer][:created_for])
    
    respond_to do |format|
      if @prayer.update(p)
        format.html { redirect_to @prayer, notice: 'Prayer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @prayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prayers/1
  # DELETE /prayers/1.json
  def destroy
    @prayer.destroy
    respond_to do |format|
      format.html { redirect_to prayers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prayer
      @prayer = Prayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prayer_params
      params.require(:prayer).permit(:text, :created_by, :created_for, :verse)
    end
end
