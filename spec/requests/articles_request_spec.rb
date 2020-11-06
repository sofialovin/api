require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe '#index' do
    it 'should return success response' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'should return proper json' do
      create_list :article, 5
      get :index
      json = JSON.parse(response.body)
      # pp json
      json_data = json['data']
      # expect(json_data.length).to eq(2)
      expect(json_data[0]['attributes']).to eq({
        'title' => 'My awesome article 1',
        'content' => 'The content of my awesome article 1',
        'slug' => 'my-awesome-article-1'
      })
    end

  end
end
