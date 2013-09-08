#!/usr/bin/env ruby
#

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'lib')

require 'sinatra'
require 'gittery'

gittery = Gittery.new( 'loose-seal/seal-club',
                        '/Users/jspc/projects/seal-club', 
                        'http://localhost:8000' )

get '/' do
  @branches = gittery.branches
  erb :branches
end

get '/checkout/:branch' do
  gittery.checkout params[:branch]
  redirect gittery.base
end
