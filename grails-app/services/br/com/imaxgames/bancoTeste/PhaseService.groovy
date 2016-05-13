package br.com.imaxgames.bancoTeste

import grails.transaction.Transactional

@Transactional
class PhaseService {

    def save(params) {
        def phase = new Phase(params)
            phase.save(failOnError: true,flush: true)

        return phase

    }

    def update(params){
        def phase = Phase.get(params.phaseId)
            phase.name = params.name
            phase.save(failOnError: true,flush: true)

        return phase
    }

    def delete(params){
        def phase = Phase.get(params.id)
        def response
        try {
            phase.delete(flush: true)
            response = true
        }catch (Exception e){
            response = false
        }

        return response

    }
}
