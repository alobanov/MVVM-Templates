//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___Configurator
{
  // MARK: Configuration
  
  class func configure(viewController: ___FILEBASENAMEASIDENTIFIER___ViewController)
  {
    // router
    let router = ___FILEBASENAMEASIDENTIFIER___Router()
    router.viewController = viewController
    
    // dependencies
    // let api = NetworkHelper()
    
    // view model
    let viewModel = ___FILEBASENAMEASIDENTIFIER___ViewModel(
      dependencies: (view: viewController, router: router)
    )
    
    // controller
    viewController.viewModel = viewModel
  }
}
