# How many processes are running
# What the load average is
# menu has options, and will take input., this needs to be changed into 

require 'colorize'


class Application
  # To change this template use File | Settings | File Templates.
  def initialize
    mainMenu
  end


  def folder_list
    folder = "/"
    list_all_files = "ls -al #{folder}"
    output = `#{list_all_files}`
    output
  end

  def processes
    `cat /proc/cpuinfo`
  end

  def interupts
    `cat /proc/interrupts`
    note_on_interrupt = "Did you know that an interrupt is 
    a signal to the processor emitted by hardware or software 
    indicating an event that needs immediate attention"
    note_on_interrupt
  end


  def mainMenu
    puts "   Welcome this thing"
    puts "     ================ "
    puts " What would you like to find out?"
    puts "    (select an option)"
    

    option_one ="1.   How many processes are running?"
    option_two ="2.   List the interrupts"
    option_three="3.    list all the files"

    puts option_one.red
    puts option_two.blue 
    puts option_three.green

case gets.strip
  when "3"
    folder_list

  when "1"
    processes

  when "2"
    interupts

end
end
Application.new
end

# yup, this is not the most robus of menus, but it took a while to figure out what was actually expected
# I blame the weekend. 