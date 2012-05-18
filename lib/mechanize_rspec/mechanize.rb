# encoding: utf-8

require 'mechanize'
require File.expand_path('../config', __FILE__)

class Mechanize
  alias :old_get :get

  # Modyfikacja dotychczasowej metody get
  # tak aby w tej chwili jeżeli jakiś link
  # znajduje się na liście nastąpiło przekierowanie do pliku lokalnego
  def get(uri, parameters = [], referer = nil, headers = {})
    return old_get(uri) if Config.dirname.nil?
    Config.push_uri(uri)
    return old_get(uri) if uri =~ /^(file:)/
    path = Config.location.select{|url, path| url =~ /#{Regexp.quote(uri)}?$/}.first.last
    path.nil? ? (raise "Not correct uri") : old_get(::File.join("file://#{Config.dirname}", path))
  rescue
    Config.push_error_uri(uri)
    old_get("*#{uri}")
  end
end # class Mechanize
