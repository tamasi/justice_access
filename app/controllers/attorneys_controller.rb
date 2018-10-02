class AttorneysController < ApplicationController
  before_action :set_attorney, only: [:show, :edit, :update, :destroy]

  # GET /attorneys
  # GET /attorneys.json
  def index
    @attorneys = Attorney.all
  end

  # GET /attorneys/1
  # GET /attorneys/1.json
  def show
  end

  # GET /attorneys/new
  def new
    @attorney = Attorney.new
  end

  # GET /attorneys/1/edit
  def edit
  end

  # POST /attorneys
  # POST /attorneys.json
  def create
    @attorney = Attorney.new(attorney_params)

    respond_to do |format|
      if @attorney.save
        format.html { redirect_to @attorney, notice: 'Attorney was successfully created.' }
        format.json { render :show, status: :created, location: @attorney }
      else
        format.html { render :new }
        format.json { render json: @attorney.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attorneys/1
  # PATCH/PUT /attorneys/1.json
  def update
    respond_to do |format|
      if @attorney.update(attorney_params)
        format.html { redirect_to @attorney, notice: 'Attorney was successfully updated.' }
        format.json { render :show, status: :ok, location: @attorney }
      else
        format.html { render :edit }
        format.json { render json: @attorney.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attorneys/1
  # DELETE /attorneys/1.json
  def destroy
    @attorney.destroy
    respond_to do |format|
      format.html { redirect_to attorneys_url, notice: 'Attorney was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attorney
      @attorney = Attorney.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attorney_params
      params.require(:attorney).permit(:name, :licence, :last_name)
    end
end
