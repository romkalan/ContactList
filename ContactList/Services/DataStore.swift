//
//  DataStore.swift
//  ContactList
//
//  Created by Roman Lantsov on 02.03.2023.
//

import UIKit

class DataStore {
    var names: [String] = [
        "Alex",
        "Jerry",
        "Artur",
        "Tom",
        "Richard",
        "Jeremy",
        "John",
        "Steve",
        "Tim",
        "Eric"
    ]
    var surnames: [String] = [
        "Johnson",
        "Cook",
        "Robertson",
        "Lions",
        "Debois",
        "Albertson",
        "Adrian",
        "Enderson",
        "Fisher",
        "Higgins"
    ]
    var phones: [String] = [
        "427946532",
        "925755914",
        "956251865",
        "230045726",
        "286549286",
        "965999763",
        "425563211",
        "425982112",
        "964386129",
        "282974321"
    ]
    var emails: [String] = [
        "hhh.mail.ru",
        "aaa.mail.ru",
        "ggg.mail.ru",
        "ttt.mail.ru",
        "uniq.mail.ru",
        "fff.mail.ru",
        "qqq.mail.ru",
        "yyy.mail.ru",
        "sss.mail.ru",
        "uuu.mail.ru"
    ]
    
    class func getData() -> DataStore {
        DataStore()
    }
}

