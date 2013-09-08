#!/usr/bin/env ruby
#

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'lib')

require 'sinatra'
require 'gittery'

gittery = Gittery.new( 'loose-seal/seal-club',
                        ENV['LS_SERVE_FROM'], 
                        ENV['LS_INT_SITE'] )

get '/' do
  @branches = gittery.branches
  erb :branches
end

get '/checkout/:branch' do
  gittery.checkout params[:branch]
  redirect gittery.base
end
