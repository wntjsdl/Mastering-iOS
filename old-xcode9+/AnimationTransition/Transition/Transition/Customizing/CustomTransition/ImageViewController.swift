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

class ImageViewController: UIViewController {
   
   @IBOutlet weak var imageView: UIImageView!
   
   var image: UIImage?
   
   @IBOutlet weak var topConstraint: NSLayoutConstraint!
   
    func showCloseButton() {
        topConstraint.constant = 40
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
   
   @IBAction func dismiss(_ sender: Any) {
//      dismiss(animated: true, completion: nil)
    
    topConstraint.constant = -100
    
    UIView.animate(withDuration: 0.3, animations: {
        self.view.layoutIfNeeded()
    }, completion: { finished in
        self.dismiss(animated: true, completion: nil)
    })
   }
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
    topConstraint.constant = -100
      imageView.image = image
   }
}
