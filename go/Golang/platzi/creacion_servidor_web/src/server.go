package main

import "net/http"

type Server struct {
	port string
	router *Router
}

func NewServer(port string) *Server {        // Permite instanciar el servidor. *Server hace referencia al valor que queremos verificar y no a copias.
	return &Server{
		port: port,
		router: NewRouter()
	}
}

func (s *Server) Listen() error {
	http.Handle("/", &s.router)
	err := http.ListenAndServe(s.port, nil)
	if err != nil {
		return err
	}
	return nil
}