//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

public class ___VARIABLE_sceneName___Configurator {
  typealias Input = (
    inputData: ___VARIABLE_sceneName___ViewModel.ModuleInputData,
    moduleInput: ___VARIABLE_sceneName___ViewModel.ModuleInput
  )
  
  typealias Result = (
    viewController: UIViewController,
    moduleOutput: ___VARIABLE_sceneName___ViewModel.ModuleOutput
  )

  class func configure(input: Input) throws -> Result {
    // View controller
    let viewController = ___VARIABLE_sceneName___ViewController()
      
    // Dependencies
    let dependencies = try createDependencies()
      
    // View model
    let viewModel = ___VARIABLE_sceneName___ViewModel(
      dependencies: dependencies, moduleInputData: input.inputData
    )
    let moduleOutput = viewModel.configureModule(input: input.moduleInput)
    
    viewController.viewModel = viewModel
    return (viewController, moduleOutput)
  }
  
  private class func createDependencies() throws -> ___VARIABLE_sceneName___ViewModel.InputDependencies {
    return ___VARIABLE_sceneName___ViewModel.InputDependencies()
  }
 
  static func module(input: Input) -> ___VARIABLE_sceneName___Configurator.Result {
    do {
      let output = try ___VARIABLE_sceneName___Configurator.configure(input: input)
      return (output.viewController, output.moduleOutput)
    } catch let err {
      fatalError(err.localizedDescription)
    }
  }
}
