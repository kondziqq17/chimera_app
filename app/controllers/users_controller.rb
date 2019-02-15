class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
    @address = @user.build_address
    @company = @user.build_company
    @company.build_address
  end

  def create
    @user = User.new(user_params)
    @user.save!
    redirect_to :root
  end

  private

    def user_params
      params
        .require(:user)
        .permit(
          :first_name, :surname, :email,
          address_attributes: [:id, :street, :city, :zip_code, :country],
          company_attributes: [:id, :name, address_attributes: [:id, :street, :city, :zip_code, :country]]
        )
    end
end
