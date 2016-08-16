def bank_varification_is_true(arg)
  (arg.match /\d{4}\-\d{3}-\d{3}/) ? true : false
end

p bank_varification_is_true("1234-123-123") == true

def bank_varification_exists(account_number)
  (account_number.match /\d{4}\-\d{3}-\d{3}/) ? account_number : nil
end

p bank_varification_exists("1234-123-123") == "1234-123-123"

def bank_account_numbers_array(account_number)
  bank_numbers = Array.new
  bank_numbers << account_number if account_number.match /\d{4}\-\d{3}-\d{3}/
  bank_numbers
end

p bank_account_numbers_array("1234-123-123") == ["1234-123-123"]
p bank_account_numbers_array("1234-12-3-123") == []

def secret_bank_numbers(account_number)
  account_number.gsub(/\d{4}\-\d{3}/, 'XXXX-XXX') if account_number.match /\d{4}\-\d{3}-\d{3}/
end

p secret_bank_numbers("1234-123-123") == "XXXX-XXX-123"


def any_ten(account_number)
  if account_number.match /\d{4}\.\d{3}.\d{3}/
    account_number.gsub(/\./, '-')
  elsif account_number.match /\d{10}/
    account_number.gsub(/(\d{4})(\d{3})(\d{3})/, '\1-\2-\3')
  end
end

p any_ten("1234.123.123") == "1234-123-123"
p any_ten("1234123123") == "1234-123-123"