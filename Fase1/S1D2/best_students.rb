students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],

 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],

 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],

 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

def best_students(students)
  best_students = []
  x, y        = 0, 0

   while y < students.length
    current_student  = students[y][x]

    best_students.push(current_student[0]) if current_student[1] == 10

    if x == (students[y].length - 1)
      x = 0
      y += 1
    else
      x += 1
    end

  end
  best_students
end 

p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]

# Initialize best_students array, and x and y counters. 
# WHILE y < students length
# set current student from students[y][x]
# IF current student is 10
# Add to best_students array
# END
# IF is equal to the length of the student array 
# Inteate over multidimensional array
# END
# Return best_students array
