# Old code
module PayAPI
  def pay()
    # your code here
  end
end

class PayWithVietcomBank
  include PayAPI
  def start_pay()
    # your code here
    PayAPI.pay()
  end
end

class PayWithVietinBank
  include PayAPI
  def start_pay()
    # your code here
    PayAPI.pay()
  end
end

# Problem: If change name of pay method in PayAPI, you need change this name in all class use it
# Soluntion: Use adapter pattern
# Code refactored

module PayAPI
  def pay()
    # your code here
  end
end

module CustomPayAPI
  include PayAPI
  def custom_pay()
    PayAPI.pay()
  end
end

class PayWithVietcomBank
  include CustomPayAPI
  def start_pay()
    # your code here
    CustomPayAPI.custom_pay()
  end
end

class PayWithVietinBank
  include CustomPayAPI
  def start_pay()
    # your code here
    CustomPayAPI.custom_pay()
  end
end