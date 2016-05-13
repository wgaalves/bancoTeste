package br.com.imaxgames.bancoTeste

import grails.transaction.Transactional

@Transactional
class ScopeService {

    def save(params) {
        def scope = new Scope(params)
        scope.save(failOnError: true, flush: true)

        return scope

    }

    def update(params) {
        def scope = Scope.get(params.scopeId)
        scope.name = params.name
        scope.save(failOnError: true, flush: true)

        return scope
    }

    def delete(params) {
        def scope = Scope.get(params.id)
        def response
        try {
            scope.delete(flush: true)
            response = true
        } catch (Exception e) {
            response = false
        }

        return response

    }
}