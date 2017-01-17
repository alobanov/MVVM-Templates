//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___RouterInput
{
  func passDataToNextScene(segue: UIStoryboardSegue)
  func navigateTo()
}

class ___FILEBASENAMEASIDENTIFIER___Router: ___FILEBASENAMEASIDENTIFIER___RouterInput
{
  weak var viewController: ___FILEBASENAMEASIDENTIFIER___ViewController!
  
  // MARK: Navigation
  
  func navigateTo() {
    // navigate here
  }
  
  // MARK: Communication
  
  func passDataToNextScene(segue: UIStoryboardSegue)
  {
//    if segue.identifier == ViewController.segueID {
//      passDataToController(segue: segue)
//    }
  }
  
  func passDataToProfile(segue: UIStoryboardSegue) {
//    let vc = segue.destination as! ViewController
//    Configurator.configure(viewController: vc)
  }
}
