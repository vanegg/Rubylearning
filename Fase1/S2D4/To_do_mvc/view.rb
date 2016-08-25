class View

  def initialize
  end

  def arg_nil
    puts "Sin argumentos"
  end

  def no_action
    puts "No existe la acción indicada"
  end

  def show_tasks(tasks_array)
    index = 0
    tasks_array.each do |task|
      index += 1
      puts "#{index}. #{task.last}"
    end
  end

  def add_task(task)
    puts "Agregaste la tarea '#{task}' a tu lista"
  end

  def delete_task(task)
    puts "Eliminaste la tarea '#{task}' a tu lista"
  end

  def delete_fail(task)
    puts "No se encontró la tarea '#{task}'"
  end

  def complete_tasks(tasks_array)
    index = 0
    tasks_array.each do |task|
      index += 1
      complete = task.first == 'true' ? 'X' : ' '
      puts "#{index}. [#{complete}] #{task.last}"
    end
  end

end