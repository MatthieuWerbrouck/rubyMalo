class ReponsesController < ApplicationController
  before_action :set_reponse, only: %i[ show update destroy ]

  # GET /reponses
  def index
    @reponses = Reponse.all

    render json: @reponses
  end

  # GET /reponses/1
  def show
    render json: @reponse
  end

  # POST /reponses
  def create
    @reponse = Reponse.new(reponse_params)

    if @reponse.save
      render json: @reponse, status: :created, location: @reponse
    else
      render json: @reponse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reponses/1
  def update
    if @reponse.update(reponse_params)
      render json: @reponse
    else
      render json: @reponse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reponses/1
  def destroy
    @reponse.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reponse
      @reponse = Reponse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reponse_params
      params.require(:reponse).permit(:question_id, :lib, :user_id)
    end
end
