RSpec.describe Company, :type => :model do
  fixtures :companies

  it "accept compnay with name and orgnr" do
    expect(companies(:ikea)).to be_valid
  end
 
  it "not accept compnay without name" do
    expect(companies(:scania)).to be_invalid
  end

  it "not accept compnay without orgnr" do
    expect(companies(:volvo)).not_to be_valid
  end

  it "not accept compnay without name and orgnr" do
    expect(companies(:saab)).not_to be_valid
  end

  it "is invalid without name" do
    company = Company.new(orgnr: '893436')
    company.valid?
    expect(company.errors[:name]).to include("can't be blank")
  end

  it "is invalid without orgnr" do
    company = Company.new(name: "volvo")
    company.valid?
    expect(company.errors[:orgnr]).to include("can't be blank")
  end

end