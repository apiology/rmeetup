rMeetup
=======
[![Gem Version](https://badge.fury.io/rb/rMeetup.svg)](http://badge.fury.io/rb/rMeetup)
[![Build Status](https://travis-ci.org/neektza/rmeetup.svg?branch=master)](https://travis-ci.org/neektza/rmeetup)
[![Code Climate](https://codeclimate.com/github/neektza/rmeetup.png)](https://codeclimate.com/github/neektza/rmeetup)
[![Coverage Status](https://coveralls.io/repos/neektza/rmeetup/badge.png?branch=master)](https://coveralls.io/r/neektza/rmeetup?branch=master)
[![Inline docs](http://inch-ci.org/github/neektza/rmeetup.svg?branch=master)](http://inch-ci.org/github/neektza/rmeetup)

A Ruby wrapper for the Meetup REST API v2.

Code Sample
-----------

Sample code is worth a thousand words:

```ruby
  client = RMeetup::Client.new do |config|
    config.api_key = "API_KEY"
  end
  
  results = client.fetch(:events, { event_id: 'some_id' })
  results.each do |result|
    # Do something with the result
  end
```

Fetch
-----

RMeetup::Client#fetch takes a data model type and set of options as arguments. Possible data models are:

* :events
* :open_events
* :groups
* :rsvps
* :cities
* :members
* :photos
* :venues

The options that may be passed can be found on the Meetup API documentation. Please see http://www.meetup.com/meetup_api/docs/ and look up the model that you are calling (i.e. for :events, look at the API call "GET /2/events" at http://www.meetup.com/meetup_api/docs/2/events/).

Post
----

RMeetup::Client#post takes a data model type and set of options as arguments. Possible data models are:

* :event_comment

The options that may be passed can be found on the Meetup API documentation. Please see http://www.meetup.com/meetup_api/docs/ and look up the model that you are calling (i.e. for :event_comment, look at the API call ```POST /2/event_comment``` at http://www.meetup.com/meetup_api/docs/2/event_comment).

Installation
------------

... via Rubygems/Bundler.

Credits
-------
* [Jared Pace](https://github.com/jdpace/rmeetup) - built initial iteration
* [Jason Berlinsky](https://github.com/Jberlinsky/rmeetup) - forked, expanded, documented for api v1.0
* [Tommy Chan](https://github.com/tommytcchan/rmeetup) - added venues, updated to api v2.0
* [Tanner Mares](https://github.com/tannermares/rmeetup) - check for type in base_url, fix event time and venue, also updated to api v2.0
* [Joshua Calloway](https://github.com/joshuacalloway/rmeetup) - added post functionality and event comment creation
* [Zishan Ahmad](https://github.com/zishan/rmeetup) - consolidated changes, updated docs
* [Nikica Jokić](https://github.com/neektza/rmeetup) - thread-safe client refactoring, setup for TravisCI, CodeClimate, Coveralls...
