class LoardsController < ApplicationController
  before_action :set_loard, only: [:show, :edit, :update, :destroy]

  # GET /loards
  # GET /loards.json
  def index
    @loards = Loard.all
  end

  # GET /loards/1
  # GET /loards/1.json
  def show
  end

  # GET /loards/new
  def new
    @loard = Loard.new
  end

  # GET /loards/1/edit
  def edit
  end

  # POST /loards
  # POST /loards.json
  def create
    @loard = Loard.new(loard_params)

    respond_to do |format|
      if @loard.save
        format.html { redirect_to @loard, notice: 'Loard was successfully created.' }
        format.json { render :show, status: :created, location: @loard }
      else
        format.html { render :new }
        format.json { render json: @loard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loards/1
  # PATCH/PUT /loards/1.json
  def update
    respond_to do |format|
      if @loard.update(loard_params)
        format.html { redirect_to @loard, notice: 'Loard was successfully updated.' }
        format.json { render :show, status: :ok, location: @loard }
      else
        format.html { render :edit }
        format.json { render json: @loard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loards/1
  # DELETE /loards/1.json
  def destroy
    @loard.destroy
    respond_to do |format|
      format.html { redirect_to loards_url, notice: 'Loard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loard
      @loard = Loard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loard_params
      params.require(:loard).permit(:name, :bio, :birth)
    end
end
