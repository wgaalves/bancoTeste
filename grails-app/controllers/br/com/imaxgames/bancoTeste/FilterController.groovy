package br.com.imaxgames.bancoTeste

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

class FilterController {
    def filterService

    @Secured(['ROLE_ADMIN'])
    def index() {
        model:[projectList:Project.findAll(),typeList:Type.findAll(),scopeList:Scope.findAll(),phaseList:Phase.findAll()]
    }
    @Secured(['ROLE_ADMIN'])
    def getResults(){

        def response = filterService.returnResults(params)

        render response as JSON

    }

    @Secured(['ROLE_ADMIN'])
    def description() {}


    @Secured(['ROLE_ADMIN'])
    def getDescriptionResults(){

        def response = filterService.searchByString(params)

        render response as JSON

    }



}
