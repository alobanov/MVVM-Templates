//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

struct ___FILEBASENAMEASIDENTIFIER___ModuleInputData {
  
}

class ___FILEBASENAMEASIDENTIFIER___Configurator {
  // MARK: Configuration
  
  class func configure() -> (viewControler: UIViewController, moduleOutput:___FILEBASENAMEASIDENTIFIER___ViewModel.ModuleOutput) {
    return ___FILEBASENAMEASIDENTIFIER___Configurator.configure(moduleInput: nil, data: nil)
  }
  
  class func configure(moduleInput: ___FILEBASENAMEASIDENTIFIER___ViewModel.ModuleInput) -> (viewControler: UIViewController, moduleOutput:___FILEBASENAMEASIDENTIFIER___ViewModel.ModuleOutput) {
    return ___FILEBASENAMEASIDENTIFIER___Configurator.configure(moduleInput: moduleInput, data: nil)
  }
  
  class func configure(data:___FILEBASENAMEASIDENTIFIER___ModuleInputData) -> (viewControler: UIViewController, moduleOutput:___FILEBASENAMEASIDENTIFIER___ViewModel.ModuleOutput) {
    return ___FILEBASENAMEASIDENTIFIER___Configurator.configure(moduleInput: nil, data: data)
  }
  
  class func configure(moduleInput: ___FILEBASENAMEASIDENTIFIER___ViewModel.ModuleInput?, data:___FILEBASENAMEASIDENTIFIER___ModuleInputData?) -> (viewControler: UIViewController, moduleOutput:___FILEBASENAMEASIDENTIFIER___ViewModel.ModuleOutput) {
    //view controller
    let viewController = createViewController()
    
    // dependencies
    let dependencies = createDependencies(viewController: viewController)
    
    // view model
    let viewModel = ___FILEBASENAMEASIDENTIFIER___ViewModel(dependencies: dependencies)
    let moduleOutput = viewModel.configureModule(input: moduleInput, data: data)
    
    // controller
    viewController.viewModel = viewModel
    
    return (viewController, moduleOutput)
  }
  
  private class func createViewController() -> ___FILEBASENAMEASIDENTIFIER___ViewController {
    //FIXME: create ___FILEBASENAMEASIDENTIFIER___ViewController
    return ___FILEBASENAMEASIDENTIFIER___ViewController()
  }
  
  private class func createDependencies(viewController: UIViewController) -> ___FILEBASENAMEASIDENTIFIER___ViewModel.InputDependencies {
    //setup dependencies of outer servicces (API, DB, etc...)
    
    // router
    let router = ___FILEBASENAMEASIDENTIFIER___Router(viewController: viewController)
    
    let dp = ___FILEBASENAMEASIDENTIFIER___ViewModel.InputDependencies(router: router)
    return dp
  }
  
}
