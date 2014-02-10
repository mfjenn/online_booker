class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  
  def datepicker
    if 
      @user 
      redirect_to new_user_path
    end
  end
end
