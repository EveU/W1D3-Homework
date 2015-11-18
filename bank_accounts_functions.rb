ACCOUNTS = [
  {
    holder_name: "Jay",
    amount: 55,
    type: "business"
  },
  {
    holder_name: "Rick",
    amount: 1,
    type: "personal"
  },
  {
    holder_name: "Keith",
    amount: 500,
    type: "business"
  },
  {
    holder_name: "Valerie",
    amount: 100,
    type: "personal"
  },
  {
    holder_name: "Michael",
    amount: 5,
    type: "personal"
  },
  {
    holder_name: "Kate",
    amount: 2000,
    type: "business"
  },
  {
    holder_name: "Tony",
    amount: 150,
    type: "personal"
  },
  {
    holder_name: "Sandy",
    amount: 4500,
    type: "business"
  },
]

def number_of_bank_accounts()
  ACCOUNTS.length
end

def first_bank_account_holder()
  ACCOUNTS.first[:holder_name]
end

def print_owner_names()
  for acc in ACCOUNTS
    puts acc[:holder_name]
  end
end

def total_cash_in_bank()
  total_amount = 0
  for acc in ACCOUNTS
    total_amount += acc[:amount]
  end
  return total_amount
end

def last_bank_account_holder()
  ACCOUNTS.last[:holder_name]
end

def average_bank_account_value(total_amount, number_of_accounts)
  (total_amount.to_f / number_of_accounts).round(2)
end

def total_cash_in_business_accounts()
  business_total = 0
  for acc in ACCOUNTS
    business_total += acc[:amount] if acc[:type] == "business"
  end
  return business_total
end

def largest_bank_account_holder()
  largest_account = {}
  largest_account_amount = 0
  for acc in ACCOUNTS
    if acc[:amount] > largest_account_amount
      largest_account = acc
    end
  end
  return largest_account[:holder_name]
end

def largest_pers_acc_holder()
  largest_account = {}
  largest_account_amount = 0
  for acc in ACCOUNTS
      if (acc[:amount] > largest_account_amount) && (acc[:type] == "personal")
        largest_account = acc
      end
    end
    return largest_account[:holder_name]
end

