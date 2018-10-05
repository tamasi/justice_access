class CourtsController < ApplicationController
  before_action :set_court, only: [:show, :edit, :destroy]
  
  def index
    @courts = Court.all
  end

  def show
    
  end

  def new
    @court = Court.new
  end

  def edit
  end

  def create
    @court = Court.new(court_params)

    respond_to do |format|
      if @court.save
        format.html { redirect_to @court, notice: 'Court was successfully created.' }
        format.json { render :show, status: :created, location: @court }
      else
        format.html { render :new }
        format.json { render json: @court.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @court.update(court_params)
        format.html { redirect_to @court, notice: 'court was successfully updated.' }
        format.json { render :show, status: :ok, location: @court }
      else
        format.html { render :edit }
        format.json { render json: @court.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @court.destroy
    respond_to do |format|
      format.html { redirect_to courts_url, notice: 'court was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_court
      @court = Court.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def court_params
      params.require(:court).permit(:name, :jurisdiction_id)
    end

end