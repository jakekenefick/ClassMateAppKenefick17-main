//
//  ViewController2.swift
//  ClassMateAppKenefick
//
//  Created by JAKE KENEFICK on 10/11/23.
//

import UIKit

class ViewController2: UIViewController {
    var students2 : [Student] = [] 
    
    
    @IBOutlet weak var NameOutlet: UILabel!
    @IBOutlet weak var AgeOutlet: UILabel!
    @IBOutlet weak var GradeOutlet: UILabel!
    var x = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameOutlet.text = "Name: \(students2[x].name)"
        AgeOutlet.text = "Age: \(students2[x].age)"
        GradeOutlet.text = "Grade: \(students2[x].grade)"
        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func NextAction(_ sender: UIButton) {
        if(x < students2.endIndex - 1)
        {
            x+=1
            NameOutlet.text = "Name: \(students2[x].name)"
            AgeOutlet.text = "Age: \(students2[x].age)"
            GradeOutlet.text = "Grade: \(students2[x].grade)"
            
        }
        else{
            x = -1
        }
        
    }
    
    @IBAction func SortAction(_ sender: UIButton) {
        students2.sort{
            $0.name < $1.name
        }
    }
    
    
    @IBAction func addAction(_ sender: UIButton) {
        
        
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
