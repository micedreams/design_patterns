class RemoteControl
  def initialize
    @on_commands = []
    @off_commands = []
    no_command = NoCommand.new
    (0..7).each do |index|
      on_commands[index] = no_command
      off_commands[index] = no_command
    end
    @undo_command = no_command
  end
  
  def set_command(off_command, on_command, slot)
    @on_commands[slot] = on_command
    @off_commands[slot] = off_command
  end

  def on_button_was_pressed(slot)
    @on_commands[slot].execute
    @undo_command = on_commands[slot]
  end

  def off_button_was_pressed(slot)
    @off_commands[slot].execute
    @undo_command = off_commands[slot]
  end

  def undo_button_was_pressed
    @undo_command.undo
  end
end

class NoCommand
  def execute
  end
end

class Light
  def on
    puts "light turned on"
  end

  def off
    puts "Light turned off"
  end

end

class LightOffCommand
  def initialize(light)
    @light = light
  end

  def execute
    @light.off
  end

  def undo
    @light.on
  end
end

class LightOnCommand
  def initialize(light)
    @light = light
  end

  def execute
    @light.on
  end

  def undo
    @light.off
  end
end
