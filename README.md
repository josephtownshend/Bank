# Bank Tech Test

This is a repo documenting a mock tech test set over two days.

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

## Input/Output

### What do we want to input?
  - **credit** or **debit** amount as an integer or float

### What do we want to output?
  - **date** - **credit** - **debit** - **balance**

## Approach

I want to TDD in a clear and efficient manner and create clean DRY code, written for humans.

1. I want to set my project up appropriately.
2. I want to write the basic behaviour of the Bank class.
  - get_balance
  - deposit(amount)
  - withdraw(amount)
3. I want all code to be created using TDD.
4. I want to then work on printing the first line of statement.
  - date || credit || debit || balance
5. I want to set up the User - so they can use their bank account.
6. I want to bring in their balance

This approach didn't work for me - I became blocked and lost. So I went back and tried again in a much simpler way.


Finish. I want to print the full statement.
  - date || credit || debit || balance
  - 14/01/2012 || || 500.00 || 2500.00
  - 13/01/2012 || 2000.00 || || 3000.00
  - 10/01/2012 || 1000.00 || || 1000.00



  NOTES

  - output needs to be floats.
  - can we do something about the date?
  - ~change tests to break on to multiple lines (in array, each line in "" with a comma, then .join("\"))~
  - SRP some of the methods?
  - finish README.md
  - remove header and just push it into the []?
