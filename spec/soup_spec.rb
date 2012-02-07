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

  it "should connect to soup.io" do
    @agent.host.should == "www.soup.io"
  end
end
