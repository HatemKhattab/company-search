#company_search
class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]

  def index
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.orgnr = getCompanyOrgnr(@company.name)
    if @company.orgnr.nil?
      flash[:notice] = "No result!, please try again"
      render :new
    else
      #if the search find compnay orgnr
      @company.save
      redirect_to @company
    end
  end

  def show
  end


  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name)
    end
end
