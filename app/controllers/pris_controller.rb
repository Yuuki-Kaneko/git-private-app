class PrisController < ApplicationController
    
    before_action :move_to_index,except: [:index, :show]
    
    def index
        @pris = Pri.order("created_at DESC")
    end
    
    def new
        @pris = Pri.new
    end
    
    def create
        Pri.create(text: create_params[:text], user_id: current_user.id)
        redirect_to "/pris"
    end
    
    def destroy
        pri = Pri.find(params[:id])
        if pri.user_id == current_user.id
        pri.destroy
        redirect_to action: :index
        end
    end
    
    def edit
        @pri = Pri.find(params[:id])
    end
    
    def update
        pri = Pri.find(params[:id])     #レコードの呼出しが別で必要
        if pri.user_id == current_user.id
         pri.update(create_params)
         redirect_to "/pris"
        end
    end
    
    def show
        @pri = Pri.find(params[:id]) 
    end
    
    private
    def create_params
        params.permit(:text)
    end
    
    def move_to_index
        redirect_to action: :index unless user_signed_in?
    end
    
end
