class HomePagesController < ApplicationController

  def home
    @title = "Welcome to BunchFund, a cool way to raise funds for any project imaginable."
    respond_to do |format|
      format.html 
      format.js 
    end
  end

  def about
  end
  
  def help
  end
  
  def contact_us
  end
  
  def blog
  end
  
  def build_with_us
  end
  
end