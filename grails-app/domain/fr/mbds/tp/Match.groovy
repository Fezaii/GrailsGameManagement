package fr.mbds.tp

class Match {

    User winner
    User looser
    Integer winnerScore
    Integer looserScore

    static constraints = {
        winner nullable: false
        looser nullable: false
        winnerScore nullable: false
        looserScore nullable: false
    }
}
