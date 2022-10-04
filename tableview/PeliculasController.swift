//
//  ViewController.swift
//  tableview
//
//  Created by MaestroD1 on 9/23/22.
//  Copyright © 2022 MaestroD1. All rights reserved.
//

import UIKit

class PeliculasController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tvPeliculas: UITableView!
    var peliculas : [Pelicula] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculas.append(Pelicula(titulo: "Interstellar", año: "2014", director: "Christopher Nolan", genero: "Sci-fi/Aventura", imagen: "interstellar"))
        peliculas.append(Pelicula(titulo: "The Godfather", año: "1972", director: "Francis Ford Coppola", genero: "Crimen/Thriller", imagen: "the-godfather"))
        peliculas.append(Pelicula(titulo: "The Godfather: Part II", año: "1974", director: "Francis Ford Coppola", genero: "Crimen/Drama", imagen: "the-godfather-2"))
        peliculas.append(Pelicula(titulo: "The Godfather: Part III", año: "1990", director: "Francis Ford Coppola", genero: "Crimen/Drama", imagen: "the-godfather-3"))
        peliculas.append(Pelicula(titulo: "The Social Network", año: "2010", director: "David Fincher", genero: "Drama/Historia", imagen: "the-social-network"))
        peliculas.append(Pelicula(titulo: "Goodfellas", año: "1990", director: "Martin Scorsese", genero: "Crimen/Drama", imagen: "goodfellas"))
        peliculas.append(Pelicula(titulo: "The Wolf of Wall Street", año: "2013", director: "Martin Scorsese", genero: "Comedia/Drama", imagen: "the-wolf-of-wallstreet"))
        peliculas.append(Pelicula(titulo: "Scarface", año: "1983", director: "Brian De Palma", genero: "Crimen/Drama", imagen: "scarface"))
        peliculas.append(Pelicula(titulo: "Pulp Fiction", año: "1994", director: "Quentin Tarantino", genero: "Crimen/Drama", imagen: "pulp-fiction"))
        peliculas.append(Pelicula(titulo: "Inglorious Basterds", año: "2009", director: "Quentin Tarantino", genero: "Guerra/Accion", imagen: "inglorious-basterds"))
        peliculas.append(Pelicula(titulo: "Forrest Gump", año: "1994", director: "Robert Zemeckis", genero: "Drama/Romance", imagen: "forrest-gump"))
        peliculas.append(Pelicula(titulo: "Hereditary", año: "2018", director: "Ari Aster", genero: "Horror/Drama", imagen: "hereditary"))
        peliculas.append(Pelicula(titulo: "Midsommar", año: "2019", director: "Ari Aster", genero: "Horror/Thriller", imagen: "midsommar"))
        peliculas.append(Pelicula(titulo: "Southpaw", año: "2015", director: "Antoine Fuqua", genero: "Drama/Thriller", imagen: "southpaw"))
        peliculas.append(Pelicula(titulo: "Whiplash", año: "2014", director: "Damien Chazelle", genero: "Drama", imagen: "whiplash"))
        
        //1
        peliculas[0].personajes.append(Personaje(nombre: "Joseph Cooper", interprete: "Matthew McConaughey"))
        peliculas[0].personajes.append(Personaje(nombre: "Murph", interprete: "Jessica Chastain"))
        peliculas[0].personajes.append(Personaje(nombre: "Amelia Brand", interprete: "Amelia Brand"))
        peliculas[0].personajes.append(Personaje(nombre: "Profesor Brand", interprete: "Michael Caine"))
        peliculas[0].personajes.append(Personaje(nombre: "Dr. Mann", interprete: "Matt Damon"))
        //2
        peliculas[1].personajes.append(Personaje(nombre: "Vito Corleone", interprete: "Marlon Brando"))
        peliculas[1].personajes.append(Personaje(nombre: "Michael Corleone", interprete: "Al Pacino"))
        peliculas[1].personajes.append(Personaje(nombre: "Sonny Corleone", interprete: "James Caan"))
        peliculas[1].personajes.append(Personaje(nombre: "Kay Adams", interprete: "Diane Keaton"))
        peliculas[1].personajes.append(Personaje(nombre: "Connie Corleone", interprete: "Talia Shire"))
        //3
        peliculas[2].personajes.append(Personaje(nombre: "Vito Corleone", interprete: "Robert De Niro"))
        peliculas[2].personajes.append(Personaje(nombre: "Michael Corleone", interprete: "Al Pacino"))
        peliculas[2].personajes.append(Personaje(nombre: "Kay Adams", interprete: "Diane Keaton"))
        peliculas[2].personajes.append(Personaje(nombre: "Fredo Corleone", interprete: "John Cazale"))
        peliculas[2].personajes.append(Personaje(nombre: "Hyman Roth", interprete: "Lee Strasberg"))
        //4
        peliculas[3].personajes.append(Personaje(nombre: "Michael Corleone", interprete: "Al Pacino"))
        peliculas[3].personajes.append(Personaje(nombre: "Mary Corleone", interprete: "Sofia Coppola"))
        peliculas[3].personajes.append(Personaje(nombre: "Vincent Mancini", interprete: "Andy Garcia"))
        peliculas[3].personajes.append(Personaje(nombre: "Kay Adams", interprete: "Diane Keaton"))
        peliculas[3].personajes.append(Personaje(nombre: "Connie Corleone", interprete: "Talia Shire"))
        //5
        peliculas[4].personajes.append(Personaje(nombre: "Mark Zuckerberg", interprete: "Jesse Eisenberg"))
        peliculas[4].personajes.append(Personaje(nombre: "Eduardo Saverin", interprete: "Andrew Garfield"))
        peliculas[4].personajes.append(Personaje(nombre: "Sean Parker", interprete: "Justin Timberlake"))
        peliculas[4].personajes.append(Personaje(nombre: "Tyler Winklevoss", interprete: "Armie Hammer"))
        peliculas[4].personajes.append(Personaje(nombre: "Divya Narendra", interprete: "Max Minghella"))
        //6
        peliculas[5].personajes.append(Personaje(nombre: "Henry Hill", interprete: "Ray Liotta"))
        peliculas[5].personajes.append(Personaje(nombre: "Jimmy Conway", interprete: "Robert De Niro"))
        peliculas[5].personajes.append(Personaje(nombre: "Tommy De Vito", interprete: "Joe Pesci"))
        peliculas[5].personajes.append(Personaje(nombre: "Karen Hill", interprete: "Lorraine Bracco"))
        peliculas[5].personajes.append(Personaje(nombre: "Paul Cicero", interprete: "Paul Sorvino"))
        //7
        peliculas[6].personajes.append(Personaje(nombre: "Jordan Belfort", interprete: "Leonardo DiCaprio"))
        peliculas[6].personajes.append(Personaje(nombre: "Donnie Azoff", interprete: "Jonah Hill"))
        peliculas[6].personajes.append(Personaje(nombre: "Naomi Lapaglia", interprete: "Margot Robbie"))
        peliculas[6].personajes.append(Personaje(nombre: "Nicky Koskoff", interprete: "P.J. Byrne"))
        peliculas[6].personajes.append(Personaje(nombre: "Brad Bodnick", interprete: "Jon Bernthal"))
        //8
        peliculas[7].personajes.append(Personaje(nombre: "Tony Montana", interprete: "Al Pacino"))
        peliculas[7].personajes.append(Personaje(nombre: "Elvira Hancock", interprete: "Michelle Pfeiffer"))
        peliculas[7].personajes.append(Personaje(nombre: "Manny Ribera", interprete: "Steven Bauer"))
        peliculas[7].personajes.append(Personaje(nombre: "Gina Montana", interprete: "Mary Elizabeth Mastrantonio"))
        peliculas[7].personajes.append(Personaje(nombre: "Frank Lopez", interprete: "Robert Loggia"))
        //9
        peliculas[8].personajes.append(Personaje(nombre: "Jules Winnfield", interprete: "Samuel L. Jackson"))
        peliculas[8].personajes.append(Personaje(nombre: "Vincent Vega", interprete: "John Travolta"))
        peliculas[8].personajes.append(Personaje(nombre: "Mia Wallace", interprete: "Uma Thurman"))
        peliculas[8].personajes.append(Personaje(nombre: "Butch Coolidge", interprete: "Bruce Willis"))
        peliculas[8].personajes.append(Personaje(nombre: "Jimmie Dimmick", interprete: "Quentin Tarantino"))
        //10
        peliculas[9].personajes.append(Personaje(nombre: "Aldo Raine", interprete: "Brad Pitt"))
        peliculas[9].personajes.append(Personaje(nombre: "Hans Landa", interprete: "Christoph Waltz"))
        peliculas[9].personajes.append(Personaje(nombre: "Shosanna Dreyfus", interprete: "Melanie Laurent"))
        peliculas[9].personajes.append(Personaje(nombre: "Bridget Von Hammersmark", interprete: "Diane Kruger"))
        peliculas[9].personajes.append(Personaje(nombre: "Frederick Zoller", interprete: "Daniel Brühl"))
        //11
        peliculas[10].personajes.append(Personaje(nombre: "Forrest Gump", interprete: "Tom Hanks"))
        peliculas[10].personajes.append(Personaje(nombre: "Jenny Curran", interprete: "Robin Wright"))
        peliculas[10].personajes.append(Personaje(nombre: "Dan Taylor", interprete: "Gary Sinise"))
        peliculas[10].personajes.append(Personaje(nombre: "Mrs. Gump", interprete: "Sally Field"))
        peliculas[10].personajes.append(Personaje(nombre: "Benjamin Buford", interprete: "Mykelti Williamson"))
        //12
        peliculas[11].personajes.append(Personaje(nombre: "Peter Graham", interprete: "Alex Wolff"))
        peliculas[11].personajes.append(Personaje(nombre: "Charlie Graham", interprete: "Milly Shapiro"))
        peliculas[11].personajes.append(Personaje(nombre: "Annie Graham", interprete: "Toni Collette"))
        peliculas[11].personajes.append(Personaje(nombre: "Steve Graham", interprete: "Gabriel Byrne"))
        peliculas[11].personajes.append(Personaje(nombre: "Joan", interprete: "Ann Dowd"))
        //13
        peliculas[12].personajes.append(Personaje(nombre: "Christian", interprete: "Jack Reynor"))
        peliculas[12].personajes.append(Personaje(nombre: "Dani", interprete: "Florence Pugh"))
        peliculas[12].personajes.append(Personaje(nombre: "Mark", interprete: "Will Poulter"))
        peliculas[12].personajes.append(Personaje(nombre: "Josh", interprete: "William Jackson Harper"))
        peliculas[12].personajes.append(Personaje(nombre: "Pelle", interprete: "Vilhelm Blomgren"))
        //14
        peliculas[13].personajes.append(Personaje(nombre: "Billy Hope", interprete: "Jake Gyllenhaal"))
        peliculas[13].personajes.append(Personaje(nombre: "Maureen Hope", interprete: "Rachel McAdams"))
        peliculas[13].personajes.append(Personaje(nombre: "Tick Wills", interprete: "Forest Whitaker"))
        peliculas[13].personajes.append(Personaje(nombre: "Leila Hope", interprete: "Oona Laurence"))
        peliculas[13].personajes.append(Personaje(nombre: "Jordan Mains", interprete: "50 Cent"))
        //15
        peliculas[14].personajes.append(Personaje(nombre: "Andrew Neiman", interprete: "Miles Teller"))
        peliculas[14].personajes.append(Personaje(nombre: "Terence Fletcher", interprete: "J.K. Simmons"))
        peliculas[14].personajes.append(Personaje(nombre: "Jim Neiman", interprete: "Paul Reiser"))
        peliculas[14].personajes.append(Personaje(nombre: "Nicole", interprete: "Melissa Benoist"))
        peliculas[14].personajes.append(Personaje(nombre: "Ryan", interprete: "Austin Stowell"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as! CeldaPeliculaController
        
        celda.lblDirector.text = peliculas[indexPath.row].director
        celda.lblAño.text = peliculas[indexPath.row].año
        celda.lblTitulo.text = peliculas[indexPath.row].titulo
        celda.ivImagen.image = UIImage(named: peliculas [indexPath.row].imagen)
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 195
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPeliculaController
        destino.pelicula = peliculas[tvPeliculas.indexPathForSelectedRow!.row]
    }

}

