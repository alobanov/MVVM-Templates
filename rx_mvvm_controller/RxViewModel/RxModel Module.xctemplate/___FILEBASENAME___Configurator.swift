//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___Configurator {
  class func configure(inputData:___VARIABLE_sceneName___ViewModel.ModuleInputData) throws
    -> (viewController: UIViewController, moduleOutput:___VARIABLE_sceneName___ViewModel.ModuleOutput) {
    return try ___VARIABLE_sceneName___Configurator.configure(moduleInput: nil, inputData: inputData)
  }
  
  class func configure(moduleInput: ___VARIABLE_sceneName___ViewModel.ModuleInput?,
                       inputData:___VARIABLE_sceneName___ViewModel.ModuleInputData) throws
    -> (viewController: UIViewController, moduleOutput:___VARIABLE_sceneName___ViewModel.ModuleOutput) {
    // View controller
    let viewController = createViewController()
      
    // Dependencies
    let dependencies = try createDependencies()
      
    // View model
    let viewModel = ___VARIABLE_sceneName___ViewModel(dependencies: dependencies, moduleInputData: inputData)
    let moduleOutput = viewModel.configureModule(input: moduleInput)
    
    viewController.viewModel = viewModel
      
    return (viewController, moduleOutput)
  }
  
  private class func createViewController() -> ___VARIABLE_sceneName___ViewController {
    return ___VARIABLE_sceneName___ViewController()
  }
  
  private class func createDependencies() throws -> ___VARIABLE_sceneName___ViewModel.InputDependencies {
    let dependencies =
      ___VARIABLE_sceneName___ViewModel.InputDependencies()
    return dependencies
  }
 
  static func module(inputData: ___VARIABLE_sceneName___ViewModel.ModuleInputData, moduleInput: ___VARIABLE_sceneName___ViewModel.ModuleInput?)
    -> (Presentable, ___VARIABLE_sceneName___ViewModel.ModuleOutput)? {
      do {
        let output = try ___VARIABLE_sceneName___Configurator.configure(moduleInput: moduleInput, data: inputData)
        return (output.viewController, output.moduleOutput)
      } catch let err {
        print(err)
        return nil
      }
  }
}
