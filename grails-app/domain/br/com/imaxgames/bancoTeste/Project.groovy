package br.com.imaxgames.bancoTeste

class Project {


    static hasMany = [routines:Routine]

    String name
    String tag

    static constraints = {
        name nullable: false , blank: false
    }
}
