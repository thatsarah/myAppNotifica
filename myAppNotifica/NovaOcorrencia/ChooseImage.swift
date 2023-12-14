//
//  ChooseImage.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 13/12/23.
//


import UIKit

class ChooseImage: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var picker = UIImagePickerController()
    var alert = UIAlertController(title: "Escolha uma opção", message: nil, preferredStyle: .actionSheet)
    var viewController: UIViewController?
    var retornoSelecionador: ((UIImage) -> ())?
    
    func imagePicker(_ viewController: UIViewController, _ retorno: @escaping ((UIImage) -> ())) {
        
        retornoSelecionador = retorno
        self.viewController = viewController
        let camera = UIAlertAction(title: "Camera", style: .default){
            UIAlertAction in
            self.openCamera()
        }
        let gallery = UIAlertAction(title: "Galeria", style: .default){
            UIAlertAction in
            self.openGallery()
        }
        
        let cancel = UIAlertAction(title: "Cancelar", style: .cancel){
            UIAlertAction in
        }
        
        picker.delegate = self
        
        alert.addAction(camera)
        alert.addAction(gallery)
        alert.addAction(cancel)
        alert.popoverPresentationController?.sourceView = self.viewController!.view
        viewController.present(alert, animated: true, completion: nil)
    }
    
    func openCamera(){
        alert.dismiss(animated: true, completion: nil)        
        if(UIImagePickerController .isSourceTypeAvailable(.camera)){
            picker.sourceType = .camera
            self.viewController?.present(picker, animated: true, completion: nil)
        } else {
            
            let alert = UIAlertController(title: "Alerta", message: "Você não tem uma câmera", preferredStyle: .actionSheet)
            let cancel = UIAlertAction(title: "Cancelar", style: .cancel){
                UIAlertAction in
            }
            alert.addAction(cancel)
            self.viewController?.present(alert, animated: true, completion: nil)
        }
    }
    
    func openGallery(){
        alert.dismiss(animated: true, completion: nil)
        picker.sourceType = .photoLibrary
        self.viewController?.present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[.originalImage] as? UIImage else {
            fatalError("Esperava-se uma imagem, mas foi dado o seguinte: \(info)")
        }
        retornoSelecionador?(image)
    }
}
