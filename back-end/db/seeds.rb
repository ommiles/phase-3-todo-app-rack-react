puts "Clearing old data..."
Category.destroy_all
Task.destroy_all

puts "Seeding Categories..."

# create categories
Category.create(name:"Code")
Category.create(name:"Food")
Category.create(name:"Money")
Category.create(name:"Misc")

puts "Seeding tasks..."

# create tasks
Task.create(text: "Testing task text", category: Category.all.sample)
Task.create(text: "Testing task text 2", category: Category.all.sample)

puts "Done!"