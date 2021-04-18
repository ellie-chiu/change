//
//  ViewController.swift
//  change
//
//  Created by 邱怡潔 on 2021/4/17.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var hairview: UIImageView!
    @IBOutlet weak var bodyview: UIImageView!
    @IBOutlet weak var pagecontrol: UIPageControl!
    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var emotionview: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    
    
   
    @IBAction func changepage(_ sender: UIPageControl) {
        let point = CGPoint(x: scrollview.bounds.width*CGFloat(sender.currentPage), y: 0)
        scrollview.setContentOffset(point, animated: true)
    }
    

        @IBAction func changehair(_ sender: UIButton) {
        let image = sender.currentImage
        hairview.image = image
    }
    
    @IBAction func changebody(_ sender: UIButton) {
        let imaage = sender.currentImage
        bodyview.image = imaage
        
    }
    
    @IBAction func random(_ sender: Any) {
        hairview.image = UIImage(named: hairarrays[Int.random(in:0...2)])
        bodyview.image = UIImage(named: bodyarrays[Int.random(in: 0...2)])
        emotionview.image = UIImage(named: emotionarrays[Int.random(in: 0...4)])
    }
}

extension ViewController:UIScrollViewDelegate{
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let page = scrollView.contentOffset.x / scrollView.bounds.width
            pagecontrol.currentPage = Int(page)
    }
}

