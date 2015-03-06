require 'door'
class DoorsEngine
  attr_accessor :all_doors

  def initialize
    @all_doors = Array.new(100){Door.new}
  end

  def toggle(door_pass)
    index = door_pass - 1

    loop do
      @all_doors[index].state = @all_doors[index].state == :open ? :closed : :open
      index += door_pass
      break if index >= @all_doors.count
    end
  end

  def toggle_all_doors
    (1..@all_doors.count).each { |door_pass| toggle(door_pass) }
  end

  def count_of_doors_with_state(state)
    @all_doors.count{ |door| door.state == state }
  end

end