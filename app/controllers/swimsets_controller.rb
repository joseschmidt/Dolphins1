class SwimsetsController < ApplicationController
  before_action :set_swimset, only: [:show, :edit, :update, :destroy]

  # GET /swimsets
  # GET /swimsets.json
  def index
    @swimsets = Swimset.all
  end

  # GET /swimsets/1
  # GET /swimsets/1.json
  def show
  end

  # GET /swimsets/new
  def new
    @swimset = Swimset.new
  end

  # GET /swimsets/1/edit
  def edit
  end

  # POST /swimsets
  # POST /swimsets.json
  def create
    @swimset = Swimset.new(swimset_params)

    respond_to do |format|
      if @swimset.save
        format.html { redirect_to @swimset, notice: 'Swimset was successfully created.' }
        format.json { render action: 'show', status: :created, location: @swimset }
      else
        format.html { render action: 'new' }
        format.json { render json: @swimset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swimsets/1
  # PATCH/PUT /swimsets/1.json
  def update
    respond_to do |format|
      if @swimset.update(swimset_params)
        format.html { redirect_to @swimset, notice: 'Swimset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @swimset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swimsets/1
  # DELETE /swimsets/1.json
  def destroy
    @swimset.destroy
    respond_to do |format|
      format.html { redirect_to swimsets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swimset
      @swimset = Swimset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def swimset_params
      params.require(:swimset).permit(:practice_id, :qty, :distance, :rori, :rest, :comment)
    end
end
