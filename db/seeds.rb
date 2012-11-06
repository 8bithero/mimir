# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#puts 'CREATING ROLES'
#Role.create([
#  { :name => 'admin' }, 
#  { :name => 'user' }, 
#  { :name => 'finance' }
#], :without_protection => true)
#puts 'SETTING UP DEFAULT USER LOGIN'
#user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
#puts 'New user created: ' << user.name
#user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
#puts 'New user created: ' << user2.name
#user.add_role :admin
#user2.add_role :finance

puts "\n ------------------------------------------------ \n"

puts 'POPULATING REVENUE CODES'
revenue_codes = RevenueCode.create([{ value: '1.10', name: 'Connection Fees' },
                                   { value: '1.20', name: 'Monthly Fees/Subscription' },
                                   { value: '1.30', name: 'Airtime' },
                                   { value: '1.40', name: 'roaming' },
                                   { value: '1.50', name: 'SMS' },
                                   { value: '1.60', name: 'Data' },
                                   { value: '1.70', name: 'VAS Services - Voice' },
                                   { value: '1.80', name: 'VAS Services - SMS' },
                                   { value: '1.90', name: 'VAS Services - Other' },
                                   { value: '1.11', name: 'Incomming Revenue/Interconnection' },
                                   { value: '1.12', name: 'Loyalty Scheme & Renewals' }])


revenue_codes.each do |code_hash|
    puts "New code added: #{code_hash.value} - #{code_hash.name}"
end

puts "\n ------------------------------------------------ \n"

puts 'CREATING 2012 RECORDS'
jan_2012 = Record.create!(year: 2012, month: "January")
puts "#{ jan_2012.month} #{jan_2012.year} record created."

feb_2012 = Record.create!(year: 2012, month: "February")
puts "#{ feb_2012.month} #{feb_2012.year} record created."

puts "\n ------------------------------------------------ \n"

#revenue_codes.each do |code_hash|
#    actual_values = jan_2012.actualvalues.create!()
#    puts "New code added: #{value}"
#  end
#end
