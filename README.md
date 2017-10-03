# Bank Tech Test

In the first tech test of the week, I have been tasked with building a mini-bank account. The account owner should be able to top-up and withdraw money from his account, and see a simplified account statement, reporting the date of every transaction. Language of choice for the task: Ruby

## Getting started

1. Please clone: 'git@github.com:alessiobortone2/tech_test_bank.git'

2. Run `bundle install` to install all gems locally (rspec, rubocop, simplecov, flog, mutant-rspec)


## Usage

`irb -r ./lib/account.rb` to run the program in your console

## Running tests

'rspec -fd' for unit testing
'find lib -name \*.rb | xargs flog -g' for complexity test
'mutant --include lib' for mutation testing
