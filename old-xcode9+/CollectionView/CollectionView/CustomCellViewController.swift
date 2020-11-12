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

class CustomCellViewController: UIViewController {
   
   let list = MaterialColorDataSource.generateSingleSectionData()
    
   @IBOutlet weak var listCollectionView: UICollectionView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let cell = sender as? UICollectionViewCell else {
            return
        }
        
        guard let indexPath = listCollectionView.indexPath(for: cell) else {
            return
        }
        
        let target = list[indexPath.item]
        
        segue.destination.view.backgroundColor = target.color
        segue.destination.title = target.title
    }
   
   override func viewDidLoad() {
      super.viewDidLoad()
    
    // 셀 목록 배열 return
//    listCollectionView.visibleCells
    
    // 특정 위치 셀 return, 미 존재 시 nil
//    listCollectionView.cellForItem(at: <#T##IndexPath#>)
    
    // 셀 위치 확인
//    listCollectionView.indexPath(for: <#T##UICollectionViewCell#>)
    
    // 지정된 좌표에 해당하는 indexPath return
//    listCollectionView.indexPathForItem(at: <#T##CGPoint#>)
    
    // 컬렉션 뷰에 표시된 indexPath 배열 return
//    listCollectionView.indexPathsForVisibleItems
    
    // 선택되어 있는 indexPath 배열 return
//    listCollectionView.indexPathsForSelectedItems
    
   }
}

extension CustomCellViewController: UICollectionViewDataSource {
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return list.count
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ColorCollectionViewCell
    
    let target = list[indexPath.item]
    cell.colorView.backgroundColor = target.color
    cell.hexLabel.text = target.hex
    cell.nameLabel.text = target.title
      
      return cell
   }
}

extension CustomCellViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = CGFloat(190)
        let height = CGFloat(100)
        
        return CGSize(width: width, height: height)
    }
}















