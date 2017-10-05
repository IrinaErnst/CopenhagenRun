//
//  UIView.swift
//  CopenhagenRun
//
//  Created by Irina Ernst on 10/3/17.
//  Copyright © 2017 IrinaErnst. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    // Add visual constraints with format to array of views
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format,
                                                      options: NSLayoutFormatOptions(),
                                                      metrics: nil,
                                                      views: viewsDictionary))
    }
    
    func createToolbarWithDoneButton() -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: 44)
        toolbar.tintColor = Colors.green
        let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                       target: self,
                                       action: #selector(dismissKeyboard))
        let doneButton = UIBarButtonItem(title: "Done",
                                         style: .done,
                                         target: self,
                                         action: #selector(dismissKeyboard))
        toolbar.items = [flexible, doneButton]
        return toolbar
    }
    
    @objc func dismissKeyboard() {
        self.endEditing(true)
    }
    
}
