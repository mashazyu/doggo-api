require 'rails_helper'

RSpec.describe 'Dogs', type: :request do
  let(:breed) { create(:breed) }
  let(:company) { create(:company) }
  let!(:dog1) { create(:dog, name: 'Bestie', breed: breed, company: company) }
  let!(:dog2) { create(:dog, name: 'Doggo', breed: breed, company: company) }

  describe 'GET /api/v1/dogs' do
    before do
      get('/api/v1/dogs')
    end

    it "returns returns status code 200" do
      expect(response).to have_http_status(:success)
    end

    it 'returns all dogs' do
      expect(json.size).to eq(2)
    end
  end

  describe 'PUT /api/v1/dogs/:dog_id' do
    before do
      put("/api/v1/dogs/#{dog1.id}", params: { "name": "Amazzo" })

      dog1.reload
    end

    it "returns returns status code 200" do
      expect(response).to have_http_status(:success)
    end

    it 'returns all posts' do
      expect(json["name"]).to eq("Amazzo")
    end
  end
end
