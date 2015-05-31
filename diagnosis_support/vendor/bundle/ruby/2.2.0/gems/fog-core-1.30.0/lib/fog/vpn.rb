module Fog
  module VPN
    def self.[](provider)
      new(:provider => provider)
    end

    def self.new(attributes)
      attributes = attributes.dup
      provider = attributes.delete(:provider).to_s.downcase.to_sym

      if provider == :stormondemand
        require "fog/vpn/storm_on_demand"
        Fog::VPN::StormOnDemand.new(attributes)
      else
        raise ArgumentError, "#{provider} has no vpn service"
      end
    end

    def self.providers
      Fog.services[:vpn]
    end
  end
end
