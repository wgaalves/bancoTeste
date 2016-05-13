package br.com.imaxgames.bancoTeste

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

class TypeController {
    def typeService

    static allowedMethods = [index:'GET',create:'GET',view: 'GET',edit: 'GET',save: 'POST',delete: 'POST',update: 'POST']

    @Secured(['ROLE_ADMIN'])
    def index () {
        model:[typeList:Type.findAll()]
    }

    @Secured(['ROLE_ADMIN'])
    def create(){}

    @Secured(['ROLE_ADMIN'])
    def edit(Long id){
        model:[type:Type.get(params.id)]
    }


    @Secured(['ROLE_ADMIN'])
    def delete(Long id){
        def response = typeService.delete(params)
        def json = [response:response]
        render json as JSON
    }

    @Secured(['ROLE_ADMIN'])
    def update(Long id){
        def type = typeService.update(params)

        redirect(action:'index')

    }

    @Secured(['ROLE_ADMIN'])
    def save(){
        def type = typeService.save(params)

        redirect(action:'index')
    }



}
