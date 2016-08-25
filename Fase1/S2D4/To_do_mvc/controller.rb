require_relative "model.rb"
require_relative "view.rb"

class List

  def initialize(argv)
    @argv = argv
    @view = View.new()
    return @view.arg_nil if @argv == []
    @action = @argv[0]
    @task = @argv[1...@argv.length].join(" ")
    @tasker = Task.new(@task)
    define_action
  end

  def define_action
    case @action
    when 'add' then add
    when 'index' then index
    when 'delete' then delete
    when 'complete' then complete
    else return @view.no_action
    end
  end

  def add
    @tasker.create_csv
    @view.add_task(@task)
  end

  def index
    @view.complete_tasks(@tasker.read)
  end

  def delete
    @tasker.delete_csv(@task.to_i - 1)
    @view.delete_task(@task)
  end

  def complete
    @tasker.complete(@task.to_i - 1)
    @view.complete_tasks(@tasker.read)
  end

end

List.new(ARGV)
