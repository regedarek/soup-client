require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'faraday'
describe "Soup Client" do
  before do
    @client = Soup::Client.new("soup-client", "soup-client")
    @client.login
  end

  it "should add new link to soup.io" do
    @client.new_link("http://wp4.pl", title = 'wp4', description = '4WP').status.should == 302
  end

  it "should add new imaage" do
    image = @client.new_image("http://image.link", description = 'image desc')
    image.status.should == 302
  end

  it "should add new_text" do
    @client.new_text("text", title = "title")
  end

  it "should add new quote" do
    @client.new_quote("quote", "author")
  end

  it "should add new video" do
    #TODO
  end
end
