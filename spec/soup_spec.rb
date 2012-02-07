require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'faraday'

describe "Soup Agent" do
  before do
    @agent = Faraday.new(url: 'http://www.soup.io/') do |builder|
            builder.use Faraday::Request::UrlEncoded
            builder.use Faraday::Response::Logger
            builder.use Faraday::Adapter::NetHttp
          end
  end
<<<<<<< HEAD

  it "should connect to soup.io" do
    @agent.host.should == "www.soup.io"
=======
  it "should connect to soup" do
    @agent.host.should == "http://soup.io"
>>>>>>> b5f2493c1134eb2b59c428ffd8b25cb41da3d228
  end
end
