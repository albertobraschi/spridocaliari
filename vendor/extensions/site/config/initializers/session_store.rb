# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_caliari_session',
  :secret      => '2bd8ce47a424ffb9739a4a43ea2b8ac3d253f88651504660c2c1e17d19f448994f48c85f3f679766bd60052fb47930a46014465b01a31c5467a0808e31fbc146'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store