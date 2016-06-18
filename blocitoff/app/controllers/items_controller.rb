class ItemsController < ApplicationController
    def create
        @item = current_user.items.build(item_params)
        if @item.save
            flash[:notice] = 'Item was saved successfully.'
            redirect_to user_path(current_user)
        else

            flash.now[:alert] = 'Error creating item. Please try again.'
            render :form
        end

    end

    def destroy
        @item = current_user.items.find(params[:id])
        if @item.destroy
            flash[:notice] = 'Item was deleted successfully.'
        else
            flash[:alert] = "Item couldn't be deleted. Try again."
        end
        respond_to do |format|
            format.html
            format.js
        end
   end

   private

   def item_params
       params.require(:item).permit(:name)
   end
 end
