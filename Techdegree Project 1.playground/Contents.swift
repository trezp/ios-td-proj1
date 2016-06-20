
//Can't figure out how to unwrap optional variables with the array of dictionaries that I created, so I am trying to simply by having each student be its own dictionary. 

var joeSmith: [String:Any] = [
    "firstName" : "Joe",
    "lastName": "Smith",
    "height": 42,
    "experience": true,
    "guardians": "Jim and Jan Smith"
]

var jillTanner: [String:Any] = [
    "firstName" : "Joe",
    "lastName": "Smith",
    "height": 42,
    "experience": true,
    "guardians": "Jim and Jan Smith"
]

//Manually creating an array of students
var studentsArray = [joeSmith, jillTanner]
print(studentsArray[0]["height"])

//unwraps the optional function, but this seems really inefficient
func getDictValue(value: String, dict dictionary: Dictionary<String, Any>) {
    //takes the dictionary and the value, assignes value to new variable, then prints without "Optional"
    if let dictValue = dictionary[value] {
        print(dictValue)
    }
}

getDictValue("firstName", dict: joeSmith)
getDictValue("lastName", dict: joeSmith)

//Original data structure. Having trouble accessing variables without the "Optional" thing that I don't quite understand yet. 

//var studentsArray: [Dictionary<String, Any>] = [
//    [
//        "firstName" : "Joe",
//        "lastName": "Smith",
//        "height": 42,
//        "experience": true,
//        "guardians": "Jim and Jan Smith"
//    ],
//    [
//        "firstName" : "Jill",
//        "lastName": "Tanner",
//        "height": 36,
//        "experience": true,
//        "guardians": "Clara Tanner"
//    ],
//    [
//        "firstName" : "Bill",
//        "lastName": "Bon",
//        "height": 43,
//        "experience": true,
//        "guardians": "Sara and Jenny Bon"
//    ],
//    [
//        "firstName" : "Eva",
//        "lastName": "Gordon",
//        "height": 45,
//        "experience": false,
//        "guardians": "Wendy and Mike Gordon"
//    ],
//    [
//        "firstName" : "Matt",
//        "lastName": "Gill",
//        "height": 40,
//        "experience": false,
//        "guardians": "Charles and Sylvia Gill"
//    ],
//    [
//        "firstName" : "Kimmy",
//        "lastName": "Stein",
//        "height": 41,
//        "experience": false,
//        "guardians": "Bill and Hillary Stein"
//    ],
//    [
//        "firstName" : "Sammy",
//        "lastName": "Adams",
//        "height": 45,
//        "experience": false,
//        "guardians": "Jeff Adams"
//    ],
//    [
//        "firstName" : "Karl",
//        "lastName": "Saygan",
//        "height": 42,
//        "experience": true,
//        "guardians": "Heather Bledsoe"
//    ],
//    [
//        "firstName" : "Suzane",
//        "lastName": "Greenberg",
//        "height": 44,
//        "experience": true,
//        "guardians": "Henrietta Dumas"
//    ],
//    [
//        "firstName" : "Sal",
//        "lastName": "Dali",
//        "height": "41",
//        "experience": false,
//        "guardians": "Gala Dali"
//    ],
//    [
//        "firstName" : "Joe",
//        "lastName": "Kavalier",
//        "height": 39,
//        "experience": false,
//        "guardians": "Sam and Elaine Kavalier"
//    ],
//    [
//        "firstName" : "Ben",
//        "lastName": "Finkelstein",
//        "height": 44,
//        "experience": false,
//        "guardians": "Aaron and Jill Finkelstein"
//    ],
//    [
//        "firstName" : "Diego",
//        "lastName": "Soto",
//        "height": 41,
//        "experience": true,
//        "guardians": "Robin and Sirka Soto"
//    ],
//    [
//        "firstName" : "Chloe",
//        "lastName": "Alaska",
//        "height": 47,
//        "experience": false,
//        "guardians": "David and Jamie Alaska"
//    ],
//    [
//        "firstName" : "Arnold",
//        "lastName": "Willis",
//        "height": 43,
//        "experience": false,
//        "guardians": "Claire Willis"
//    ],
//    [
//        "firstName" : "Phillip",
//        "lastName": "Helm",
//        "height": 44,
//        "experience": true,
//        "guardians": "Thomas Helm and Eva Jones"
//    ],
//    [
//        "firstName" : "Les",
//        "lastName": "Clay",
//        "height": 42,
//        "experience": true,
//        "guardians": "Wynonna Brown"
//    ],
//    [
//        "firstName" : "Herschel",
//        "lastName": "Krustofski",
//        "height": 45,
//        "experience": true,
//        "guardians": "Hyman and Rachel Krustofski"
//    ]
//]

