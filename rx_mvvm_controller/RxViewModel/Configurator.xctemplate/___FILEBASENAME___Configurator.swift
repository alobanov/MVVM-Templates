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
  
  class func configure(viewController: ___FILEBASENAMEASIDENTIFIER___ViewController) // , moduleInput: ___FILEBASENAMEASIDENTIFIER___ViewModel.ModuleInput) -> ___FILEBASENAMEASIDENTIFIER___ViewModel.ModuleOutput
  {
    // router
    let router = ___FILEBASENAMEASIDENTIFIER___Router()
    router.viewController = viewController
    
    // dependencies
    let dependencies = ___FILEBASENAMEASIDENTIFIER___ViewModel.InputDependencies(router: router)
    
    // view model
    let viewModel = ___FILEBASENAMEASIDENTIFIER___ViewModel(dependencies: dependencies)
    // let moduleOutput = viewModel.configureModule(input: moduleInput)
    
    // controller
    viewController.viewModel = viewModel
    
    // return moduleOutput
  }
}
