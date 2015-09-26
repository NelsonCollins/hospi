class DeathsController < ApplicationController
  
  before_action :set_death, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!
  
  # GET /deaths
  def index
    if params[:search]
    @deaths = Death.search(params[:search]).order("created_at DESC")
  else
    @deaths= Death.all.order('created_at DESC')
  end
     
  end
  # GET /births/1
  # GET /births/1.json
  def show
  end
  
  # def serial_number
  #   "LAG-%.6d" % id
  # end

  # GET /births/new
  def new
    @death = Death.new
  end
  
  def search
  @death = Death.search params[:search]
  end
  
  def edit
  end

  # POST /deaths
  # POST /deaths.json
  def create
    @death = Death.new(death_params)

    respond_to do |format|
      if @death.save
        format.html { redirect_to @death, notice: 'Death was successfully created.' }
        format.json { render :show, status: :created, location: @death }
      else
        format.html { render :new }
        format.json { render json: @death.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deaths/1
  # PATCH/PUT /deaths/1.json
  def update
    respond_to do |format|
      if @death.update(death_params)
        format.html { redirect_to @death, notice: 'Death was successfully updated.' }
        format.json { render :show, status: :ok, location: @death }
      else
        format.html { render :edit }
        format.json { render json: @death.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deaths/1
  # DELETE /deaths/1.json
  def destroy
    @death.destroy
    respond_to do |format|
      format.html { redirect_to deaths_url, notice: 'Death was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_death
      @death = Death.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def death_params
      params.require(:death).permit(:rdate, :dname, :sex, :color, :age, :occupation, :mstatus, :nationality, :birthplace, :cdate, :place, :cdeath, :nextkin, :doctor, :cleared, :reg_num)
    end
end
