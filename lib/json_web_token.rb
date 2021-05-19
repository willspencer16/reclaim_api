class JsonWebToken
  class << self
    def encode(payload, exp = 24.hours.from_now)
      payload[:exp] = exp.to_i

      if ENV["RACK_ENV"]="production"
        secret_key_base = ENV["SECRET_KEY_BASE"]
      else
        secret_key_base = Rails.application.secrets.secret_key_base
      end


      JWT.encode(payload, secret_key_base)
    end

    def decode(token)
      puts "token"
      puts token
      puts "end token"
      puts "secret_key_base"
      puts Rails.application.secrets.secret_key_base
      puts "end - secret_key_base"

      if ENV["RACK_ENV"]="production"
        secret_key_base = ENV["SECRET_KEY_BASE"]
      else
        secret_key_base = Rails.application.secrets.secret_key_base
      end

      puts "Secret key"
      puts secret_key_base

      body = JWT.decode(token, secret_key_base)[0]
      puts "body"
      puts body
      puts "end-body"
      HashWithIndifferentAccess.new body
    rescue
      puts "is this being rescued?"
      nil
    end
  end
 end
