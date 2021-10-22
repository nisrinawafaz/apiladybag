class PaymentsController < ApplicationController
  before_action :set_payment, only: %i[ show edit update destroy ]

  # GET /payments or /payments.json
  def index
    @payments = Payment.all.order('created_at DESC')
    render json: @payments
  end

  # GET /payments/1 or /payments/1.json
  def show
    @payments = Payment.find(params[:id]) 
    render json: @payments
  end

  # GET /payments/new
  def new
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments or /payments.json
  def create
    payment = Payment.create!(
      user_id: params['payment']['user_id'],
      fullname: params['payment']['fullname'],
      country: params['payment']['country'],
      city: params['payment']['city'],
      district_id: params['payment']['district_id'],
      address: params['payment']['address'],
      phone: params['payment']['phone'],
      cart_id: params['payment']['cart_id'],
      subtotal: params['payment']['subtotal'],
      total: params['payment']['total'],
      status_id: params['payment']['status_id']
        )
      if payment
          render json:{
              status: :created,
              payment: payment
      }
      else
          render json: { status: 500}
      end
  end

  # PATCH/PUT /payments/1 or /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: "Payment was successfully updated." }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1 or /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: "Payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment_params
      params.require(:payment).permit(:id, :user_id, :fullname, :country, :city, :district_id, :address, :phone, :cart_id, :subtotal, :total, :status_id)
    end
end
