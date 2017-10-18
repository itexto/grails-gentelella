package gestor

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


class ConfiguracaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Configuracao.list(params), model:[configuracaoCount: Configuracao.count()]
    }

    def show(Configuracao configuracao) {
        respond configuracao
    }

    def create() {
        respond new Configuracao(params)
    }

    @Transactional
    def save(Configuracao configuracao) {
        if (configuracao == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (configuracao.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond configuracao.errors, view:'create'
            return
        }

        configuracao.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'configuracao.label', default: 'Configuracao'), configuracao.id])
                redirect configuracao
            }
            '*' { respond configuracao, [status: CREATED] }
        }
    }

    def edit(Configuracao configuracao) {
        respond configuracao
    }

    @Transactional
    def update(Configuracao configuracao) {
        if (configuracao == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (configuracao.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond configuracao.errors, view:'edit'
            return
        }

        configuracao.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'configuracao.label', default: 'Configuracao'), configuracao.id])
                redirect configuracao
            }
            '*'{ respond configuracao, [status: OK] }
        }
    }

    @Transactional
    def delete(Configuracao configuracao) {

        if (configuracao == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        configuracao.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'configuracao.label', default: 'Configuracao'), configuracao.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'configuracao.label', default: 'Configuracao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
