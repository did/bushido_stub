require 'bushido'

if defined?(Rails)
  if Rails::VERSION::MAJOR >= 3
    require 'bushido_stub/railtie'
  else
    puts "[Warning] BushidoStub does not work with Rails < 3"
  end
end
