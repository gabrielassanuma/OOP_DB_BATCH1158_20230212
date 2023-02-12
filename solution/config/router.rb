class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "what do you wanna do?"
      puts "1 - Show all games"
      puts "2 - Add a new game"
      puts "3 - Show a game"
      puts "4 - Update a game"
      puts "5 - Destroy a game"
      puts "6 - Mark a game as played"
      puts "7 - End"
      puts "---------------------"
      choice = gets.chomp.to_i
      if choice == 1
        @controller.index
      elsif choice == 2 
        @controller.create
      elsif choice == 3 
        @controller.show
      elsif choice == 4 
        @controller.update
      elsif choice == 5
        @controller.destroy
      elsif choice == 6
        @controller.mark_as_played
      elsif choice == 7
        break
      end

    end
  end


  # we need a loop to keep router working on 
  # print the choices for the user
  # get back the user choice
  # call the controller
  # send the action to the controller

  # REFACTORED VERSION
  # class Router
  #   def initialize(controller)
  #     @controller = controller
  #     @running    = true
  #   end
  
  #   def run
  #     puts "-- My Games --"
  #     puts "What do you want to do"
  
  #     while @running
  #       display_tasks
  #       action = gets.chomp.to_i
  #       print `clear`
  #       route_action(action)
  #     end
  #   end
  
  #   private
  
  #   def route_action(action)
  #     case action
  #     when 1 then @controller.index
  #     when 2 then @controller.create
  #     when 3 then @controller.show
  #     when 4 then @controller.update
  #     when 4 then @controller.destroy
  #     when 5 then @controller.mark_as_played
  #     when 6 then stop
  #     else
  #       puts "Please press 1, 2, 3, 4, 5 or 6"
  #     end
  #   end
  
  #   def stop
  #     @running = false
  #   end
  
  #   def display_tasks
  #     puts ""
  #     puts "What do you want to do next?"
  #     puts "1 - List all games"
  #     puts "2 - Show a game"
  #     puts "3 - Add a game"
  #     puts "4 - Delete a game"
  #     puts "5 - Mark a game as played"
  #     puts "6 - Exit"
  #   end
  # end
  


end