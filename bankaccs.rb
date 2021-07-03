class Bankacc
    attr_accessor :bankname, :numberacc, :balance
    def initialize (bankname, numberacc, balance = 0)
        @bankname = bankname
        @numberacc = numberacc
        @balance = balance       
    end

    def transfer (balance_to_transf, numberacc, array)
        if @balance < balance_to_transf 
            raise "No enought balance"
        else
        @balance = balance - balance_to_transf
        acc_to = array.select { |obj| obj.numberacc == numberacc }[0]
        acc_to.balance =  acc_to.balance + balance_to_transf
        end
    end
end

ary = []

def create_acc (bankname, numberacc, balance, array)
    array.push(Bankacc.new(bankname, numberacc, balance))
end  

create_acc('SANTANDER', 123456789, 5000, ary)
create_acc('SANTANDER', 987654321, 5000, ary)

ary.select {|obj| obj.numberacc == 123456789}[0].transfer(5000, 987654321, ary)

class User
    attr_reader :username, :user_accs
    def initialize (username, user_accs)
        @username = username
        @user_accs = user_accs
    end
    def total_money
        sum = 0
        user_accs.each do |i|
            sum = sum + i.balance
        end
        pp sum
    end
end

p1 = User.new('ARNOLDO', ary)


