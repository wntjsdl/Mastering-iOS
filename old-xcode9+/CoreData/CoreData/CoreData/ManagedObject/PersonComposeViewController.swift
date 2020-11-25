//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit
import CoreData

class PersonComposeViewController: UIViewController {
   
   static let newPersonDidInsert = Notification.Name(rawValue: "newPersonDidInsert")
   
   var target: NSManagedObject?
   
   @IBOutlet weak var nameField: UITextField!
   
   @IBOutlet weak var ageField: UITextField!
   
   @IBAction func cancelCompose(_ sender: Any) {
      dismiss(animated: true, completion: nil)
   }
   
   @IBAction func save(_ sender: Any) {
      guard let name = nameField.text else { return }
      
      var age: Int?
      if let ageStr = ageField.text, let ageVal = Int(ageStr) {
         age = ageVal
      }
    
    if let target = target as? PersonEntity {
        DataManager.shared.updatePerson(entity: target, name: name, age: age) {
            NotificationCenter.default.post(name: PersonComposeViewController.newPersonDidInsert, object: nil)
            self.dismiss(animated: true, completion: nil)
        }
    } else {
        DataManager.shared.createPerson(name: name, age: age) {
            NotificationCenter.default.post(name: PersonComposeViewController.newPersonDidInsert, object: nil)
            self.dismiss(animated: true, completion: nil)
        }
    }
      
      
   }
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
    if let target = target as? PersonEntity {
        navigationItem.title = "Edit"
        nameField.text = target.name
        ageField.text = "\(target.age)"
    } else {
        navigationItem.title = "Add"
    }
   }
}
