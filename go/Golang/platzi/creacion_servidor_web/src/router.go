package main

type Router struct {
	rules: map[string]http.HandlerFunc
}

func NewRouter() *Router {
	return &Router {
		rules: make(map[string]http.HandlerFunc),
	}
}

func (r *Router) ServeHTTP(w http.ResponseWriter, request *http.Resquest6){
	
}