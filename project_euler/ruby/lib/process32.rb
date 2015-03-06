require 'win32/process'


class Process32

  def initialize

  end

  def start_process
    begin
        info = Process.create(
        :command_line => "c:\\Ruby200\\bin\\bundle.bat exec datastore_worker",
        :process_inherit => false,
        :thread_inherit => false
    )
    @pid = info.process_id
    rescue => e
      puts "Backtrace for rescue: #{e.backtrace.join("\t\n")}"
      puts "I am in rescue: #{e.inspect}"
    end
  end

end