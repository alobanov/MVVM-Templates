//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___Configurator {
  // MARK: Configuration
  
  class func configure(data:___VARIABLE_sceneName___ViewModel.ModuleInputData) -> (viewControler: UIViewController, moduleOutput:___VARIABLE_sceneName___ViewModel.ModuleOutput) {
    return ___VARIABLE_sceneName___Configurator.configure(moduleInput: nil, data: data)
  }
  
  class func configure(moduleInput: ___VARIABLE_sceneName___ViewModel.ModuleInput?,
                       data:___VARIABLE_sceneName___ViewModel.ModuleInputData)
    -> (viewControler: UIViewController, moduleOutput:___VARIABLE_sceneName___ViewModel.ModuleOutput)
  {
    //view controller
    let viewController = createViewController()
    
    // dependencies
    let dependencies = createDependencies()
    
    // view model
    let viewModel = ___VARIABLE_sceneName___ViewModel(dependencies: dependencies, moduleInputData: data)
    let moduleOutput = viewModel.configureModule(input: moduleInput)
    
    // controller
    viewController.viewModel = viewModel
    
    return (viewController, moduleOutput)
  }
  
  private class func createViewController() -> ___VARIABLE_sceneName___ViewController {
    //FIXME: create ___VARIABLE_sceneName___ViewController
    return ___VARIABLE_sceneName___ViewController()
  }
  
  private class func createDependencies() -> ___VARIABLE_sceneName___ViewModel.InputDependencies {
    //setup dependencies of outer servicces (API, DB, etc...)
    
    let dependencies =
      ___VARIABLE_sceneName___ViewModel.InputDependencies()
    return dependencies
  }
  
}
