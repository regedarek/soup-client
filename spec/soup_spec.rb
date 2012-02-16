require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'faraday'
describe "Soup Client" do
  before do
    @client = Soup::Client.new("soup-client", "soup-client")
  end

  it "should ad new link to soup.io" do
    @client.login
    @client.new_link("http://wp.pl", title = 'wp', description = 'WP')
  end
end
