import Foundation

func hacerMedia(numeros: [Int]) -> Int { //EJERCICIO 3 (Función añadida en el ejercicio 1)
   var suma = 0
   for i in numeros {
       suma += numeros[i-1]
   }
   let media = suma/5
   return media
}

var numeros = [Int]()
while numeros.count != 5
{
   print("Porfavor, escribe un número: ")
   let numero = readLine()!
   if numero.isEmpty
   {
       print("ERROR: no has introducido nada")
   }
   else if numero.first?.isNumber == false
   {
       print("ERROR: no has introducido un número")
   }
   else if numero.count > 1
   {
       print("ERROR: debes introducir solo un valor")
   } else
   {
       let numero2: Int = Int(numero)!
       numeros.append(numero2)
   }
}
var media = hacerMedia(numeros: numeros)
print(media)

