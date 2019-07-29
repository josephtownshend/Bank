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
  - **date** - string
  - **credit** - float or integer
  - **debit** - float or integer
  - **balance** - float or integer

### What do we want to output?
  - **date** - string
  - **credit** - float
  - **debit** - float
  - **balance** - float

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

Finish. I want to print the full statement.
  - date || credit || debit || balance
  - 14/01/2012 || || 500.00 || 2500.00
  - 13/01/2012 || 2000.00 || || 3000.00
  - 10/01/2012 || 1000.00 || || 1000.00
