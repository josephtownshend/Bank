```
$$$$$$$\   $$$$$$\  $$\   $$\ $$\   $$\
$$  __$$\ $$  __$$\ $$$\  $$ |$$ | $$  |
$$ |  $$ |$$ /  $$ |$$$$\ $$ |$$ |$$  /
$$$$$$$\ |$$$$$$$$ |$$ $$\$$ |$$$$$  /  
$$  __$$\ $$  __$$ |$$ \$$$$ |$$  $$<   
$$ |  $$ |$$ |  $$ |$$ |\$$$ |$$ |\$$\  
$$$$$$$  |$$ |  $$ |$$ | \$$ |$$ | \$$\
\_______/ \__|  \__|\__|  \__|\__|  \__|
```

# Bank Tech Test

This is a repo documenting the bank mock tech test. This test was set over two days.

-------

## Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Acceptance criteria

Given a client makes a deposit of **1000** on **0-01-2012**/
And a deposit of **2000** on **13-01-2012**/
And a withdrawal of **500** on **14-01-2012**/
When she prints her bank statement/
Then she would see...

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## To Get Started

- Clone this repo\
*`$ git clone git@github.com:josephtownshend/bank.git`

- Run bundle to install dependencies\
*`$ bundle install`

- Run irb in terminal\
*`$ irb`

- Here is a code snippet of how to run the programme\
```
josephs-MacBook-Pro:bank josephtownshend$ irb
2.6.0 :001 > require './lib/bank'
 => true
2.6.0 :002 > bank = Bank.new
 => #<Bank:0x00007f85761a4700 @balance=0, @date="30/07/19", @transaction_history=[], @header="date || credit || debit || balance">
2.6.0 :003 > bank.credit(200)
 => ["30/07/19 || 200.0 || || 200.0"]
2.6.0 :004 > bank.debit(50)
 => ["30/07/19 || 200.0 || || 200.0", "30/07/19 || || 50.0 || 150.0"]
2.6.0 :005 > bank.credit(60)
 => ["30/07/19 || 200.0 || || 200.0", "30/07/19 || || 50.0 || 150.0", "30/07/19 || 60.0 || || 210.0"]
2.6.0 :006 > bank.print_statement
date || credit || debit || balance
30/07/19 || 60.0 || || 210.0
30/07/19 || || 50.0 || 150.0
30/07/19 || 200.0 || || 200.0 => "Statement Printed"
2.6.0 :007 >
```

## Testing

Testing has been done with RSpec, SimpleCov and Rubocop

- To run RSpec\
*`$ rspec`
*`9 examples, 0 failures`

- To run Rubocop\
*`$ rubocop`
*`4 files inspected, no offenses detected`

- SimpleCov runs with RSpec\
*`COVERAGE: 100.00% -- 65/65 lines in 2 files`

--------

## Input/Output

### What do we want to input?
  - **credit** or **debit** amount as an integer or float

### What do we want to output?
  - **date** - **credit** - **debit** - **balance**

## Approach

### 1st attempt

I went in far too quick and didn't think about the requirements. I should have spent maybe an hour just thinking about what I need to do. Instead I made assumptions and got lost.

I did a process observation and got some useful feedback which really helped me drive my second attempt

### 2nd attempt

I decided to work with just one class and build a 'monolith', I know this isn't best practice but I wanted to get the programme working and then refactor after.

My approach was much better and I managed to get the work done. I feel much better about this attempt.

## Notes

  - needs to be 2 decimal places
  - ~date is fixed~
  - methods have multiple responsibilities
