package br.com.imaxgames.bancoTeste

import grails.plugin.springsecurity.annotation.Secured

class ProjectController {
    def projectService

    static allowedMethods = [index:'GET',create:'GET',view: 'GET',edit: 'GET',save: 'POST',delete: 'POST',update: 'POST']

    @Secured(['ROLE_ADMIN'])
    def index () {
        model:[projectList:Project.findAll()]
    }

    @Secured(['ROLE_ADMIN'])
    def create(){}

    @Secured(['ROLE_ADMIN'])
    def edit(Long id){
        model:[project:Project.get(params.id)]
    }

    @Secured(['ROLE_ADMIN'])
    def view(long id){
        model:[project:Project.get(params.id)]
    }


    @Secured(['ROLE_ADMIN'])
    def delete(Long id){
        def response = projectService.save(params)

        return  response
    }

    @Secured(['ROLE_ADMIN'])
    def update(Long id){
        def project = projectService.update(params)

        redirect(action:'index')

    }

    @Secured(['ROLE_ADMIN'])
    def save(){
        def project = projectService.save(params)

        redirect(action:'index')
    }
}
