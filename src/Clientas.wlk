// Clientas
/*
- **Ludmila**: 18 pesos el kilómetro, valor fijo e inamovible.
- **Ana María**: 30 pesos el kilómetro si está económicamente estable, 25 pesos el kilómetro en caso contrario. Se sabe en cada momento si Ana María está o no económicamente estable.
- **Teresa**: arranca en 22 pesos el kilómetro, puede cambiar a cualquier otro valor.
*/


object ludmila {method precioPactadoPorKm(){return 18}}

object anaMaria {
    var situacionEstable = true
    method estaEconomicamenteEstable() {
        return situacionEstable
    }
    method precioPactadoPorKm(){
        return if (estaEconomicamenteEstable){30}else{25} 
    }

object teresa {
    var precioPorKm = 22
    method precioPactadoPorKm(){
        return precioPorKm} 
    }
    method cambioDePrecio(nuevoPrecio) {
        precioPorKm = nuevoPrecio
    }


/*
## Lucía y la cadete

Agregar al modelo a la remisera Lucía, y a la cliente Melina.
- **Lucía** es una remisera que hace reemplazos, o sea, cubre los turnos que las otras remiseras se tienen que tomar por alguna razón.
Hay que informar a quién está reeemplazando Lucía.
Lucía cobra lo mismo que la remisera a la que está reemplazando.
- **Melina** es una cadeta que trabaja para las otras clientas de la remisería. En cada momento trabaja para una clienta, se debe informar para quién. El precio por kilómetro pactado con Melina es 3 pesos menos que el precio de la clienta para quien esté trabajando en cada momento.

P.ej. si Lucía está reemplazando a Mariela, y Melina está trabajando para Ludmila, entonces:
- por un viaje de 10 kilómetros Lucía le cobra a Melina 150 pesos (el precio por kilómetro es 15, tres menos que lo que se pactó con Ludmila).
- por un viaje de 1 kilómetro le va a cobrar 50 pesos, que es el mínimo que establece Mariela.

Si en cambio Lucía está reemplazando a Gabriela, y manteniendo que Melina trabaja para Ludmila, entonces los valores para 10 y 1 km son 180 y 18, porque corre el 20% de recargo que establece Gabriela.  

*/

object melina{
	var trabajaPara

	method trabajaPara(cliente){
		trabajaPara=cliente

	}

	method precioPorKm(){
		return trabajaPara.precioPorKm()- 3
	}
}