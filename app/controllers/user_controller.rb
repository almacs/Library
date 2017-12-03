class UserController < ApplicationController
  layout 'authenticate'

   def list
    @users = User.where.not(user: params[:user])
   end

   def show
     @user = User.find(params[:id])
   end

   def init
     @user = User.new
   end

   def authenticate
     @user = User.find_by(user: params[:users][:user], password: params[:users][:password])

     if !@user.blank?
       redirect_to :action => 'list', :user => params[:users][:user]
    else
        permission_denied
     end
   end

   def permission_denied
     render :file => "public/401.html", :status => :unauthorized
  end
end
