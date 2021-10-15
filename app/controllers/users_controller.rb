class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @users = User.find(params[:id])
        render json: @users
    end

    def update
<<<<<<< HEAD
      @user = User.find(params[:id])
      if @user.update(user_params)
        render json: {status: :ok}
      else
        render json: { status: :unprocessable_entity }
      end
    end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:phone, :address)
      end
=======
        @user = User.find(params[:id])
        if @user.update(user_params)
          render json: {status: :ok}
        else
          render json: { status: :unprocessable_entity }
        end
      end

      private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:phone, :address)
    end
>>>>>>> fdea21b380fc28783a340fc4063a76e088b7eef4
end
