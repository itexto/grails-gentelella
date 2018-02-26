package br.com.itexto.gentelella

class ParentMenu {

    String iconClass = "fa fa-cog"
    String title = "Parent menu"

    static hasMany = [
      childMenus:ChildMenu  
    ]

    static constraints = {
      iconClass nullable:false, blank:false, maxSize:128
      title nullable:false, blank:false, maxSize:1024
    }
}
