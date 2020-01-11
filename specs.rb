
The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.
For more details, please visit https://support.apple.com/kb/HT208050.
[13:29:15] (master) ruby-oo-self-cash-register-lab-dumbo-web-010620
// ♥ learn

CashRegister
  ::new
    sets an instance variable @total on initialization to zero (FAILED - 1)
    optionally takes an employee discount on initialization (FAILED - 2)
  #total
    returns the current total (FAILED - 3)
  #add_item
    accepts a title and a price and increases the total (FAILED - 4)
    also accepts an optional quantity (FAILED - 5)
    doesn't forget about the previous total (FAILED - 6)
  #apply_discount
    the cash register was initialized with an employee discount
      applies the discount to the total price (FAILED - 7)
      returns success message with updated total (FAILED - 8)
      reduces the total (FAILED - 9)
    the cash register was not initialized with an employee discount
      returns a string error message that there is no discount to apply (FAILED - 10)
  #items
    returns an array containing all items that have been added (FAILED - 11)
  #void_last_transaction
    subtracts the last item from the total (FAILED - 12)
    returns the total to 0.0 if all items have been removed (FAILED - 13)

Failures:

  1) CashRegister ::new sets an instance variable @total on initialization to zero
     Failure/Error: let(:cash_register) { CashRegister.new }
     
     NameError:
       uninitialized constant CashRegister
     # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
     # ./spec/cash_register_spec.rb:7:in `block (3 levels) in <top (required)>'

  2) CashRegister ::new optionally takes an employee discount on initialization
     Failure/Error: let(:cash_register_with_discount) { CashRegister.new(20) }
     
     NameError:
       uninitialized constant CashRegister
     # ./spec/cash_register_spec.rb:3:in `block (2 levels) in <top (required)>'
     # ./spec/cash_register_spec.rb:11:in `block (3 levels) in <top (required)>'

  3) CashRegister #total returns the current total
     Failure/Error: let(:cash_register) { CashRegister.new }
     
     NameError:
       uninitialized constant CashRegister
     # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
     # ./spec/cash_register_spec.rb:17:in `block (3 levels) in <top (required)>'

  4) CashRegister #add_item accepts a title and a price and increases the total
     Failure/Error: let(:cash_register) { CashRegister.new }
     
     NameError:
       uninitialized constant CashRegister
     # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
     # ./spec/cash_register_spec.rb:24:in `block (4 levels) in <top (required)>'
     # ./spec/cash_register_spec.rb:24:in `block (3 levels) in <top (required)>'

  5) CashRegister #add_item also accepts an optional quantity
     Failure/Error: let(:cash_register) { CashRegister.new }
     
     NameError:
       uninitialized constant CashRegister
     # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
     # ./spec/cash_register_spec.rb:28:in `block (4 levels) in <top (required)>'
     # ./spec/cash_register_spec.rb:28:in `block (3 levels) in <top (required)>'

  6) CashRegister #add_item doesn't forget about the previous total
     Failure/Error: let(:cash_register) { CashRegister.new }
     
     NameError:
       uninitialized constant CashRegister
     # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
     # ./spec/cash_register_spec.rb:32:in `block (3 levels) in <top (required)>'

  7) CashRegister #apply_discount the cash register was initialized with an employee discount applies the discount to the total price
     Failure/Error: let(:cash_register_with_discount) { CashRegister.new(20) }
     
     NameError:
       uninitialized constant CashRegister
     # ./spec/cash_register_spec.rb:3:in `block (2 levels) in <top (required)>'
     # ./spec/cash_register_spec.rb:44:in `block (4 levels) in <top (required)>'

  8) CashRegister #apply_discount the cash register was initialized with an employee discount returns success message with updated total
     Failure/Error: let(:cash_register_with_discount) { CashRegister.new(20) }
     
     NameError:
       uninitialized constant CashRegister
     # ./spec/cash_register_spec.rb:3:in `block (2 levels) in <top (required)>'
     # ./spec/cash_register_spec.rb:50:in `block (4 levels) in <top (required)>'

  9) CashRegister #apply_discount the cash register was initialized with an employee discount reduces the total
     Failure/Error: let(:cash_register) { CashRegister.new }
     
     NameError:
       uninitialized constant CashRegister
     # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
     # ./spec/cash_register_spec.rb:55:in `block (4 levels) in <top (required)>'

  10) CashRegister #apply_discount the cash register was not initialized with an employee discount returns a string error message that there is no discount to apply
      Failure/Error: let(:cash_register) { CashRegister.new }
      
      NameError:
        uninitialized constant CashRegister
      # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
      # ./spec/cash_register_spec.rb:63:in `block (4 levels) in <top (required)>'

  11) CashRegister #items returns an array containing all items that have been added
      Failure/Error: new_register = CashRegister.new
      
      NameError:
        uninitialized constant CashRegister
      # ./spec/cash_register_spec.rb:70:in `block (3 levels) in <top (required)>'

  12) CashRegister #void_last_transaction subtracts the last item from the total
      Failure/Error: let(:cash_register) { CashRegister.new }
      
      NameError:
        uninitialized constant CashRegister
      # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
      # ./spec/cash_register_spec.rb:79:in `block (3 levels) in <top (required)>'

  13) CashRegister #void_last_transaction returns the total to 0.0 if all items have been removed
      Failure/Error: let(:cash_register) { CashRegister.new }
      
      NameError:
        uninitialized constant CashRegister
      # ./spec/cash_register_spec.rb:2:in `block (2 levels) in <top (required)>'
      # ./spec/cash_register_spec.rb:86:in `block (3 levels) in <top (required)>'

Finished in 0.00791 seconds (files took 0.21875 seconds to load)
13 examples, 13 failures

Failed examples:

rspec ./spec/cash_register_spec.rb:6 # CashRegister ::new sets an instance variable @total on initialization to zero
rspec ./spec/cash_register_spec.rb:10 # CashRegister ::new optionally takes an employee discount on initialization
rspec ./spec/cash_register_spec.rb:16 # CashRegister #total returns the current total
rspec ./spec/cash_register_spec.rb:23 # CashRegister #add_item accepts a title and a price and increases the total
rspec ./spec/cash_register_spec.rb:27 # CashRegister #add_item also accepts an optional quantity
rspec ./spec/cash_register_spec.rb:31 # CashRegister #add_item doesn't forget about the previous total
rspec ./spec/cash_register_spec.rb:43 # CashRegister #apply_discount the cash register was initialized with an employee discount applies the discount to the total price
rspec ./spec/cash_register_spec.rb:49 # CashRegister #apply_discount the cash register was initialized with an employee discount returns success message with updated total
rspec ./spec/cash_register_spec.rb:54 # CashRegister #apply_discount the cash register was initialized with an employee discount reduces the total
rspec ./spec/cash_register_spec.rb:62 # CashRegister #apply_discount the cash register was not initialized with an employee discount returns a string error message that there is no discount to apply
rspec ./spec/cash_register_spec.rb:69 # CashRegister #items returns an array containing all items that have been added
rspec ./spec/cash_register_spec.rb:78 # CashRegister #void_last_transaction subtracts the last item from the total
rspec ./spec/cash_register_spec.rb:85 # CashRegister #void_last_transaction returns the total to 0.0 if all items have been removed

[13:29:28] (master) ruby-oo-self-cash-register-lab-dumbo-web-010620
// ♥ 