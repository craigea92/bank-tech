# Bank Tech Test

## Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

### User stories

As a bank customer  
so that I can keep my money at a safe place until I need it
I want to deposit my money

As a bank customer
so that I can take out my money whenever I want
I want to withdraw my money I've deposited

As a bank customer
so that I can see my money transaction ordered by date
I want to print my bank statement

### Technology

Ruby
RSpec for test

### How to Use

1. Clone this repository to your local
2. Open your terminal
3. Move into the folder which you cloned
4. Run bundle to install any gems and to run tests, you should run this command: rpsec