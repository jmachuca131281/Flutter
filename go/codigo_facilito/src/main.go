package main

import (
	"net/http" 				 // Libreria interna de go 
	"github.com/gorilla/mux" // go get -u github.com/gorilla/mux
	"log" 					 // 
)

func main() {
	r := mux.NewRouter() 							// Permite crear una intancia de NewRouter
	r.HandleFunc("/user/", GetUser).Methods("GET")  // Declaramos el usuario
	log.Println("Servido en puerto 8000")           // Indicamos que la apertura del servidor
	log.Fatal(http.ListenAndServe(":8000", r))      // Levantando el servido
}

func GetUser(w http.ResponseWriter, r* http.Request){  // Asociamos func a url
	w.Write([]byte("Gorilla!\n"))
}