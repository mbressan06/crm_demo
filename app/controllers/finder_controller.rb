class FinderController < ApplicationController
  def index
    @page_title = "All customers"
    @customers = Customer.all
  end

  def alphabetized
    @page_title = "Alphabetized customers"
    @customers = Customer.order(:full_name)
    render :index
  end

  def missing_email
    @page_title = "Missing e-mail customers"
    @customers = Customer.where(email: '')
    render :index
  end
end
