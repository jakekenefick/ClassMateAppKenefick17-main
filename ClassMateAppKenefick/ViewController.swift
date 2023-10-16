//
//  ViewController.swift
//  ClassMateAppKenefick
//
//  Created by JAKE KENEFICK on 10/11/23.
//

import UIKit

class ViewController: UIViewController {

    var students : [Student] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        var s1 = Student(name:"Bob", age: 10, grade: 90.0)
        var s2 = Student(name: "Bill", age: 11, grade: 87.0)
        var s3 = Student(name: "Will", age: 12, grade: 74.0)
        var s4 = Student(name: "Jill", age: 13, grade: 65.0)
        students.append(s1)
        students.append(s2)
        students.append(s3)
        students.append(s4)
        
    }

    @IBAction func ToStudentInfo(_ sender: UIButton) {
        performSegue(withIdentifier: "toTwo", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nvc = segue.destination as! ViewController2
        nvc.students2 = students
    }
    }
    
//Add navigation controller by clicking yellow button, editor embed in.

