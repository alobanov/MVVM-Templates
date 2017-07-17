//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___RouterInput {
  func push(viewController:UIViewController, animated: Bool)
  func pop(animated: Bool)
}

class ___FILEBASENAMEASIDENTIFIER___Router: ___FILEBASENAMEASIDENTIFIER___RouterInput {
  weak var viewController: UIViewController!
  
  var navigationController: UINavigationController? {
    get { return self.viewController.navigationController}
  }
  
  init(viewController: UIViewController) {
    self.viewController = viewController
  }
  
  // MARK: Navigation
  
  func push(viewController:UIViewController, animated: Bool) {
    self.navigationController?.pushViewController(viewController, animated: animated)
  }
  
  func pop(animated: Bool) {
    // navigate here
    self.navigationController?.popViewController(animated: animated)
  }
}
