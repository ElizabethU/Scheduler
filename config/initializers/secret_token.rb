# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Scheduler::Application.config.secret_key_base = '5e5a032a373f65b6c765f158a334b2b7362965bce2f5cf79201c933e1f36aa7d1567f916a949e6468e02930ef84ba5c751d8c881a7cb45baaad6118230f04fc1'
