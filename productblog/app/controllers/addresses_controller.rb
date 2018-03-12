class AddressesController < ApplicationController
  
	def index
    @addresses = Address.paginate(page: params[:page], per_page: 5)
   # @address = Address.where(:customer_id => @addresses.customer_id)


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addresses }
    end
  end	


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
      params.require(:address).permit(:line_1, :line_2, :street, :city, :state, :country, :postal_code)
    end
	
end
