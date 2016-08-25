require 'csv'

class Task

  def initialize(task = "")
    @task = task
    @file = 'list_tasks.csv'
  end

  def create_csv
    complete = false
    CSV.open(@file, "a+") { |csv| csv << [complete, @task] }
  end

  def read
   CSV.read(@file)
  end

  def delete_csv(index)
    @old_csv = read
    @old_csv.delete_at(index) if index <= @old_csv.length
    update
  end

  def complete(index)
    @old_csv = read
    @old_csv[index][0] = @old_csv[index][0] == "true" ? false : true if index <= @old_csv.length
    update
  end

  def update
    CSV.open(@file, "wb") do |csv| 
      @old_csv.each do |row|
        csv << row 
      end
    end
  end

end