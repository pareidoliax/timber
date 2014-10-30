class LumberjillsController < ApplicationController
  before_action :set_lumberjill, only: [:show, :edit, :update, :destroy]

  # GET /lumberjills
  # GET /lumberjills.json
  def index
    @lumberjills = Lumberjill.all
  end

  # GET /lumberjills/1
  # GET /lumberjills/1.json
  def show
  end

  # GET /lumberjills/new
  def new
    @lumberjill = Lumberjill.new
  end

  # GET /lumberjills/1/edit
  def edit
  end

  # POST /lumberjills
  # POST /lumberjills.json
  def create
    @lumberjill = Lumberjill.new(lumberjill_params)

    respond_to do |format|
      if @lumberjill.save
        format.html { redirect_to @lumberjill, notice: 'Lumberjill was successfully created.' }
        format.json { render :show, status: :created, location: @lumberjill }
      else
        format.html { render :new }
        format.json { render json: @lumberjill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lumberjills/1
  # PATCH/PUT /lumberjills/1.json
  def update
    respond_to do |format|
      if @lumberjill.update(lumberjill_params)
        format.html { redirect_to @lumberjill, notice: 'Lumberjill was successfully updated.' }
        format.json { render :show, status: :ok, location: @lumberjill }
      else
        format.html { render :edit }
        format.json { render json: @lumberjill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lumberjills/1
  # DELETE /lumberjills/1.json
  def destroy
    @lumberjill.destroy
    respond_to do |format|
      format.html { redirect_to lumberjills_url, notice: 'Lumberjill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lumberjill
      @lumberjill = Lumberjill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lumberjill_params
      params.require(:lumberjill).permit(:name, :lumberjack_id, :the_one_id)
    end
end
