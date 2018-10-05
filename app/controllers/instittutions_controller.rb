class InstittutionsController < ApplicationController
  before_action :set_instittution, only: [:show, :edit, :update, :destroy]

  # GET /instittutions
  # GET /instittutions.json
  def index
    @instittutions = Instittution.all
  end

  # GET /instittutions/1
  # GET /instittutions/1.json
  def show
  end

  # GET /instittutions/new
  def new
    @instittution = Instittution.new
  end

  # GET /instittutions/1/edit
  def edit
    puts @institution
  end

  # POST /instittutions
  # POST /instittutions.json
  def create
    @instittution = Instittution.new(instittution_params)

    respond_to do |format|
      if @instittution.save
        format.html { redirect_to @instittution, notice: 'Instittution was successfully created.' }
        format.json { render :show, status: :created, location: @instittution }
      else
        format.html { render :new }
        format.json { render json: @instittution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instittutions/1
  # PATCH/PUT /instittutions/1.json
  def update
    respond_to do |format|
      if @instittution.update(instittution_params)
        format.html { redirect_to @instittution, notice: 'Instittution was successfully updated.' }
        format.json { render :show, status: :ok, location: @instittution }
      else
        format.html { render :edit }
        format.json { render json: @instittution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instittutions/1
  # DELETE /instittutions/1.json
  def destroy
    @instittution.destroy
    respond_to do |format|
      format.html { redirect_to instittutions_url, notice: 'Instittution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instittution
      @instittution = Instittution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instittution_params
      params.require(:instittution).permit(:name)
    end
end
