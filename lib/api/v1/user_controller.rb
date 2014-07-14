# module Api::V1::UserController
#     def self.registered(app)
#         # /api/v1/hello
#         app.get '/create' do
#             "hello world!!!"
#         end
#     end
# end


module Api::V1::UserController

    def self.registered(app)
         app.get '/users/create' do
        
          @user = User.new(:name => "shikaifeng")
            "hello world!!!!!#{@user.name}??????"
          
        end
    end
end