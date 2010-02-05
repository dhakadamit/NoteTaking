# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Blog_session',
  :secret      => 'fb679368ff07d5f4a34e8b3051f2e7996a77dee38cd8c2996afc87a0cb3aa22624a379fc1434b747cda11c5c8fbb4698b80d76f329b5cfe0af9d48306dd104be'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
