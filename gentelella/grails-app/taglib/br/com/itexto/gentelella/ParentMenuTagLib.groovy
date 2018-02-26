package br.com.itexto.gentelella

class ParentMenuTagLib {
    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def testTrue = {attrs,body ->
      out << body()
    }
    def testFalse = {attrs,body ->
      out << body()
    }

}
