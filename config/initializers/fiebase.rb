require 'firebase'

base_uri = ENV['FIREBASE_BASE_URI']
private_key_json = File.read(ENV['FIREBASE_CREDENTIALS'])
firebase = Firebase::Client.new(base_uri, private_key_json)
