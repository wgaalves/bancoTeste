package br.com.imaxgames.bancoTeste

import grails.plugin.springsecurity.annotation.Secured

class PhaseController {
    def phaseService

    static allowedMethods = [index:'GET',create:'GET',view: 'GET',edit: 'GET',save: 'POST',delete: 'POST',update: 'POST']

    @Secured(['ROLE_ADMIN'])
    def index () {
        model:[phaseList:Phase.findAll()]
    }

    @Secured(['ROLE_ADMIN'])
    def create(){}

    @Secured(['ROLE_ADMIN'])
    def edit(Long id){
        model:[phase:Phase.get(params.id)]
    }

    @Secured(['ROLE_ADMIN'])
    def view(Long id){
        model:[phase:Phase.get(params.id)]
    }

    @Secured(['ROLE_ADMIN'])
    def delete(Long id){
        log.debug(params)
        def response = phaseService.delete(params)

        return response
    }

    @Secured(['ROLE_ADMIN'])
    def update(){
        log.debug(params)
        def phase = phaseService.update(params)

        redirect(action:'index' )
    }

    @Secured(['ROLE_ADMIN'])
    def save(){
        log.debug(params)
        def phase = phaseService.save(params)

        redirect(action:'index')
    }

}
