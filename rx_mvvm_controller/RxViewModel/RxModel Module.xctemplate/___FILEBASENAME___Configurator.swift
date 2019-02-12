//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___Configurator {
  class func configure(inputData:___VARIABLE_sceneName___ViewModel.ModuleInputData,
                       moduleInput: ___VARIABLE_sceneName___ViewModel.ModuleInput)
    -> (viewController: UIViewController, moduleOutput:___VARIABLE_sceneName___ViewModel.ModuleOutput) {
    // View controller
    let viewController = createViewController()
      
    // Dependencies
    let dependencies = createDependencies()
      
    // View model
    let viewModel = ___VARIABLE_sceneName___ViewModel(dependencies: dependencies, moduleInputData: inputData)
    let moduleOutput = viewModel.configureModule(input: moduleInput)
    
    viewController.viewModel = viewModel
      
    return (viewController, moduleOutput)
  }
  
  private class func createViewController() -> ___VARIABLE_sceneName___ViewController {
    return ___VARIABLE_sceneName___ViewController()
  }
  
  private class func createDependencies() -> ___VARIABLE_sceneName___ViewModel.InputDependencies {
    let dependencies = ___VARIABLE_sceneName___ViewModel.InputDependencies()
    return dependencies
  }

}
