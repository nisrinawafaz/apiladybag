class LineItemClonesController < ApplicationController
  before_action :set_line_item_clone, only: %i[ show edit update destroy ]

  # GET /line_item_clones or /line_item_clones.json
  def index
    @line_item_clones = LineItemClone.all
    render json: @line_item_clones
  end

  # GET /line_item_clones/1 or /line_item_clones/1.json
  def show
    @line_item_clones = LineItemClone.find(params[:id])
    render json: @line_item_clones
  end

  # GET /line_item_clones/new
  def new
    @line_item_clone = LineItemClone.new
  end

  # GET /line_item_clones/1/edit
  def edit
  end

  # POST /line_item_clones or /line_item_clones.json
  def create
    @line_item_clone = LineItemClone.create!(
      cart_id: params['line_item_clone']['cart_id'],
      price_cents: params['line_item_clone']['price_cents'],
      image_id: params['line_item_clone']['image_id'],
      quantity: params['line_item_clone']['quantity']
  )

    if @line_item_clone.save
      render json: {status: :created}
    else
      render json: {status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /line_item_clones/1 or /line_item_clones/1.json
  def update
    respond_to do |format|
      if @line_item_clone.update(line_item_clone_params)
        format.html { redirect_to @line_item_clone, notice: "Line item clone was successfully updated." }
        format.json { render :show, status: :ok, location: @line_item_clone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @line_item_clone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_item_clones/1 or /line_item_clones/1.json
  def destroy
    @line_item_clone.destroy
    respond_to do |format|
      format.html { redirect_to line_item_clones_url, notice: "Line item clone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item_clone
      @line_item_clone = LineItemClone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def line_item_clone_params
      params.fetch(:line_item_clone, {})
    end
end
