# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ptt_session',
  :secret      => 'd37de5c471a454aff75b2cbd1e2c829a0da76a52d1c9afbb2c7e44af80b7a40e1bf27c5010f7e9b47af558e4df53ce6cb496e03017cd21733d498474ca40d337'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
