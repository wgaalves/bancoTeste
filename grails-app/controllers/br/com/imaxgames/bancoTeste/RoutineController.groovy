package br.com.imaxgames.bancoTeste

import grails.converters.deep.JSON
import grails.plugin.springsecurity.annotation.Secured

class RoutineController {

    def routineService

    static allowedMethods = [index:'GET',create:'GET',view: 'GET',edit: 'GET',save: 'POST',update: 'POST']

    @Secured(['ROLE_ADMIN'])
    def index () {
        model:[routineList:Routine.findAll()]
    }

    @Secured(['ROLE_ADMIN'])
    def create(){

        model:[projectList:Project.findAll(),typeList:Type.findAll(),scopeList:Scope.findAll(),phaseList:Phase.findAll()]
    }

    @Secured(['ROLE_ADMIN'])
    def edit(Long id){
        model:[projectList:Project.findAll(),typeList:Type.findAll(),scopeList:Scope.findAll(),phaseList:Phase.findAll(),routine:Routine.get(params.id)]
    }

    @Secured(['ROLE_ADMIN'])
    def delete(Long id){
        def deleteResponse = routineService.delete(params)

        render delete:deleteResponse

    }

    @Secured(['ROLE_ADMIN'])
    def update(){
        def routine = routineService.update(params)

        redirect(action:'index')
    }

    @Secured(['ROLE_ADMIN'])
    def save(){


        def routine = routineService.save(params)

        redirect(action:'index')
    }
}
