class UsersController < ApplicationController  
    
    def register
        user = User.new(user_params)
        if user.save
          render json: {status: 200, msg: 'Usuário criado com sucesso'}
        end
    end

    private
        def user_params
            params.require(:auth).permit(:email, :password)
        end
end
