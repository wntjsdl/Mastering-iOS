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

class SegmentedControlViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var alignmentControl: UISegmentedControl!
    
    @IBOutlet weak var momentarySwitch: UISwitch!
    
    @IBAction func toggleMomentary(_ sender: UISwitch) {
        alignmentControl.isMomentary = sender.isOn
    }
    
    @IBAction func alignmentChanged(_ sender: UISegmentedControl) {
        label.textAlignment = NSTextAlignment(rawValue: sender.selectedSegmentIndex) ?? .center
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alignmentControl.selectedSegmentIndex = label.textAlignment.rawValue
        momentarySwitch.isOn = alignmentControl.isMomentary
        
        alignmentControl.setTitle("왼쪽", forSegmentAt: 0)
        alignmentControl.setTitle("가운데", forSegmentAt: 1)
        alignmentControl.setTitle("오른쪽", forSegmentAt: 2)
    }
}














