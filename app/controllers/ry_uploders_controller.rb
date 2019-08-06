class RyUplodersController < ApplicationController
  before_action :set_ry_uploder, only: [:show, :edit, :update, :destroy]

  # GET /ry_uploders
  # GET /ry_uploders.json
  def index
    @ry_uploders = RyUploder.all
  end

  # GET /ry_uploders/1
  # GET /ry_uploders/1.json
  def show
  end

  # GET /ry_uploders/new
  def new
    @ry_uploder = RyUploder.new
  end

  # GET /ry_uploders/1/edit
  def edit
  end

  # POST /ry_uploders
  # POST /ry_uploders.json
  def create
    @ry_uploder = RyUploder.new(ry_uploder_params)

    respond_to do |format|
      if @ry_uploder.save
        format.html { redirect_to @ry_uploder, notice: 'Ry uploder was successfully created.' }
        format.json { render :show, status: :created, location: @ry_uploder }
      else
        format.html { render :new }
        format.json { render json: @ry_uploder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ry_uploders/1
  # PATCH/PUT /ry_uploders/1.json
  def update
    respond_to do |format|
      if @ry_uploder.update(ry_uploder_params)
        format.html { redirect_to @ry_uploder, notice: 'Ry uploder was successfully updated.' }
        format.json { render :show, status: :ok, location: @ry_uploder }
      else
        format.html { render :edit }
        format.json { render json: @ry_uploder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ry_uploders/1
  # DELETE /ry_uploders/1.json
  def destroy
    @ry_uploder.destroy
    respond_to do |format|
      format.html { redirect_to ry_uploders_url, notice: 'Ry uploder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ry_uploder
      @ry_uploder = RyUploder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ry_uploder_params
      params.require(:ry_uploder).permit(:title, :desc, uplodes: [])
    end
end
