//
//  ChildModel.swift
//  JobVar
//
//  Created by Hamid Manafov on 13.12.20.
//

import Firebase

struct ChildModel {
    let resume: String
    let ref: DatabaseReference?
    
    init(resume: String) {
        self.resume = resume
        self.ref = nil
    }
    
    init(snapShot: DataSnapshot) {
        let snapShotValue = snapShot.value as! [String : AnyObject]
        resume = snapShotValue["resume"] as! String
        ref = snapShot.ref
    }
    
    func convertChildModelToDictinarry() -> Any {
        return ["resume" : resume]
    }
}


