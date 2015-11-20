require_relative('./bank_accounts_functions')

##number of bank accounts
bank_accounts_count = number_of_bank_accounts()
puts "Number of accounts: #{bank_accounts_count}"
puts "\n"

##first account owner
first_bank_owner = first_bank_account_holder()
puts "The first bank account owner is #{first_bank_owner}"
puts "\n"

##print to screen name of all bank account owners
puts "Names of bank acccount owners:"
print_owner_names()
puts "\n"

##total cash in bank
total_cash = total_cash_in_bank()
puts "Total in bank: #{total_cash}"
puts "\n"

##last account owner
last_bank_owner = last_bank_account_holder()
puts "The last bank account owner is #{last_bank_owner}"
puts "\n"

##average bank account value
average_account_value = average_bank_account_value()
puts "The average bank account value is #{average_account_value}"
puts "\n"

##total cash in business accounts
total_business_cash = total_cash_in_bank("business")
puts "Total in business accounts: #{total_business_cash}"
puts "\n"

# total_business_cash = total_cash_in_bank("business")
# puts "Total in business accounts: #{total_business_cash}"
# puts "\n"

###holder of largest bank account
largest_account_holder = largest_bank_account_holder()
puts "#{largest_account_holder} has the largest bank account."
puts "\n"

##holder of largest personal account
largest_personal_acc_holder = largest_bank_account_holder("personal")
puts "#{largest_personal_acc_holder} has the largest personal account."
puts "\n"

###any other functionality you want to add.

##total cash in personal accounts
total_personal_cash = total_cash_in_bank("personal")
puts "Total in personal accounts: #{total_personal_cash}"
puts "\n"

##difference between personal accounts total and business accounts total
business_personal_difference = business_vs_personal(total_business_cash, total_personal_cash)
puts business_personal_difference

##create new account
# new_account_1 = create_new_account()
# ACCOUNTS << new_account_1
ACCOUNTS << create_new_account()
puts "\nNew account created! \nHolder: #{ACCOUNTS.last[:holder_name]} \nAmount: #{ACCOUNTS.last[:amount]} \nType: \t#{ACCOUNTS.last[:type]}"
puts "\n" 

##withdraw cash
##deposit cash
##transfer cash
