class VariencesController < ApplicationController
  before_action :set_varience, only: [:show, :edit, :update, :destroy]

  # GET /variences
  # GET /variences.json
  def index
    @variences = Varience.all
  end

  # GET /variences/1
  # GET /variences/1.json
  def show
  end

  # GET /variences/new
  def new
    @varience = Varience.new
  end

  # GET /variences/1/edit
  def edit
  end

  # POST /variences
  # POST /variences.json
  def create
    @varience = Varience.new(varience_params)

    respond_to do |format|
      if @varience.save
        format.html { redirect_to @varience, notice: 'Varience was successfully created.' }
        format.json { render action: 'show', status: :created, location: @varience }
      else
        format.html { render action: 'new' }
        format.json { render json: @varience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /variences/1
  # PATCH/PUT /variences/1.json
  def update
    respond_to do |format|
      if @varience.update(varience_params)
        format.html { redirect_to @varience, notice: 'Varience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @varience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variences/1
  # DELETE /variences/1.json
  def destroy
    @varience.destroy
    respond_to do |format|
      format.html { redirect_to variences_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_varience
      @varience = Varience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def varience_params
      params.require(:varience).permit(:varience, :desc)
    end
end
