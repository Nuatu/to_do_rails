require 'spec_helper'

describe "Task" do
  it 'properly responsed to user index page request, routing to root' do
    get '/index.html'
    expect(response).to redirect_to '/'
  end
end
