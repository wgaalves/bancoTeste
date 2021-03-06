package br.com.imaxgames.bancoTeste

import grails.transaction.Transactional

@Transactional
class FilterService {

    def returnResults(params) {
        def phase = (params.phase == 0) ? null : Phase.get(params.phase)
        def type = (params.type == 0) ? null : Type.get(params.type)
        def scope = (params.scope == 0) ? null : Scope.get(params.scope)
        def project = (params.project == 0) ? null : Project.get(params.project)
        def isNotNullList = [phase, type, scope]
        def filterMap = [:]
        def finalmap = []




        for (int i = 0; i < 3; i++) {

            if (isNotNullList[i] != null) {
                if (isNotNullList[i].getClass().toString().substring(isNotNullList[i].getClass().toString().lastIndexOf(".") + 1) == 'Phase') {

                    filterMap += ['phase': isNotNullList[i]]

                } else if (isNotNullList[i].getClass().toString().substring(isNotNullList[i].getClass().toString().lastIndexOf(".") + 1) == 'Type') {

                    filterMap += ['type': isNotNullList[i]]

                } else if (isNotNullList[i].getClass().toString().substring(isNotNullList[i].getClass().toString().lastIndexOf(".") + 1) == 'Scope') {

                    filterMap += ['scope': isNotNullList[i]]
                }

            }
        }


        def result = Routine.findAllWhere(filterMap)
        if(filterMap.size() == 0){
            result = Routine.findAll()
        }

        if(project != null) {
            result.each {
               if(project.routines.contains(it)){
                   finalmap += ['routine':it.id,
                                'description':it.description,
                                'project':project.name,
                                'projecttag':it.projects[0].tag,
                                'phase':it.phase.id,
                                'type':it.type.id,
                                'scope':it.scope.id,
                                'version':it.ver]
               }
            }
        }else{
            result.each {
                    finalmap += ['routine':it.id,
                                 'description':it.description,
                                 'project':it.projects[0].name,
                                 'projecttag':it.projects[0].tag,
                                 'phase':it.phase.id,
                                 'type':it.type.id,
                                 'scope':it.scope.id,
                                 'version':it.ver]

            }
        }

        return finalmap.sort{it.project}

    }

    def searchByString(params){

        def allRoutines = Routine.findAll();
        def routineList = []
        if (params.searchString == '' || params.searchString == null){
            allRoutines.each {
                    routineList += ['routine'    : it.id,
                                    'description': it.description,
                                    'project'    : it.projects[0].name,
                                    'projecttag' : it.projects[0].tag,
                                    'phase'      : it.phase.id,
                                    'type'       : it.type.id,
                                    'scope'      : it.scope.id,
                                    'version'    : it.ver]
            }
        }else {
            allRoutines.each {
                if (it.description.contains(params.searchString)) {
                    routineList += ['routine'    : it.id,
                                    'description': it.description,
                                    'project'    : it.projects[0].name,
                                    'projecttag' : it.projects[0].tag,
                                    'phase'      : it.phase.id,
                                    'type'       : it.type.id,
                                    'scope'      : it.scope.id,
                                    'version'    : it.ver]
                }
            }
        }
        return routineList

    }
}
