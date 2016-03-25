#company_search
class CompaniesController < ApplicationController
before_action :set_company, only: [:show]

  def new
    @company = Company.new
  end

  def show
  end

  def create
    @company = Company.new(company_params)
    @company.orgnr = getCompanyOrgnr(@company.name)
    if @company.orgnr.nil?
      flash[:notice] = "searching "+@company.name.to_s+"  fails! , please try a nother name"
      #render :new
      redirect_to :root
    else
      #if the search find compnay orgnr
      @company.save
      redirect_to @company
    end
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name)
    end
end
