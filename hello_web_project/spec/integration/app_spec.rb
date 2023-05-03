require 'spec_helper'
require "rack/test"
require_relative '../../app'

RSpec.describe Application do
  
  include Rack::Test::Methods

  let(:app) {Application.new}

  context 'GET /hello' do
    it 'returns the html index' do
      response = get('/hello')

      expect(response.body).to include('<h1> Hello </h1>')
    end
  end

  

end
