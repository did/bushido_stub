module BushidoStub

  class Railtie < Rails::Railtie

    config.bushido_stub_env = {}

    initializer 'bushido_stub.initialize' do |app|
      if !app.config.bushido_stub_env.nil? && app.config.bushido_stub_env != false
        Bushido.set_env(app.config.bushido_stub_env)
      end
    end
  end

end
