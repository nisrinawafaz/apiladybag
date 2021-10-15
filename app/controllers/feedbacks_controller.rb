class FeedbacksController < ApplicationController
  before_action :set_feedback, only: %i[ show edit update destroy ]

  # GET /feedbacks or /feedbacks.json
  def index
    @feedbacks = Feedback.all
    render json: @feedbacks
  end

  # GET /feedbacks/1 or /feedbacks/1.json
  def show
    @feedbacks = Feedback.find(params[:id])
    render json: @feedbacks
  end

  # POST /feedbacks or /feedbacks.json
  def create
    @feedback = Feedback.create!(
            name: params['feedback']['name'],
            email: params['feedback']['email'],
            title: params['feedback']['title'],
            review: params['feedback']['review']
        )

        if @feedback
            render json:{
                status: :created,
                feedback: @feedback
        }
        else
            render json: { status: 500}
        end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedback
      @feedback = Feedback.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feedback_params
      params.fetch(:feedback, {})
    end
end
