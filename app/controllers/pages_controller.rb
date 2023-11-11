class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
    @cottages = Cottage.all
  end
end
