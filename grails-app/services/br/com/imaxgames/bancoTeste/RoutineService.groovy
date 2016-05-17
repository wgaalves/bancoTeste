package br.com.imaxgames.bancoTeste

import grails.transaction.Transactional

@Transactional
class RoutineService {
    def springSecurityService


    def save(params) {
        def routine = new Routine(params);
            routine.type  = Type.get(params.type)
            routine.scope = Scope.get(params.scope)
            routine.phase = Phase.get(params.phase)
            routine.description = params.description.replace('\\n', '<br/>').replace('**','&#9679;')
           // routine.projects.add(Project.get(params.project))

        def aux = 0;
        if (!Project.get(params.project).routines.empty){
            Project.get(params.project).routines.each {
                log.debug(it.ver)
                if(aux < it.ver && it.type.equals(routine.type) && it.scope.equals(routine.scope) && it.phase.equals(routine.phase)){
                    aux = it.ver
                }
            }
        }
            routine.ver = aux+1


            routine.save(failOnError: true,flush: true)
            Project.get(params.project).addToRoutines(routine).save(failOnError: true,flush: true)

        return routine
    }

    def searchExistentRoutine(){

    }

    def update() {

    }

    def delete(params) {

        def routine = Routine.get(params.id)
        routine.projects.each {
            it.removeFromRoutines(routine)
        }
/*        def log = new Log(project: routine.projects ,type: routine.type,scope: routine.scope , deletedBy: springSecurityService.getCurrentUser(),
                                                                description: routine.description ,phase: routine.phase).save(failOnError: true,flush: true)*/

        def response = routine.delete(flush: true)

        return  response

    }

    def searchVersion(Type type,Scope scope,Phase phase,Project project){
        def criteria = Routine.createCriteria()
        criteria.add()
        def results = criteria.list (sort:'desc') {
                eq('phase',phase)
                eq('scope',scope)
                eq('type',type)
        }
    }


}
