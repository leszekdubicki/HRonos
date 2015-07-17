class EmploeesController < ApplicationController
  before_action :set_emploee, only: [:show, :edit, :update, :destroy]

  # GET /emploees
  # GET /emploees.json
  def index
    @emploees = Emploee.all
  end

  # GET /emploees/1
  # GET /emploees/1.json
  def show
  end

  # GET /emploees/new
  def new
    @emploee = Emploee.new
  end

  # GET /emploees/1/edit
  def edit
  end

  # POST /emploees
  # POST /emploees.json
  def create
    @emploee = Emploee.new(emploee_params)

    respond_to do |format|
      if @emploee.save
        format.html { redirect_to @emploee, notice: 'Emploee was successfully created.' }
        format.json { render :show, status: :created, location: @emploee }
      else
        format.html { render :new }
        format.json { render json: @emploee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emploees/1
  # PATCH/PUT /emploees/1.json
  def update
    respond_to do |format|
      if @emploee.update(emploee_params)
        format.html { redirect_to @emploee, notice: 'Emploee was successfully updated.' }
        format.json { render :show, status: :ok, location: @emploee }
      else
        format.html { render :edit }
        format.json { render json: @emploee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emploees/1
  # DELETE /emploees/1.json
  def destroy
    @emploee.destroy
    respond_to do |format|
      format.html { redirect_to emploees_url, notice: 'Emploee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emploee
      @emploee = Emploee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emploee_params
      params.require(:emploee).permit(:emploee_id, :first_name, :last_name, :start_date, :job_id, :salary, :manager_id, :department_id)
    end
end
