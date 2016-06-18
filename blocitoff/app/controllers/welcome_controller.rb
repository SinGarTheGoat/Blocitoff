class WelcomeController < ApplicationController
#before_action: :authenticate! :user, only: [:contact]

  def home
    @items = current_user.items if current_user
  end

  def about
  end

  def contact
  end

end
