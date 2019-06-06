

class BankAccount {
    
    var accountName : String
    var accountBalance : Int
    var routingNumber: Int
    
    func setAccountName(userName: String) {
        accountName = userName
    }
    
    func makeWithdrawal(withdrawalAmount: Int) {
        accountBalance = accountBalance - withdrawalAmount
    }
    
    func makeDeposit(depositAmount: Int) {
        accountBalance = accountBalance + depositAmount
    }
    
    func setRoutingNumber(userRoutingNumber: Int) {
        routingNumber = userRoutingNumber
    }
    
    
    //write your transfer function here!!
    func accountTransfer(sender: BankAccount, recepient: BankAccount,
                         transferAmount: Int, recepientRoutingNumber: Int) {
        
        if recepient.routingNumber == recepientRoutingNumber {
            sender.accountBalance = sender.accountBalance - transferAmount
            recepient.accountBalance = recepient.accountBalance  + transferAmount
            print("The recepient has successfully received your transfer")
        }   else {
            //otherwise, the routingnumbers DID NOT MATCH HERE AND IT SHOULD NOT GO THROUGH
            print("I'm sorry, the routing numbers did not match. Please try a different routing number")
        }
    }
    
    
    
    //Read me!!
    
    
    //make a function that accepts three things:
    //sender: the bank account which is sending the money
    //recepient: the bank account which is receiving the money
    //routingNumber: a routing number; if the routing number matches the routing number of the recipient account, then
    //we know its the correct accout, so the transfer should go through. If the routing number is wrong, then the transfer should
    //not go through.
    
    
    //What the transfer function SHOULD DO:
    //update the sender's bank balance, since they are the one sending money, they should lose the money from their account they want to send
    //update the recepient's bank balance, since they are the one receiving money, they should gain money since they are RECEIVING the transfer
    
    
    
    //What functions can you use when building the transfer function that lets you save on code?
    
    
    //Don't forget to test your code OUTSIDE OF THE CLASS
    
    init() {
        accountBalance = 0
        accountName = ""
        routingNumber = 0
    }
    
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

