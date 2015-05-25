class MasterbanksController < ApplicationController
<<<<<<< HEAD
	def show
		@masterbank = Masterbank.find(params[:id])
		@banks = Masterbank.banks
	end
	def index

	end
=======
  before_action :set_masterbank, only: [:show, :edit, :update, :destroy]

  # GET /masterbanks
  # GET /masterbanks.json
  def index
    @masterbanks = Masterbank.all
  end

  # GET /masterbanks/1
  # GET /masterbanks/1.json
  def show
  end

  # GET /masterbanks/new
  def new
    @masterbank = Masterbank.new
  end

  # GET /masterbanks/1/edit
  def edit
  end

  # POST /masterbanks
  # POST /masterbanks.json
  def create
    @masterbank = Masterbank.new(masterbank_params)

    respond_to do |format|
      if @masterbank.save
        format.html { redirect_to @masterbank, notice: 'Masterbank was successfully created.' }
        format.json { render :show, status: :created, location: @masterbank }
      else
        format.html { render :new }
        format.json { render json: @masterbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masterbanks/1
  # PATCH/PUT /masterbanks/1.json
  def update
    respond_to do |format|
      if @masterbank.update(masterbank_params)
        format.html { redirect_to @masterbank, notice: 'Masterbank was successfully updated.' }
        format.json { render :show, status: :ok, location: @masterbank }
      else
        format.html { render :edit }
        format.json { render json: @masterbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masterbanks/1
  # DELETE /masterbanks/1.json
  def destroy
    @masterbank.destroy
    respond_to do |format|
      format.html { redirect_to masterbanks_url, notice: 'Masterbank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masterbank
      @masterbank = Masterbank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def masterbank_params
      params.require(:masterbank).permit(:name, :description, :image)
    end
>>>>>>> newAfterMerde
end
