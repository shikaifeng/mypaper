require "sinatra/base"
# API模块基于Sinatra/Base类，通过register方式将各种不同的业务controller文件组织起来
module Api
    module V1
        class Server < Sinatra::Base
            register UserController
        end
    end
end