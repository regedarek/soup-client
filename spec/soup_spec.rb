require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'faraday'
require "net/http"
describe "Soup Client" do
  before do
    @client = Soup::Client.new("soup-client", "soup-client")
  end

  it "should log in to soup.io" do
    @client.login
    get '/login'
    last_response.status.should == 200
  end
end
