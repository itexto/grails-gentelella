package gestor

class Configuracao {
    String codigo
    String valor

    static constraints = {
      codigo maxSize:128
      valor maxSize:1024
    }

    static mapping = {
      version false
    }
}
