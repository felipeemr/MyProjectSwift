//
//  RefeicoesTableViewController.swift
//  new-word
//
//  Created by Felipe Moraes on 21/07/21.
//

import UIKit

class RefeicoesTableViewController : UITableViewController, AdicionaRefeicaoDelegate {
    var refeicoes = [Refeicao(nome:"Pizza", felicidade: 5),
                     Refeicao(nome:"bife", felicidade: 5),
                     Refeicao(nome:"Chocolate", felicidade: 5)]
    
    //retorna o numero de linhas que tem em nossa tabela
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    //retorna o conteudo de cada linha de nossa tabela
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        return celula
        
    }
    func add(_ refeicao: Refeicao){
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "adicionar"{
            if let viewController = segue.destination as? ViewController{
                viewController.delagete = self
            }
        }
    }
}
