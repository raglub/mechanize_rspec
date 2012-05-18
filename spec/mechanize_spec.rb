# coding:utf-8
require 'mechanize_rspec'

describe Mechanize do
  before(:each) do
    @tmp_dir = File.expand_path('../pages', __FILE__)
    Mechanize::Config.dirname = @tmp_dir
    #puts Mechanize::Config.location
    @agent = Mechanize.new
  end

  it "should correct push uris 1" do
    @agent.get('http://www.mechanize/#pl/home.html')
    Mechanize::Config.uris.should include('http://www.mechanize/#pl/home.html')
  end

  it "should correct push uris 2" do
    @agent.get('/#pl/home.html')
    Mechanize::Config.uris.should include('http://www.mechanize/#pl/home.html')
  end

  it "should correct push uris 3" do
    begin
      @agent.get('http://www.mechanize/#en/home.html')
    rescue
    end
    Mechanize::Config.uris.should include('http://www.mechanize/#en/home.html')
  end

end
