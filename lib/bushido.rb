require 'active_support'
require 'ostruct'

module Bushido

  mattr_accessor :domains, :subdomain, :last_command_successful, :claimed, :last_event

  def self.set_env(options = {})
    options = {
      :last_command_successful  => true,
      :domains                  => [],
      :subdomain                => 'san_francisco',
      :claimed                  => false,
      # :claim_url                => 'http://bushi.do/app/foo/claim',
      :last_event               => {
        :category   => 'user',
        :name       => 'create',
        :data       => { 'email' => 'san_francisco@bushi.do', 'id' => 4242 }
      }
    }.merge(options)

    @@domains = options.delete(:domains)
    @@subdomain = options.delete(:subdomain)
    @@last_command_successful = options.delete(:last_command_successful)
    @@claimed = options.delete(:claimed)

    ENV['BUSHIDO_CLAIMED'] = @@claimed.to_s

    @@last_event = OpenStruct.new(options.delete(:last_event))

    options.each { |k, v| ENV[k] = v }
  end

  module Command

    def self.last_command_successful?
      ::Bushido.last_command_successful
    end

    def self.add_domain(name)
      ::Bushido.domains << name
    end

    def self.remove_domain(name)
      ::Bushido.domains.delete(name)
    end

  end

  module App

    def self.domains
      ::Bushido.domains
    end

    def self.subdomain
      ::Bushido.subdomain
    end

    def self.set_subdomain(domain)
      ::Bushido.subdomain
    end

    def self.claimed?
      ::Bushido.claimed
    end

    # def self.claim_url
    #   @@claim_url
    # end

    def self.last_event
      ::Bushido.last_event
    end

  end

end