// Soccer Coordinator Project
// Nick Sieber
// 9-11-16

// ["[0]player name", "[1]player's guardian/s", "[2]experienced?", "[3]height (in inches)"]

let player1: [String] = ["Joe Smith", "Jim & Jan Smith", "true", "42"]
let player2: [String]  = ["Ms Jill Tanner", "Clara Tanner", "true", "36"]
let player3: [String]  = ["Bill Bon", "Sara & Jenny Bon", "true", "43"]
let player4: [String]  = ["Eva Gordon", "Wendy & Mike Gordon", "false", "45"]
let player5: [String]  = ["Matt Gill", "Charles & Sylvia Gill", "false", "40"]
let player6: [String]  = ["Kimmy Stein", "Bill & Hillary Stein", "false", "41"]
let player7: [String]  = ["Sammy Adams", "Jeff Adams", "false", "45"]
let player8: [String]  = ["Karl Saygan", "Heather Bledsoe", "true", "42"]
let player9: [String]  = ["Suzane Greenberg", "Henrietta Dumas", "true", "44"]
let player10: [String]  = ["Sal Dali", "Gala Dali", "false", "41"]
let player11: [String]  = ["Joe Kavalier", "Sam & Elaine Kavalier", "false", "39"]
let player12: [String]  = ["Ben Finkelstein", "Aaron & Jill Finkelstein", "false", "44"]
let player13: [String]  = ["Diego Soto", "Robin & Sarika Soto", "true", "41"]
let player14: [String]  = ["Chloe Alaska", "David & Jamie Alaska", "false", "47"]
let player15: [String]  = ["Arnold Willis", "Claire Willis", "false", "43"]
let player16: [String]  = ["Phillip Helm", "Thomas Helm & Eva Jones", "true", "44"]
let player17: [String]  = ["Les Clay", "Wynonna Brown", "true", "42"]
let player18: [String]  = ["Herschel Krustofski", "Hyman & Rachel Krustofski", "true", "45"]


// All entered players' information in one array:

let playerRoster: [[String]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

let playerCount = playerRoster.count


// Team roster empty arrays

var sharksRoster: [String] = []
var dragonsRoster: [String] = []
var raptorsRoster: [String] = []

var expPlayerCount = 0
var nonExpPlayerCount = 0

// Separate all players into their respective teams

for player in playerRoster[0..<playerCount]{
    
    // Find the experienced players
    if player[2] == "true" {
        
        expPlayerCount+=1
        
        if expPlayerCount % 3 == 0 {
            
            sharksRoster.append("\(player)")
            let playerName = player[0]
            let guardian = player[1]
            let teamName = "Sharks"
            let dateTime = "March 17th at 3pm"
            
            print("Congratulations \(guardian)!\n Your young athlete, \(playerName), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
            
        } else if expPlayerCount % 2 == 0 {
            
            dragonsRoster.append("\(player)")
            let playerName = player[0]
            let guardian = player[1]
            let teamName = "Dragons"
            let dateTime = "March 17th at 1pm"
            
            print("Congratulations \(guardian)!\n Your young athlete, \(playerName), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
            
        } else {
            
            raptorsRoster.append("\(player)")
            let playerName = player[0]
            let guardian = player[1]
            let teamName = "Raptors"
            let dateTime = "March 18th at 1pm"
            
            print("Congratulations \(guardian)!\n Your young athlete, \(playerName), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
        }
        
        // Find the non-experienced players
    } else {
        
        nonExpPlayerCount+=1
        
        if nonExpPlayerCount % 3 == 0 {
            
            sharksRoster.append("\(player)")
            let playerName = player[0]
            let guardian = player[1]
            let teamName = "Sharks"
            let dateTime = "March 17th at 3pm"
            
            print("Congratulations \(guardian)!\n Your young athlete, \(playerName), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
            
        } else if nonExpPlayerCount % 2 == 0 {
            
            dragonsRoster.append("\(player)")
            let playerName = player[0]
            let guardian = player[1]
            let teamName = "Dragons"
            let dateTime = "March 17th at 1pm"
            
            print("Congratulations \(guardian)!\n Your young athlete, \(playerName), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
            
        } else {
            
            raptorsRoster.append("\(player)")
            let playerName = player[0]
            let guardian = player[1]
            let teamName = "Raptors"
            let dateTime = "March 18th at 1pm"
            
            print("Congratulations \(guardian)!\n Your young athlete, \(playerName), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
            
        }
    }
}
