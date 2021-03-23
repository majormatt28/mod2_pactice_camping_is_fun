class SignupsController < ApplicationController
    def index
      @signups = Signup.all
    end

    def show
        @signup = Signup.find(params[:id])
    end

    def edit
        @signup = Signup.find(params[:id])
    end

    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.create(signup_params)

        redirect_to signup_path(signup.id)
    end

    def update
        @signup = Signup.find(params[:id])

        @signup.update
    end

    def delete
        @signup = Signup.find(params[:id])

        @signup.destroy
    end

    private

    def signup_params
        params.require(:signup).permit(:camper_id, :actitvity_id, :time)
    end

  end