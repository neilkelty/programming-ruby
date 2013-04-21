class Account
  attr_accessor :balance

  def initalize(balance)
    @balance = balance
  end
end

class Transaction
  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end

  private
    def debit(account, amount)
      account.balance -= amount
    end

    def credit(account, amount)
      account.balance += amount
    end

  public
    def transfer(amount)
      credit(@account_a, amount)
      debit(@account_b, amount)
    end
end

savings = Account.new(100)
checking = Account.new(200)

trans = Transaction.new(checking, savings)
trans.transfer(50)