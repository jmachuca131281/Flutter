package main

import (
	"fmt"
)

// type pc struct {
// 	ram int
// 	disk int
// 	brand string
// }

// func (myPc pc) ping() {
// 	fmt.Println(myPc.brand, "Pong")
// }

// Personalizar el output de struct
// func (myPc pc) String() string {
// 	return fmt.Sprintf("Tengo %d gb ram, %d Disco y es una %s", myPc.ram, myPc.disk, myPc.brand)
// }

// func (myPc *pc) duplicateRAM(){
// 	myPc.ram = myPc.ram * 2
// }

// func doubleReturn(a int) (c, d int) {
// 	return a, a * 2
// }

// Interface
// type figuras2D interface {
// 	area() float64
// }

// type cuadrado struct {
// 	base float64
// }

// type rectangulo struct {
// 	base float64
// 	altura float64
// }

// func (c cuadrado) area() float64 {
// 	return c.base * c.base
// }

// func (r rectangulo) area() float64 {
// 	return r.base * r.altura
// }

// func calcular(f figuras2D){
// 	fmt.Println("Area: ", f.area())
// }

// type interFace interface {
// 	area() float64
// }

// type cuadrado struct {
// 	base float64
// }

// type rectangulo struct {
// 	base float64
// 	altura float64
// }

// func (c cuadrado) area() float64 {
// 	return c.base * c.base
// }

// func (r rectangulo) area() float64 {
// 	return r.base * r.altura
// }

// func calcular(i interFace) {
// 	fmt.Println(i.area())
// }

// func say(text string){
// 	fmt.Println(text)
// }

// <-salida, entrada<-
// func say(text string, c chan<- string){
// 	c<-text
// }

func message(t string, c chan<- string){
	c<-t
}

func main() {

	// c := make(chan string, 2)
	// c <- "M1"
	// c <- "M2"
	// fmt.Println(len(c), cap(c))
	// close(c) // Canal abierto se debe cerrar
	// c <- "M3"
	// range --> nor permite hacer el recorrido del channel

	// Para la iteracción es prefefirible cerrar el canal.
	// for mensaje := range c {
	// 	fmt.Println(mensaje)
	// }

	// Select
	email1 := make(chan string)
	email2 := make(chan string)

	go message("Mensaje1", email1)
	go message("Mensaje2", email2)

	// Siempre tener en cuenta la cantidad de channel que se van a manejar.
	for i:=0; i<2; i++ {
		select {
		case m1:=<-email1:
			fmt.Println("Email recibido de email1:", m1)
		case m2:=<-email2:
			fmt.Println("Email recibido de email2:", m2)
		}
	}


	// c := make(chan string, 1)
	// go say("Mensaje", c)
	// fmt.Println(<-c)

	// c := make(chan string, 1) // La cantidad de canales es opcional, pero buena practica es definirlo.
	// fmt.Println("", c)
	// go say("Hello", c)
	// Se envia en un print para poder ver la tarea
	// fmt.Println("", <-c)

	// say("hello")

	// fmt.Println("Thanks God")
	// var a bool
	// fmt.Println(a)

	// Punteros
	// & apunta a la memoria y * apunta al valor de dicha memoria
	// aa := 50
	// bb := &aa
	// fmt.Println("Imprime el valor aa", aa)
	// fmt.Println("Imprime el valor aa asignada en bb", bb)
	// fmt.Println("Imprime el direccion de aa", &aa)
	// fmt.Println("Imprime la dirección de bb", &bb)

	// fmt.Println(bb)
	// fmt.Println(*bb)

	// *bb = 100
	// fmt.Println(aa)

	// myPc := pc{ram: 12, disk: 200, brand: "msi"}
	// fmt.Println(myPc)
	// myPc.ping()
	// fmt.Println(myPc.ram)
	// myPc.duplicateRAM()
	// fmt.Println(myPc.ram)

	// fmt.Println(doubleReturn(2))

	// m := make( map[string]int )
	// m["josé"] = 12
	// m["Sarah"] = 32
	// m[""] = 12
	// fmt.Println(m)

	// var myCar mypack.CarPublic
	// myCar.Brand = "Mustang"
	// fmt.Println(myCar)

	//Interfaces 
	// myCuadrado := cuadrado{base: 2}
	// myRectangulo := rectangulo{base: 23, altura: 23}
	// calcular(myCuadrado)
	// calcular(myRectangulo)

	// Listas de interfaces => A una lista de interfaces no podemos agregar varios tipos de datos. En go no se puede
	// myInterface := []interface{}{"hola", 12.13, 25}
	// fmt.Println(myInterface...)

	// mc := cuadrado{base: 234}
	// mr := rectangulo{base: 1234, altura: 234}
	// calcular(mc)
	// calcular(mr)

	// mi := []interface{}{"hola", 123.23, 34}
	// fmt.Println(mi)
}
