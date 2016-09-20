// Soccer Coordinator Project
// Nick Sieber
// 9-11-16

// Collection of players' data
let player1 = ["name":"Joe Smith", "guardian":"Jim & Jan Smith", "exp":"true", "height":"42"]
let player2 = ["name":"Jill Tanner", "guardian":"Clara Tanner", "exp":"true", "height":"36"]
let player3 = ["name":"Bill Bon", "guardian":"Sara & Jenny Bon", "exp":"true", "height":"43"]
let player4 = ["name":"Eva Gordon", "guardian":"Wendy & Mike Gordon", "exp":"false", "height":"45"]
let player5 = ["name":"Matt Gill", "guardian":"Charles & Sylvia Gill", "exp":"false", "height":"40"]
let player6 = ["name":"Kimmy Stein", "guardian":"Bill & Hillary Stein", "exp":"false", "height":"41"]
let player7 = ["name":"Sammy Adams", "guardian":"Jeff Adams", "exp":"false", "height":"45"]
let player8 = ["name":"Karl Saygan", "guardian":"Heather Bledsoe", "exp":"true", "height":"42"]
let player9 = ["name":"Suzane Greenberg", "guardian":"Henrietta Dumas", "exp":"true", "height":"44"]
let player10 = ["name":"Sal Dali", "guardian":"Gala Dali", "exp":"false", "height":"41"]
let player11 = ["name":"Joe Kavalier", "guardian":"Sam & Elaine Kavalier", "exp":"false", "height":"39"]
let player12 = ["name":"Ben Finkelstein", "guardian":"Aaron & Jill Finkelstein", "exp":"false", "height":"44"]
let player13 = ["name":"Diego Soto", "guardian":"Robin & Sarika Soto", "exp":"true", "height":"41"]
let player14 = ["name":"Chloe Alaska", "guardian":"David & Jamie Alaska", "exp":"false", "height":"47"]
let player15 = ["name":"Arnold Willis", "guardian":"Claire Willis", "exp":"false", "height":"43"]
let player16 = ["name":"Phillip Helm", "guardian":"Thomas Helm & Eva Jones", "exp":"true", "height":"44"]
let player17 = ["name":"Les Clay", "guardian":"Wynonna Brown", "exp":"true", "height":"42"]
let player18 = ["name":"Herschel Krustofski", "guardian":"Hyman & Rachel Krustofski", "exp":"true", "height":"45"]

// All entered players' information in one array of dictionaries:
let playerRoster: [[String:String]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

let playerCount = playerRoster.count


// Team roster empty arrays
var sharksRoster: [String] = []
var dragonsRoster: [String] = []
var raptorsRoster: [String] = []
let numberOfTeams = 3

// Declare a constant for how many players per team and a variable to find how many remaining players there are to distribute (will make teams uneven)
let playersPerTeam = playerCount / numberOfTeams
var extraPlayers = playerCount % playersPerTeam

// A for-loop to get an experienced/!experienced player count
var expPlayerCount = 0
var nonExpPlayerCount = 0

for player in playerRoster[0..<playerCount]{
    
    if player["exp"] == "true"{
        expPlayerCount+=1
    } else {
        nonExpPlayerCount+=1
    }
}

// Variables to keep experienced/!experienced players evenly distributed
let expPlayersPerTeam = expPlayerCount / numberOfTeams
let nonExpPlayersPerTeam = nonExpPlayerCount / numberOfTeams

var sharksExpPlayers = 0
var dragonsExpPlayers = 0
var raptorsExpPlayers = 0

var sharksNonExpPlayers = 0
var dragonsNonExpPlayers = 0
var raptorsNonExpPlayers = 0

// Go through each dictionary in playerRoster...
for player in playerRoster[0..<playerCount]{
    
    // ...and use the key: "exp" to find each experienced player...
    if player["exp"] == "true" {
        
        // Compare the amount of experienced players (in each team roster) to the experienced-players-per-team constant to evenly distribute players
        if expPlayersPerTeam != sharksExpPlayers {
            
            sharksExpPlayers+=1
            sharksRoster.append("\(player)")
            let playerName = player["name"]
            let guardian = player["guardian"]
            let teamName = "Sharks"
            let dateTime = "March 17th at 3pm"
            
            print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
            
        } else if expPlayersPerTeam != dragonsExpPlayers {
            
            dragonsExpPlayers+=1
            dragonsRoster.append("\(player)")
            let playerName = player["name"]
            let guardian = player["guardian"]
            let teamName = "Dragons"
            let dateTime = "March 17th at 1pm"
            
            print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
            
        } else if expPlayersPerTeam != raptorsExpPlayers {
            
            raptorsExpPlayers+=1
            raptorsRoster.append("\(player)")
            let playerName = player["name"]
            let guardian = player["guardian"]
            let teamName = "Raptors"
            let dateTime = "March 18th at 1pm"
            
            print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
        } else {
            
            // If there are extra players remaining...
            if extraPlayers != 0 {
                
                // ...then compare the number of players in each team and, when they are all even, add one player to that team...
                if raptorsExpPlayers == dragonsExpPlayers && raptorsExpPlayers == sharksExpPlayers {
                    
                    extraPlayers-=1
                    raptorsExpPlayers+=1
                    
                    raptorsRoster.append("\(player)")
                    let playerName = player["name"]
                    let guardian = player["guardian"]
                    let teamName = "Raptors"
                    let dateTime = "March 18th at 1pm"
                    
                    print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
                    
                } else if dragonsExpPlayers == sharksExpPlayers {
                    
                    extraPlayers-=1
                    dragonsExpPlayers+=1
                    
                    dragonsRoster.append("\(player)")
                    let playerName = player["name"]
                    let guardian = player["guardian"]
                    let teamName = "Dragons"
                    let dateTime = "March 17th at 1pm"
                    
                    print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
                    
                } else {
                    
                    extraPlayers-=1
                    sharksExpPlayers+=1
                    
                    sharksRoster.append("\(player)")
                    let playerName = player["name"]
                    let guardian = player["guardian"]
                    let teamName = "Sharks"
                    let dateTime = "March 17th at 3pm"
                    
                    print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
                    
                }
            }
        }
    // ...else use the key: "exp" to find each !experienced player...
    } else {
        
         // Compare the amount of !experienced players (in each team roster) to the !experienced-players-per-team constant to evenly distribute players
        if nonExpPlayersPerTeam != sharksNonExpPlayers{
            
            sharksNonExpPlayers+=1
            sharksRoster.append("\(player)")
            let playerName = player["name"]
            let guardian = player["guardian"]
            let teamName = "Sharks"
            let dateTime = "March 17th at 3pm"
            
            print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
            
        } else if nonExpPlayersPerTeam != dragonsNonExpPlayers{
            
            dragonsNonExpPlayers+=1
            dragonsRoster.append("\(player)")
            let playerName = player["name"]
            let guardian = player["guardian"]
            let teamName = "Dragons"
            let dateTime = "March 17th at 1pm"
            
            print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
            
        } else if nonExpPlayersPerTeam != raptorsNonExpPlayers {
            
            raptorsNonExpPlayers+=1
            raptorsRoster.append("\(player)")
            let playerName = player["name"]
            let guardian = player["guardian"]
            let teamName = "Raptors"
            let dateTime = "March 18th at 1pm"
            
            print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
            
        } else {
            
            // If there are extra players remaining...
            if extraPlayers != 0 {
                
                // ...then compare the number of players in each team and, when they are all even, add one player to that team...
                if raptorsNonExpPlayers == dragonsNonExpPlayers && raptorsNonExpPlayers == sharksNonExpPlayers {
                    
                    extraPlayers-=1
                    raptorsNonExpPlayers+=1
                    
                    raptorsRoster.append("\(player)")
                    let playerName = player["name"]
                    let guardian = player["guardian"]
                    let teamName = "Raptors"
                    let dateTime = "March 18th at 1pm"
                    
                    print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
                    
                    
                } else if dragonsNonExpPlayers == sharksNonExpPlayers {
                    
                    extraPlayers-=1
                    dragonsNonExpPlayers+=1
                    
                    dragonsRoster.append("\(player)")
                    let playerName = player["name"]
                    let guardian = player["guardian"]
                    let teamName = "Dragons"
                    let dateTime = "March 17th at 1pm"
                    
                    print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
                    
                } else {
                    
                    extraPlayers-=1
                    sharksNonExpPlayers+=1
                    
                    sharksRoster.append("\(player)")
                    let playerName = player["name"]
                    let guardian = player["guardian"]
                    let teamName = "Sharks"
                    let dateTime = "March 17th at 3pm"
                    
                    print("Congratulations \(guardian!)!\n Your young athlete, \(playerName!), has made it onto the \(teamName) team this year!  Because showing support for your young one can mean so much, I thought I should let you know \(playerName!)'s first game has been scheduled for \(dateTime).  Go \(teamName)!")
                    
                }
            }
        }
    }
}