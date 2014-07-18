class CorsHeaders
  def initialize app
    @app = app
  end

  def call(env)
    response = @app.call(env)
    # наверняка есть способ получше.
    response[1]["Access-Control-Allow-Origin"] = "*"
    response
  end
end
