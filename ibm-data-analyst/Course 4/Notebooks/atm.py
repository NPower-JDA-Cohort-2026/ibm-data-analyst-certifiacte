user_pin = 1771
balance = 1200
pin = int(input("Enter the pin:"))
if pin == 1771:
  choice = int(input("Do you want to 1.check balance 2.Withdraw Money 3.Deposit Money."))
  if choice == 1:
    print(f'Your existing balance is {balance}.')
  elif choice == 2:
    withdraw_amount = int(input("How much amount you want to withdraw?"))
    if withdraw_amount <= balance:
      balance = balance - withdraw_amount
      print(f'Amount Withdrawn Successfull!\nTotal Balance is {balance}')
    else:
      print("Not Enough Balance!")
  elif choice == 3:
    deposit_amount = int(input("How much amount you want to deposit?"))
    balance = balance + deposit_amount
    print(f'Deposit Successful! Total Balance is{deposit_amount}')
  
else: