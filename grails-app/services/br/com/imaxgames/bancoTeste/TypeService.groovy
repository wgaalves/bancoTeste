package br.com.imaxgames.bancoTeste

import grails.transaction.Transactional

@Transactional
class TypeService {

    def save(params) {
        def type = new Type(params)
        type.save(failOnError: true,flush: true)

        return type

    }

    def update(params){
        def type = Type.get(params.typeId)
        type.name = params.name
        type.save(failOnError: true,flush: true)

        return type
    }

    def delete(params){
        def type = Type.get(params.id)
        def response
        try {
            type.delete(flush: true)
            response = true
        }catch (Exception e){
            response = false
        }

        return response

    }
}
