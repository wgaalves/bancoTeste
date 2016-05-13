package br.com.imaxgames.bancoTeste

class Routine {

    static belongsTo = Project
    static hasMany = [projects:Project]


    Phase phase
    Type type
    Scope scope
    String description
    Date dateCreated
    int ver

    static mapping = {
        description sqlType: 'longText'

    }

    static constraints = {
    }


}
