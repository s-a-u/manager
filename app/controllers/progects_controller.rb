class ProgectsController < ApplicationController
  before_action :set_progect, only: [:show, :edit, :update, :destroy]

  # GET /progects
  # GET /progects.json
  def index
    @progects = Progect.all
  end

  # GET /progects/1
  # GET /progects/1.json
  def show
  end

  # GET /progects/new
  def new
    @progect = Progect.new
  end

  # GET /progects/1/edit
  def edit
  end

  # POST /progects
  # POST /progects.json
  def create
    @progect = Progect.new(progect_params)

    respond_to do |format|
      if @progect.save
        format.html { redirect_to @progect, notice: 'Progect was successfully created.' }
        format.json { render :show, status: :created, location: @progect }
      else
        format.html { render :new }
        format.json { render json: @progect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progects/1
  # PATCH/PUT /progects/1.json
  def update
    respond_to do |format|
      if @progect.update(progect_params)
        format.html { redirect_to @progect, notice: 'Progect was successfully updated.' }
        format.json { render :show, status: :ok, location: @progect }
      else
        format.html { render :edit }
        format.json { render json: @progect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progects/1
  # DELETE /progects/1.json
  def destroy
    @progect.destroy
    respond_to do |format|
      format.html { redirect_to progects_url, notice: 'Progect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progect
      @progect = Progect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def progect_params
      params.require(:progect).permit(:title)
    end
end
