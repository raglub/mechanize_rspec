require 'yaml'

class Mechanize
  module Config

    def self.location
      @location ||= get_location
    end

    # pobranie hasha lokalizacji ze wskazanego pliku o ile istnieje
    def self.get_location
      file_source = ::File.join("#{dirname}", "location.yml")
      return {} unless ::File.exist?(file_source)
      result = YAML::load(::File.read(file_source))
      result.class == Hash ? result : {}
    end

    def self.dirname=(value)
      return unless ::Dir.exist?(value)
      @dirname, @location = value, nil
    end

    def self.dirname
      @dirname || nil
    end

    def self.error_uris
      @error_uris
    end

    def self.push_error_uri(uri)
      @error_uris ||= []
      @error_uris << uri
    end

    def self.uris
      @uris
    end

    def self.push_uri(uri)
      @uris ||= []
      @uris << uri
    end

    # Sprawdzenie czy wszystkie wskazane ścieżki do plików lokalnych istnieją
    def self.check_location
      location.each do |uri, path|
        path = ::File.join("#{dirname}", path)
        if ::File.exist?(path)
          puts "file #{path} exist."
        else
          puts "file #{path} don't exist."
        end
      end
    end

  end # module Config
end # module Mechanize
