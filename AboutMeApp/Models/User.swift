//
//  User.swift
//  AboutMeApp
//
//  Created by Mikhail Tabakaev on 4/5/24.
//

import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: Person
    
    //mock objects
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let givenName: String
    let surname: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(givenName) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            givenName: "Mikhail",
            surname: "Tabakaev",
            photo: "IMG_6651BW",
            bio: """
            I was born in Russia in the city of Gorno-Altaisk. I graduated from Gorno-Altaisk State University. For many years I worked as a mountain guide and snowboarding instructor. I traveled a lot around Russia for work. In view of recent events I left Russia. Now I live in Montenegro. I want to become a good specialist so I work and study a lot. Now I am finishing a course from SwiftBook "IOS developer". I will connect my life with development, I really like it.
            """,
            
            job: Company.getCompany()
        )
    }
}

//mock object
struct Company {
    let title: String
    let jobTitle: JobTitle
    let departament: Department
    
    static func getCompany() -> Company {
        Company(
            title: "",
            jobTitle: .ceo,
            departament: .managment
        )
    }
}

enum JobTitle: String{
    case ceo = "CEO"
    case cto = "CTO"
}

enum Department: String {
    case managment = "Managment"
    case marketing = "Marketing"
}
