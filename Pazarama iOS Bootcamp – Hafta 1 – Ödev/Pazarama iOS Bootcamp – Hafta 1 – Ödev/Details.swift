
// Eray Erman

import Foundation

class User {
    private var fullname: String?
    private var gender: String?
    private var age: Int?
    private var job: String?
    let payments: [String] = ["Şirin Çileği", "Çilekeş Kart"]
    var favorites: [String] = []
    var chart: [String] = []
    
    func userDetails(fullname: String?, gender: String?, age: Int?, job: String?){
        self.fullname = fullname
        self.gender = gender
        self.age = age
        self.job = job
    }
    
    func showChart(){
        var rd: String?
        print("---------- Sepet ----------")
        
        if !chart.isEmpty {
            for i in chart {
                print(i)
            }
            print("---------------")
            print("Ödeme yapmak için 1'e basın")
            print("Menüye dönmek için M, Ürünleri görmek için P")
            let readline = readLine()
            rd = readline
            
        }else {
            print("Sepet boş")
            print("---------------")
            print("Menüye dönmek için M, Ürünleri görmek için P")
            let readline = readLine()
            rd = readline
            }
        
        switch rd {
        case "1":
            paymentMethods()
        case "M":
            menu.printMenu()
        case "m":
            menu.printMenu()
        case "P":
            product.printProductList()
        case "p":
            product.printProductList()
        default:
            print("Geçersiz giriş. Tekrar deneyin")
            showChart()
        }
    }
    
    func paymentMethods(){
        
        print("Ödeme yöntemi seçin: \(payments[0]) için 1'e, \(payments[1]) için 2'ye basın")
        let rd = readLine()
        
        switch rd {
        case "1":
            print("\(payments[0]) ile ödendi. İyi günlerde kullanın.")
        case "2":
            print("\(payments[1]) ile ödendi. İyi günlerde kullanın.")
        default:
            print("Geçersiz giriş. Tekrar deneyin")
            paymentMethods()
            
        }

        
    }
    
    
    
    func showFavorites(){
        
        var rd: String?
        print("---------- Favori ürünler ----------")
        
        if !favorites.isEmpty {
            for i in favorites {
                print(i)
            }
            print("Menüye dönmek için M, Ürünleri görmek için P")
            print("---------------")
            let readline = readLine()
            rd = readline
        }else {
            print("Favori ürün yok")
            print("---------------")
            print("Menüye dönmek için M, Ürünleri görmek için P")
            let readline = readLine()
            rd = readline
        }
        
        switch rd {
        case "M":
            menu.printMenu()
        case "m":
            menu.printMenu()
        case "P":
            product.printProductList()
        case "p":
            product.printProductList()
        default:
            print("Geçersiz giriş. Tekrar deneyin")
            showChart()
        }
    }
    
}


class Menu {
        
    func printMenu(){
        print("---------- Menü ----------\n1.Ürünler\n2.Favoriler\n3.Sepetim\n4.Ödeme Yöntemleri\n5.Çıkış")
        print("İşlem numarası girin:")
        let readline = readLine()
        
        switch readline {
        case "1":
            product.printProductList()
        case "2":
            user.showFavorites()
        case "3":
            user.showChart()
        case "4":
            break
        case "5":
            break
        default:
            print("Geçerli bir sayı girin")
            
            printMenu()
        }
    }
}

class Products {
    
    var name: String?
    var size: String?
    var rate: String?
    var comments: [String]?
    
    let productsList = ["Çekiç", "Balta", "Şapka","Ayakkabı","Kıyafet","Oyuncak"]
    let productRates = ["3","2","5","4","1","3"]
    let productComments = ["Comment 1", "Comment 2", "Comment 3"]
    
    
    func printProductList(){
        print("---------- Ürün Listesi ----------")
        
        for i in 0...productsList.count-1 {
            print(String(i+1) + " " + productsList[i])
        }
        print("Seçmek için ürün numarasını girin. \nAna menüye dönmek için M")
        let readline = readLine()
        
        switch readline {
        case "1":
            printDetails(num: 1)
        case "2":
            printDetails(num: 2)
        case "3":
            printDetails(num: 3)
        case "4":
            printDetails(num: 4)
        case "5":
            printDetails(num: 5)
        case "6":
            printDetails(num: 6)
        case "M":
            menu.printMenu()
        default:
            print("Geçersiz giriş. Tekrar deneyin")
            printProductList()
        }
    }
    
    func printDetails(num: Int){
        let innerNum = num
        
        print("---------- Ürün Detayları ----------")
        print("> Ürün adı: " + productsList[innerNum] + "\n" + "> Ürün puanı: " + productRates[innerNum])
        print("---Yorumlar---")
        print(productComments[0] + "\n" + productComments[1] + "\n" + productComments[2] )
        print("Favorilere eklemek için 1, Sepete eklemek için 2. \nAna menüye dönmek için M")
        let readline = readLine()
        
        switch readline {
        case "1":
            user.favorites.append(productsList[innerNum])
            print("Favorilere eklendi. Ana menüye yönlendiriliyorsunuz")
            menu.printMenu()
        case "2":
            user.chart.append(productsList[innerNum])
            print("Sepete eklendi. Ana menüye yönlendiriliyorsunuz")
            menu.printMenu()
        case "M":
            menu.printMenu()
        default:
            print("Geçersiz giriş. Tekrar deneyin")
            printDetails(num: innerNum)
            
        }
    }
    
}


