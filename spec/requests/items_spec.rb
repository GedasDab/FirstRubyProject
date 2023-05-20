require 'rails_helper'

RSpec.describe "Items", type: :request do
  let(:response_json) { JSON.parse(response.body) }

  describe "GET /show" do
    subject { get "/items/#{item.id}" }

    let(:user) { create(:user) }
    let(:item) { create(:item, user: user) }

    it 'Generates the json of the item' do
      subject

      expect(response_json['id']).to eq(item.id)
      expect(response.status).to eq(200)
    end

    context 'When item with id does not exist' do
      subject { get "/items/1" }

      let(:item) { nil }

      it 'returns the error message and http status 404' do
        subject

        expect(response_json['error']).to eq("Couldn't find Item with 'id'=1")
        expect(response.status).to eq(404)
      end
    end
  end
end