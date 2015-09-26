class BirthsController < ApplicationController

  
  before_action :set_birth, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  
  # GET /births
  # GET /births.json
  def index
    if params[:search]
    @births = Birth.search(params[:search]).order("created_at DESC")
  else
    @births= Birth.all.order('created_at DESC')
  end
     
  end
  # GET /births/1
  # GET /births/1.json
  def show
  end

  # GET /births/new
  def new
    @birth = Birth.new
  end
  
  def search
  @birth = Birth.search params[:search]
  end
  
  # GET /births/1/edit
  def edit
  end
  # POST /births
  # POST /births.json
  def create
    @birth = Birth.new(birth_params)
     
    respond_to do |format|
      if @birth.save
        format.html { redirect_to @birth, notice: 'Birth was successfully created.' }
        format.json { render :show, status: :created, location: @birth }
      else
        format.html { render :new }
        format.json { render json: @birth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /births/1
  # PATCH/PUT /births/1.json
  def update
    respond_to do |format|
      if @birth.update(birth_params)
        format.html { redirect_to @birth, notice: 'Birth was successfully updated.' }
        format.json { render :show, status: :ok, location: @birth }
      else
        format.html { render :edit }
        format.json { render json: @birth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /births/1
  # DELETE /births/1.json
  def destroy
    @birth.destroy
    respond_to do |format|
      format.html { redirect_to births_url, notice: 'Birth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_birth
      @birth = Birth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def birth_params
      params.require(:birth).permit(:childname, :fathername, :mothername, :bloodgroup, :genotype, :sorigin, :sex, :date, :time, :lga, :sbirth, :nationality, :raddress, :occupation, :nmidwife, :mage, :fage, :weight, :dreg, :time, :reg_num )
    end
end
