class StaticPagesController < ApplicationController
  def home
  end

  def homeplanner
  end

  def about
  end

  def carousel
    @category = params[:category]
  end

  def inspiration
    if params[:category] == "venues"
      @elements = Element.where(:category => "Venue").paginate(:page => params[:page], :per_page => 15)
    elsif params[:category] == "dresses"
      @elements = Element.where(:category => "Dress").paginate(:page => params[:page], :per_page => 15)
    elsif params[:category] == "invitations"
      @elements = Element.where(:category => "Invitations").paginate(:page => params[:page], :per_page => 15)
    elsif params[:category] == "flowers"
      @elements = Element.where(:category => "Floral/Decor").paginate(:page => params[:page], :per_page => 15)
    elsif params[:category] == "style"
      @elements = Element.where(:category => "Style").paginate(:page => params[:page], :per_page => 15)
    else
      @elements = Element.paginate(:page => params[:page], :per_page => 15)
    end

  end

  def canvas
  end

  def refine
  end

  def planner
  end

  def signup
  end

  def venuesboard
    @elements = @venues
    redirect_to inspiration_path
  end

end
