class AddressesController < ApplicationController
  
  def create

    @user=User.find(params[:user_id])

    @address = @user.addresses.create(address_params)
      redirect_to user_path(@user)
  end
 
def destroy
  @user=User.find(params[:user_id])
  @address=@user.addresses.find(params[:id])
  @address.destroy
  redirect_to user_path(@user)
end

  private
    def address_params
      params.require(:address).permit(:city, :state)
    end

end
