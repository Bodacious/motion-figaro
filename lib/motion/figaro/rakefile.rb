# -*- coding: utf-8 -*-

require "yaml"

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

CONFIG_FILE_PATH = "./config/application.yml".freeze

unless File.exist?(CONFIG_FILE_PATH)
  warn "Figaro-Motion expects a config file to exist in #{CONFIG_FILE_PATH}." \
    "Please create this file and try again."
  exit
end

Motion::Project::App.setup do |app|

  # Configs for all environments
  application_hash = YAML.load(File.open(CONFIG_FILE_PATH))
  # Configs for the spec environment
  spec_hash        = Hash(application_hash.delete("spec"))
  # Configs for the development environment
  development_hash = Hash(application_hash.delete("development"))
  # Configs for the release environment
  release_hash     = Hash(application_hash.delete("release"))

  app.development do
    application_hash.merge!(development_hash)
  end

  app.release do
    application_hash.merge!(release_hash)
  end

  app.spec_mode do
    application_hash.merge!(spec_hash)
  end

  # Update the ENV hash with the settings from the application file
  application_hash.each do |key,value|
    ENV[key.to_s] = value
    app.env[key]  = value
  end

end