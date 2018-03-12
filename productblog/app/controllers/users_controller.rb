class UsersController < ApplicationController
  
     #respond_to :json, :html, only: :show

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json

#   def show

#   if request.xhr?
#     @user = User.find_by_email(params[:email])
#   else
#     @user = User.find(params[:id])  #Customer.includes(:addresses).find(params[:id])
#     @addresses = @user.addresses
#   end
# respond_to do |format|
# format.html # show.html.erb
# format.json { render json: @user }
# end
# end

def get_addresses
   @user = User.find params[:id]
   @addresses = @user.addresses


        
   respond_to do |format|
    format.json {render json: @addresses}
   end

  end



# def my_action 
#     if params[:company].present? 
#         @company = current_user.companies.find(params[:company]) 
#         @data = Hash.new 
#         @data["btw_number"] = @company.btw_number 
#         @data["iban_number"] = @company.iban_number 
#         render json: @data and return false 
#     end 
# end


 def show
       @user = User.find params[:id]
       respond_with @user
    end

  # GET /users/new
  def new
    @user = User.new
     #1.times do
       address=@user.addresses.build
     #end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if User.where(email: @user.email).empty?


    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :dob, :contact, addresses_attributes: [:line_1, :line_2, :street, :city, :state, :country, :postal_code])
    end

end
