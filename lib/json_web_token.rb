class JsonWebToken
  class << self
    def encode(payload, exp = 24.hours.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def decode(token)
      puts "token"
      puts token
      puts "end token"
      puts "secret_key_base"
      puts Rails.application.secrets.secret_key_base
      puts "end - secret_key_base"
      body = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
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
