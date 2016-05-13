package br.com.imaxgames.bancoTeste

class Log {

    Project project
    Phase phase
    Scope scope
    Type type
    String description
    User deletedBy
    Date dateCreated
    int version

    static constraints = {
        description sqlType: 'longText'
    }
}
