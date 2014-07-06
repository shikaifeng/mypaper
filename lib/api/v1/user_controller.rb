module Api::V1::UserController

    def self.registered(app)
         app.post '/users/create' do

          @user = User.new(params[:user])
          @user.save
          redirect_to @user
        end
    end
end