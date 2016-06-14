class ItemsController < ApplicationController
   def create
     @item = current_user.items.build(item_params)
       if @item.save
         flash[:notice] = 'Item was saved successfully.'
       else
         flash.now[:alert] = 'Error creating item. Please try again.'
       end
        redirect_to user_path(current_user)
   end

   private
   def item_params
     params.require(:item).permit(:name)
   end
end
