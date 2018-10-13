class NativesController < ApplicationController
  before_action :set_native, only: [:show, :edit, :update, :destroy]

  # GET /natives
  # GET /natives.json
  def index
    @natives = Native.all
  end

  # GET /natives/1
  # GET /natives/1.json
  def show
  end

  # GET /natives/new
  def new
    @native = Native.new
  end

  # GET /natives/1/edit
  def edit
  end

  # POST /natives
  # POST /natives.json
  def create
    @native = Native.new(native_params)

    respond_to do |format|
      if @native.save
        format.html { redirect_to @native, notice: 'Native was successfully created.' }
        format.json { render :show, status: :created, location: @native }
      else
        format.html { render :new }
        format.json { render json: @native.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /natives/1
  # PATCH/PUT /natives/1.json
  def update
    respond_to do |format|
      if @native.update(native_params)
        format.html { redirect_to @native, notice: 'Native was successfully updated.' }
        format.json { render :show, status: :ok, location: @native }
      else
        format.html { render :edit }
        format.json { render json: @native.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /natives/1
  # DELETE /natives/1.json
  def destroy
    @native.destroy
    respond_to do |format|
      format.html { redirect_to natives_url, notice: 'Native was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_native
      @native = Native.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def native_params
      params.require(:native).permit(:name, :locations_id)
    end
end
