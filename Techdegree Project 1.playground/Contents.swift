
var studentsArray = [
    [
        "firstName" : "Joe",
        "lastName": "Smith",
        "height": "42",
        "experience": "true",
        "guardians": "Jim and Jan Smith"
    ],
    [
        "firstName" : "Jill",
        "lastName": "Tanner",
        "height": "36",
        "experience": "true",
        "guardians": "Clara Tanner"
    ],
    [
        "firstName" : "Bill",
        "lastName": "Bon",
        "height": "43",
        "experience": "true",
        "guardians": "Sara and Jenny Bon"
    ],
    [
        "firstName" : "Eva",
        "lastName": "Gordon",
        "height": "45",
        "experience": "false",
        "guardians": "Wendy and Mike Gordon"
    ],
    [
        "firstName" : "Matt",
        "lastName": "Gill",
        "height": "40",
        "experience": "false",
        "guardians": "Charles and Sylvia Gill"
    ],
    [
        "firstName" : "Kimmy",
        "lastName": "Stein",
        "height": "41",
        "experience": "false",
        "guardians": "Bill and Hillary Stein"
    ],
    [
        "firstName" : "Sammy",
        "lastName": "Adams",
        "height": "45",
        "experience": "false",
        "guardians": "Jeff Adams"
    ],
    [
        "firstName" : "Karl",
        "lastName": "Saygan",
        "height": "42",
        "experience": "true",
        "guardians": "Heather Bledsoe"
    ],
    [
        "firstName" : "Suzane",
        "lastName": "Greenberg",
        "height": "44",
        "experience": "true",
        "guardians": "Henrietta Dumas"
    ],
    [
        "firstName" : "Sal",
        "lastName": "Dali",
        "height": "41",
        "experience": "false",
        "guardians": "Gala Dali"
    ],
    [
        "firstName" : "Joe",
        "lastName": "Kavalier",
        "height": "39",
        "experience": "false",
        "guardians": "Sam and Elaine Kavalier"
    ],
    [
        "firstName" : "Ben",
        "lastName": "Finkelstein",
        "height": "44",
        "experience": "false",
        "guardians": "Aaron and Jill Finkelstein"
    ],
    [
        "firstName" : "Diego",
        "lastName": "Soto",
        "height": "41",
        "experience": "true",
        "guardians": "Robin and Sirka Soto"
    ],
    [
        "firstName" : "Chloe",
        "lastName": "Alaska",
        "height": "47",
        "experience": "false",
        "guardians": "David and Jamie Alaska"
    ],
    [
        "firstName" : "Arnold",
        "lastName": "Willis",
        "height": "43",
        "experience": "false",
        "guardians": "Claire Willis"
    ],
    [
        "firstName" : "Phillip",
        "lastName": "Helm",
        "height": "44",
        "experience": "true",
        "guardians": "Thomas Helm and Eva Jones"
    ],
    [
        "firstName" : "Les",
        "lastName": "Clay",
        "height": "42",
        "experience": "true",
        "guardians": "Wynonna Brown"
    ],
    [
        "firstName" : "Herschel",
        "lastName": "Krustofski",
        "height": "45",
        "experience": "true",
        "guardians": "Hyman and Rachel Krustofski"
    ]
]



//////////SORTING BY EXPERIENCE LEVEL////////////////

var experiencedArray: [Dictionary<String,String>] = []
var inexperiencedArray: [Dictionary<String,String>] = []
var teamOne: [Dictionary<String,String>] = []
var teamTwo: [Dictionary<String,String>] = []
var teamThree: [Dictionary<String,String>] = []

//Sets max number of students per team by counting the number of experienced and inexperienced students and dividing by number of teams
func getNumberofStudentsPerTeam(numOfTeams numOfTeams: Int, isExperienced: Bool) -> Int {
    var studentsWithExperience = 0
    var studentsWithoutExperience = 0
   
    for student in studentsArray {
        if student["experience"] == "true" {
            studentsWithExperience += 1
        } else if student["experience"] == "false" {
            studentsWithoutExperience += 1
        }
    }
    
    if isExperienced == true {
        return studentsWithExperience / numOfTeams
    } else {
        return studentsWithoutExperience / numOfTeams
    }
}

//Saves the max number of experienced and inexperienced players per team into variables
var experiencedPlayersPerTeam = getNumberofStudentsPerTeam(numOfTeams: 3, isExperienced: true)
var inexperiencedPlayersPerTeam = getNumberofStudentsPerTeam(numOfTeams: 3, isExperienced: false)
var totalTeamSize = experiencedPlayersPerTeam + inexperiencedPlayersPerTeam


//sorts players into experience level arrays
for student in studentsArray {
    if student["experience"] == "true" {
        experiencedArray.append(student)
    } else {
        inexperiencedArray.append(student)
    }
}
////////SORTING BY HEIGHT////////////////
//func getArrayOfHeights() -> Array<Double> {
//    var heightArray: [Double] = [ ]
//    for student in studentsArray {
//        let studentHeights = Double(student["height"]!)
//        heightArray.append(studentHeights!)
//    }
//    return heightArray
//}
//
//var heightArray = getArrayOfHeights()
//var tallest = [Double] ()
//var shortest = [Double] ()
//var middle = [Double] ()
//
//
//func findAndRemoveHighestNumber() {
//    for height in 0...heightArray.count - 1 {
//        if heightArray[height] == heightArray.maxElement() {
//            tallest.append(heightArray.maxElement()!)
//            //heightArray.removeAtIndex(height)
//        }
//    }
//    print(heightArray.count)
//}
//
//findAndRemoveHighestNumber()
////sortByHeight()
//print(tallest)
//print(shortest)
//print(middle)

//Compares the number of experienced players in the team's array with the allowed number of experienced players. Players are pushed into the array until the max number is reached.
for student in experiencedArray {
    if teamOne.count + 1 <= experiencedPlayersPerTeam  {
        teamOne.append(student)
    } else if teamTwo.count + 1 <= experiencedPlayersPerTeam {
        teamTwo.append(student)
    } else if teamThree.count + 1 <= experiencedPlayersPerTeam {
        teamThree.append(student)
    }
}

for student in inexperiencedArray {
    if teamOne.count + 1 <= totalTeamSize {
        teamOne.append(student)
    } else if teamTwo.count + 1 <= totalTeamSize{
        teamTwo.append(student)
    } else if teamThree.count + 1 <= totalTeamSize {
        teamThree.append(student)
    }
}


print("Team One has \(teamOne.count) members")
print("Team Two has \(teamTwo.count) members")
print("Team Three has \(teamThree.count) members")
print(teamOne.count + teamTwo.count + teamThree.count)



for student in teamOne {
    print(student["experience"])
}
print("****************************")
for student in teamTwo {
    print(student["experience"])
}
print("****************************")
for student in teamThree {
    print(student["experience"])
}
print("****************************")




