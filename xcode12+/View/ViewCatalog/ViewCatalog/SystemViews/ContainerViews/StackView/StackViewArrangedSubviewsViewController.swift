//
//  Mastering iOS
//  Copyright (c) KxCoding <help@kxcoding.com>
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

class StackViewArrangedSubviewsViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBAction func add(_ sender: Any) {
        
    }
    
    @IBAction func insert(_ sender: Any) {
        
    }
    
    @IBAction func remove(_ sender: Any) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension StackViewArrangedSubviewsViewController {
    private func generateView() -> UIView {
        let v = UIView()
        
        let r = CGFloat(arc4random_uniform(256)) / 255
        let g = CGFloat(arc4random_uniform(256)) / 255
        let b = CGFloat(arc4random_uniform(256)) / 255
        v.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        
        return v
    }
}
