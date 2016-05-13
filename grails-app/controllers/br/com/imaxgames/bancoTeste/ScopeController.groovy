package br.com.imaxgames.bancoTeste

import grails.plugin.springsecurity.annotation.Secured

class ScopeController {
    def scopeService

    static allowedMethods = [index:'GET',create:'GET',view: 'GET',edit: 'GET',save: 'POST',delete: 'POST',update: 'POST']

    @Secured(['ROLE_ADMIN'])
    def index () {
        model:[scopeList:Scope.findAll()]
    }

    @Secured(['ROLE_ADMIN'])
    def create(){}

    @Secured(['ROLE_ADMIN'])
    def edit(Long id){
        model:[scope:Scope.get(params.id)]
    }

    @Secured(['ROLE_ADMIN'])
    def view(long id){
        model:[scope:Scope.get(params.id)]
    }


    @Secured(['ROLE_ADMIN'])
    def delete(Long id){
        def response = scopeService.save(params)

        return  response
    }

    @Secured(['ROLE_ADMIN'])
    def update(Long id){
        def scope = scopeService.update(params)

        redirect(action:'index')

    }

    @Secured(['ROLE_ADMIN'])
    def save(){
        def scope = scopeService.save(params)

        redirect(action:'index')
    }
}
