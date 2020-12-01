# bank-tech-test

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

**User Stories**

```

As a user
So I can use my money,
I would like to have bank account.

As a user
So I can move money into my account,
I want to be able to make a deposit.

As a user
So I can spend the money in my account, 
I want to be able to make a withdrawal.

As a user
So I can know how much money I have, 
I want to be able to see my balance.

As a user
So that I know my transaction history, 
I want to be able to see when each transaction was made.

As a user,
So that I can understand my transaction history,
I want to be able to see my transaction history in reverse chronological order.

```

