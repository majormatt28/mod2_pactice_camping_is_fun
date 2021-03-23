class SignupsController < ApplicationController
    def index
      @signups = Signup.all
    end

    def show
    end

    def new
    end

    def create
    end

    def update
    end

    def delete
    end

    private

    def signup_params
    end

  end