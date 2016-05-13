package br.com.imaxgames.bancoTeste

import grails.transaction.Transactional

@Transactional
class ProjectService {

    def save(params) {
        def project = new Project(params)
        project.save(failOnError: true, flush: true)

        return project

    }

    def update(params) {
        def project = Project.get(params.projectId)
        project.name = params.name
        project.save(failOnError: true, flush: true)

        return project
    }

    def delete(params) {
        def project = Project.get(params.id)
        def response
        try {
            project.delete(flush: true)
            response = true
        } catch (Exception e) {
            response = false
        }

        return response

    }
}
