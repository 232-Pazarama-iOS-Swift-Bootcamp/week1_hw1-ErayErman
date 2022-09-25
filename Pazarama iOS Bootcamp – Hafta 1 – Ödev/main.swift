// Eray Erman

import Foundation
let user = User()
let product = Products()
let menu = Menu()
var counter = 1

// Login
print("Sirinleseneye Hosgeldiniz!" + "\nDevam etmek için lütfen giriş yapın. ")
login()
menu.printMenu()




//----------------------

func login(){
    print("Tam adınız:")
    let name = readLine()
    print("Cinsiyet:")
    let gender = readLine()
    print("Yaş:")
    let age = readLine()
    print("İş:")
    let job = readLine()
    user.userDetails(fullname: name, gender: gender, age: Int(age!), job: job)
}
