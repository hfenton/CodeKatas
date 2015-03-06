require 'benchmark'
nginx = "nginx"
options = ''
config_file = 'config'


Benchmark.bm(20) do |x|
  x.report ('<<') do
    1_000_000.times do

      y = "#{nginx} #{options}".strip << " -c \"#{config_file}\""
    end
  end
  x.report('+') do
    1_000_000.times do
      y = "#{nginx} #{options}".strip + " -c \"#{config_file}\""
    end
  end
  x.report('string interpolation') do
    1_000_000.times do
      y = "#{nginx} #{options} -c \"#{config_file}\""
    end
  end
  x.report('interpolation & strip') do
    1_000_000.times do
      y = "#{nginx} -c \"#{config_file}\" #{options}".strip
    end
  end
  x.report('<< interpolation strip') do
    options << ' -c'
    1_000_000.times do
      y = "#{nginx} #{options.strip} \"#{config_file}\""
    end
  end

end