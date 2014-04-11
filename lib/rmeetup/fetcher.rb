require 'core_ext/string'
require 'rmeetup/fetcher/base'
require 'rmeetup/fetcher/topics'
require 'rmeetup/fetcher/cities'
require 'rmeetup/fetcher/members'
require 'rmeetup/fetcher/rsvps'
require 'rmeetup/fetcher/events'
require 'rmeetup/fetcher/open_events'
require 'rmeetup/fetcher/groups'
require 'rmeetup/fetcher/comments'
require 'rmeetup/fetcher/photos'
require 'rmeetup/fetcher/venues'

module RMeetup
  module Fetcher

    def self.for(type)
      name = type.to_s.camel_case.to_sym
      if (name && constants.include?(name))
        const_get(name).new
      else
        raise InvalidRequestTypeError.new(type)
      end
    end

  end
end
