package gestor

class Arquivo {
  String bucket
  String codigo
  Date dataArmazenamento
  Long tamanho
  String nomeOriginal

  def beforeValidate() {
    if(! dataArmazenamento) {
      dataArmazenamento = new Date()
    }
  }

  static belongsTo = [
    usuario:Usuario
  ]

  static constraints = {
    bucket nullable:false, blank:false, maxSize:64
    codigo nullable:false, blank:false, maxSize:128, unique:['bucket']
    dataArmazenamento nullable:false
    tamanho nullable:false
    nomeOriginal nullable:false, blank:false, maxSize:128
    usuario nullable:false
  }
}
