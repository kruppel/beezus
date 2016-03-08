require 'json'
require 'sinatra'

class Beezus < Sinatra::Base

  before do
    content_type :json
  end

  get '/' do
    { ok: true }.to_json
  end

end
