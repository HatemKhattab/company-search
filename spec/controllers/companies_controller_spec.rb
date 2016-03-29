RSpec.describe CompaniesController, :type => :controller do
  fixtures :companies

  describe 'GET #new' do
    before do
      get :new
    end

    it "get with status ok" do
      expect(response).to have_http_status(:ok)
    end

    it "has content type html" do
      expect(response.content_type).to eq("text/html")
    end

    it "render with layout application" do
     expect(response).to render_template(:layout => "application")
    end

    it "renders the actual template" do
      expect(response).to render_template("companies/new/")
    end
  end

 describe 'post #create' do
    describe 'unvalid' do
      before do
        post :create, {:company => {name:"spotify"}}
      end
      it "has fail status"
      it "has flash error message"
      it "redirect to new compnay"
    end
    describe 'valid' do
    end
  end

 describe 'get #show' do
    describe 'html' do
    end
    describe 'json' do
    end
  end

end