# -*- encoding: utf-8 -*-

require "pathname"

require "busser/runner_plugin"

class Busser::RunnerPlugin::Mussel < Busser::RunnerPlugin::Base
  postinstall do
    FileUtils.ln_sf("#{suite_path('mussel')}/musselrc", "/root/.musselrc")
  end

  def test
    inside('/opt/axsh/wakame-vdc/client/mussel/test/acceptance/v12.03/instance-clone') do
      run!('make')
    end
  end
end
