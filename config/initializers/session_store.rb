# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rq_session',
  :secret      => '833129a6ba7a52cbb396f56edc5de9e7a9f2cc4ff67df39916d54fd4c32835af6938c1be8a0ae750055088f368cb8d0a6e887cd79a6d462a3f684d4ca2352858'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
