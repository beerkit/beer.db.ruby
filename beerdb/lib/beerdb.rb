# encoding: utf-8


require 'beerdb/models'   # Note: pull in all required deps via beerdb-models
require 'beerdb/note'     # add extension/addon for notes etc.

require 'webservice'

require 'fetcher'
require 'datafile'

require 'gli'

# our own code

require 'beerdb/cli/version'   ## version always goes first
require 'beerdb/cli/opts'
require 'beerdb/cli/main'


module BeerDb

  def self.main
    exit Tool.new.run(ARGV)
  end

end  # module BeerDb


####
##  used for server/service command
##   "preconfigured" base class for webservice
class BeerDbService < Webservice::Base
  include BeerDb::Models   # e.g. Beer, Brewery, Brand, etc.
end



BeerDb.main  if __FILE__ == $0
