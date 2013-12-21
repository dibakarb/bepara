# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#
def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

Bepara::Application.config.secret_key_base = secure_token

# Bepara::Application.config.secret_key_base = '4f98b45fe60b04ae57dee618d44758a411a40851c2c656618df5d716522685e19e3ba45a48daf6ff2fdaa2f5231cdba7f23685f9a323ceafedd0936b19ade6a0'
