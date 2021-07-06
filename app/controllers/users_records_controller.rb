class UsersRecordsController < ApplicationController
  before_action :set_users_record, only: [ :show,:edit,:update, :destroy ]

  # GET /users_records or /users_records.json
  def index
    @user =current_user
    
  end

  # GET /users_records/1 or /users_records/1.json
  def show
  end

  # GET /users_records/new
  def new
    @users_record = UsersRecord.new
  end

  # GET /users_records/1/edit
  def edit
  end

  # POST /users_records or /users_records.json
  def create
    @users_record = UsersRecord.new(users_record_params)
      @users_record.user = current_user


      if @users_record.save
        flash[:notice]= "users record was successfully created." 
        redirect_to root_path 
      else
       render'new'

      end

    end

  # PATCH/PUT /users_records/1 or /users_records/1.json
  def update
      if @users_record.update(users_record_params)

        flash[:notice]= "Users record was successfully updated." 
      
          redirect_to root_path
        
      else
       render'edit'
      end
    end


  def destroy
    @users_record.destroy
        redirect_to root_path
  end
def search
    if params[:users_records].present?
        @user =current_user
      @users_records = @user.users_records.search(params[:users_record])
      @count = @user.users_records.search(params[:users_record]).count
      if @users_records
        respond_to do |format|
          format.js { render partial: 'users_records/users_record_result' }
        end
      else
        respond_to do |format|
          flash.now[:alert] = "Couldn't find user"
          format.js { render partial: 'users_records/users_record_result' }
        end
      end    
    else
      respond_to do |format|
        flash.now[:alert] = "Please enter a firstname,lastname,phone_number,email to search"
        format.js { render partial: 'users_records/users_record_result' }
      end
    end
  end


  private

    def set_users_record
      @users_record = UsersRecord.find(params[:id])
    end
    def users_record_params
      params.require(:users_record).permit(:firstname, :lastname, :address, :phone_number, :email)
    end

end