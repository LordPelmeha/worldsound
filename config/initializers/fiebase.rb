require 'firebase'

#base_uri = ENV['FIREBASE_BASE_URI']
#auth_uri = ENV['FIREBASE_AUTH_URI']
#private_key_json = File.read(ENV['FIREBASE_CREDENTIALS'])
#firebase = Firebase::Client.new(base_uri, private_key_json)
class FirebaseAuth
  def self.client
    Firebase::Client.new(ENV['FIREBASE_AUTH_URI'], File.read(ENV['FIREBASE_CREDENTIALS']))
  end 
end

# Класс для работы с Realtime Database
class FirebaseDB
  def self.client
    Firebase::Client.new(ENV['FIREBASE_BASE_URI'], File.read(ENV['FIREBASE_CREDENTIALS']))
  end
end