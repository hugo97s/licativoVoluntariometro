//
//  ViewController.swift
//  voluntariomentro
//
//  Created by Hugo Santos on 02/03/20.
//  Copyright © 2020 Hugo Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //        let jorge: Voluntario
        //        jorge = Voluntario(box1: "Anjos do Bem", box2: 4, box3: "HR", box4: 25)
        //        print(jorge.grupo, jorge.diaAcao, jorge.horasDoadas, jorge.localAcao)
        
        
    }
    
    func lerPicker(){
        // lê e armazena data, grupo de voluntariado e quantidade de horas doadas
    }
    
    func lerTexto(){
        // lê e armazena local onde ação foi realizada.
        var _ = campoGrupo.text!
    }
    
    func limparCampo(){
        // limpa reseta todos os campos
    }
    
    @IBAction func clicouperfil() {
        
    }
    @IBOutlet weak var campoGrupo: UITextField!
    
//    @IBOutlet weak var campoHorasDoadas: UITextField!
    
    @IBOutlet weak var totalHoras: UILabel!
    @IBOutlet var totalMinutos: UILabel!
    
    @IBOutlet weak var campoLocalAcao: UITextField!
    
//    @IBOutlet weak var campoDiaAcao: UITextField!
    
    @IBOutlet var pickerHorasDoadas: UIDatePicker!
    
    @IBAction func pickerDiaAcao(_ sender: UIDatePicker) {
    }
    
    @IBAction func clicarSomar(){
        
        somar()
    }
    
    func somar() -> Int {
        
        let horasDoadas = Calendar.current.dateComponents([.hour, .minute], from: pickerHorasDoadas.date)
        print(horasDoadas)
        var horasTotais = Int (totalHoras.text!)!
        print(horasTotais)
        
        var minutosTotais = Int (totalMinutos.text!)!
        print(minutosTotais)
        minutosTotais = Int(horasDoadas.minute!) + minutosTotais
        var resultadoMin = minutosTotais
        horasTotais = Int(horasDoadas.hour!) + horasTotais
        var resultadoHora = horasTotais
        print(horasTotais)
        if minutosTotais >= 60 {
            resultadoMin = minutosTotais - 60
            resultadoHora = horasTotais + Int(minutosTotais/60)
        }
        else {
            resultadoMin = minutosTotais
            resultadoHora = horasTotais
        }
        totalHoras.text = String(resultadoHora)
        totalMinutos.text = String(resultadoMin)
        
        return horasTotais
        
    }
    
    func ranquear(){
        //lista todos amigos(ou pessoal no geral) ranqueando de acordo c/ a quantidade
        // de horas doadas.
        
    }
    
    
}

//class Voluntario{
//    var grupo: String
//    var horasDoadas: Int
//    var localAcao: String
//    var diaAcao: Int
//
//    init(box1: String, box2: Int, box3: String, box4: Int){
//        grupo = box1
//        horasDoadas = box2
//        localAcao = box3
//        diaAcao = box4
//
//    }

//    func idadeHumana() -> Int{
//        let idadeHumana
//        idadeHumana = (anos * 7) + (meses * 7/12)
//        return idadeHumana
//    }

//}
