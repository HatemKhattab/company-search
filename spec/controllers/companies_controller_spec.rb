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
    context 'with invalid params' do
      compnay_counter_before = Company.count

      before do
          post :create, {:company => {name:"invalidcompany"}}
        end

      it "has redirection http status" do
        expect(response).to have_http_status(:found)
      end

      it "has flash error message" do
        expect(flash[:notice]).to be_present
        expect(flash[:notice]).to eq("searching invalidcompany  fails! , please try a nother name")
      end

      it "redirect to new compnay " do
        expect(response).to redirect_to :new_company
      end

      it "should not increment Compnay.count" do
        expect(Company.count - compnay_counter_before).to eq(0)
      end
    end

    context 'with valid params' do
      before do
        post :create, {:company => {name: "ikea"}}
      end

      it "has redirection http status success" do
        expect(response).to have_http_status(302)
      end

      it "has html content type" do
        expect(response.content_type).to eq(:html)
      end

      it "redirected to show action " do
        expect(response).to redirect_to :action => :show, :id => assigns(:company).id
      end

      it "redirected to /companies/:id " do
        expect(response).to redirect_to ("/companies/#{assigns(:company).id}")
      end

      it "contains org number in show page" do
        #   expect(page).to have_text(assigns(:company).name.to_s)
        #  expect(response).to have_selector 'h1', :text => 'ikea'
      end

      it "increment compnay table by 1"

    end

  end

 describe 'get #show' do
    describe 'html' do
    end
    describe 'json' do
    end
   describe 'xml' do
    end
  end

end