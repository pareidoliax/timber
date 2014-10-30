class LumberjacksController < ApplicationController
  before_action :set_lumberjack, only: [:show, :edit, :update, :destroy]

  # GET /lumberjacks
  # GET /lumberjacks.json
  def index
    @lumberjacks = Lumberjack.all
  end

  # GET /lumberjacks/1
  # GET /lumberjacks/1.json
  def show
  end

  # GET /lumberjacks/new
  def new
    @lumberjack = Lumberjack.new
  end

  # GET /lumberjacks/1/edit
  def edit
  end

  # POST /lumberjacks
  # POST /lumberjacks.json
  def create
    @lumberjack = Lumberjack.new(lumberjack_params)

    respond_to do |format|
      if @lumberjack.save
        format.html { redirect_to @lumberjack, notice: 'Lumberjack was successfully created.' }
        format.json { render :show, status: :created, location: @lumberjack }
      else
        format.html { render :new }
        format.json { render json: @lumberjack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lumberjacks/1
  # PATCH/PUT /lumberjacks/1.json
  def update
    respond_to do |format|
      if @lumberjack.update(lumberjack_params)
        format.html { redirect_to @lumberjack, notice: 'Lumberjack was successfully updated.' }
        format.json { render :show, status: :ok, location: @lumberjack }
      else
        format.html { render :edit }
        format.json { render json: @lumberjack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lumberjacks/1
  # DELETE /lumberjacks/1.json
  def destroy
    @lumberjack.destroy
    respond_to do |format|
      format.html { redirect_to lumberjacks_url, notice: 'Lumberjack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lumberjack
      @lumberjack = Lumberjack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lumberjack_params
      params.require(:lumberjack).permit(:name, :lumberjill_id, :the_one_id)
    end
end
