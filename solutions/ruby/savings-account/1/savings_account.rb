module SavingsAccount
  def self.interest_rate(balance)
    if balance >= 0 && balance < 1000
      0.5
    elsif balance >= 1000 && balance < 5000
      1.621
    elsif balance >= 5000
      2.475
    else
      3.213
    end
  end

  # 100 * 1.05 => 105
  def self.mult_rate(balance)
    1 + (interest_rate(balance) / 100)
  end

  def self.annual_balance_update(balance)
    balance * mult_rate(balance)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    num_of_years = 0
    new_balance = current_balance

    until new_balance >= desired_balance
      num_of_years += 1
      new_balance = annual_balance_update(new_balance)
    end

    num_of_years
  end
end
