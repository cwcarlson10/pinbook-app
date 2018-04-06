class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def edit
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: "Note was successfully created." }
      else
        format.html { render :new }
      end
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :address, :phone_number, :user_id)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
