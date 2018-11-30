//
//  ViewController.swift
//  01IamRich
//
//  Created by antoniogamez on 30/11/18.
//  Copyright © 2018 Adhoc. All rights reserved.
//

import UIKit

// Clase ViewController
class ViewController: UIViewController {
    
    // ++++++++++ Properties
    @IBOutlet weak var diamante: UIImageView!   // Enganchamos la imagen del diamante
    @IBOutlet weak var Etiqueta: UILabel!       // Enganchamos la etiqueta
    @IBOutlet weak var Boton: UIButton!         // Enganchamos el botón
    
    // ++++++++++ vieDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // ++++++++++ Methods
    @IBAction func accionBoton(_ sender: UIButton) {
        
        //self.Etiqueta.text = "He pulsado el botón" // Cambiamos el texto de la etiqueta
        //self.Etiqueta.textColor = UIColor.green // Cambiamos el color de la etiqueta
        //self.Etiqueta.font = UIFont.systemFont(ofSize: 24.0) // Cambiamos la tipografia
        //self.diamante.image = UIImage(named: "diamond2") // Cambiamos la fotografía
        
        let controller = UIAlertController(title: "I am Rich", message: """
            I am rich,
            I deserve It,
            I am good,
            healthy & successful
        """, preferredStyle: .actionSheet) // Definimos la alerta .actionSheet o .default
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { _ in
            print("He pulsado el botón Aceptar")
        }
        controller.addAction(action) // añadimos la accion anterior a la alerta
        
        let action2 = UIAlertAction(title: "Borrar", style: .destructive) { _ in
            print("He pulsado el botón Borrar")
        }
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { (_) in
            print("He pulsado el botón Cancelar")
        }
        controller.addAction(action3)
        
        // HANDLER es la acción que se ejecuta cuando se pulsa el botón
        
        self.show(controller, sender: nil) // Enseñamos la alerta
        
    }
    
}
