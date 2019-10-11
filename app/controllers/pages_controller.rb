class PagesController < ApplicationController
  def contact
    @contact = ["100 Test St","647 800-0000","test@test.com"]
  end

  def about
  end
  def goodbye
    @goodbye = "Goodbye"
  end
  def home
  end
end
