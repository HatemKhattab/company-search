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
    nameOfCompany = prepare_company_name(@company.name)
    if checkNotEmpty(nameOfCompany)
      flash[:notice] = "you didnt enter a name , please try again"
      redirect_to :new_company and return
    end
    @company.orgnr = getCompanyOrgnr(@company.name)

    if @company.orgnr.nil?
      flash[:notice] = "searching "+@company.name.to_s+"  fails! , please try a nother name"
      redirect_to :new_company and return
    else
      if @company.save
        redirect_to @company and return
      else
        flash[:notice] = "unknown error , please try again ";
        redirect_to :new_company and return
      end
    end

  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name)
    end

    def prepare_company_name(name)
      company_name = name
      if company_name.include?(" ")
        company_name = company_name.sub!(' ','+')
      end
      return company_name
    end

    def checkNotEmpty(text)
      if text.nil? || text.blank?
        return true
      else
        return false
      end
    end

end
