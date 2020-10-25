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

class ImagePickerViewController: UIViewController {
    
    lazy var images: [UIImage] = {
        return (0...6).compactMap { UIImage(named: "slot-machine-\($0)") }
    }()
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBAction func shuffle(_ sender: Any?) {
        let firstIndex = Int(arc4random_uniform(UInt32(images.count))) + images.count
        let secondIndex = Int(arc4random_uniform(UInt32(images.count))) + images.count
        let thirdIndex = Int(arc4random_uniform(UInt32(images.count))) + images.count
        
        picker.selectRow(firstIndex, inComponent: 0, animated: true)
        picker.selectRow(secondIndex, inComponent: 1, animated: true)
        picker.selectRow(thirdIndex, inComponent: 2, animated: true)
        
        let row1 = picker.selectedRow(inComponent: 0)
        let row2 = picker.selectedRow(inComponent: 1)
        let row3 = picker.selectedRow(inComponent: 2)
        if(row1 == row2 && row2 == row3) {
            let dialog = UIAlertController(title: "축하합니다!", message: "당첨되셨습니다^^", preferredStyle: .alert)
            let action = UIAlertAction(title: "확인", style: .default)
            dialog.addAction(action)
            self.present(dialog, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.isUserInteractionEnabled = false
        
        picker.reloadAllComponents()
        shuffle(nil)
    }
}

extension ImagePickerViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return images.count * 3
    }
}


extension ImagePickerViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        if let imgView = view as? UIImageView {
            imgView.image = images[row % images.count]
            return imgView
        }
        
        let imgView = UIImageView()
        imgView.image = images[row % images.count]
        imgView.contentMode = .scaleAspectFit
        
        return imgView
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
}

