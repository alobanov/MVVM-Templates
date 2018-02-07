//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ___VARIABLE_sceneName___ViewController: UIViewController {
  
  // MARK: - Properties
  
  // Dependencies
  var viewModel: ___VARIABLE_sceneName___ViewOutput?
  
  // Public
  var bag = DisposeBag()
  
  // Private
  
  // IBOutlet & UI
  lazy var customView = self.view as? ___VARIABLE_sceneName___View
  
  // MARK: - View lifecycle
  override func loadView() {
    let view = ___VARIABLE_sceneName___View()
    self.view = view
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.configureUI()
    
    do {
      try self.configureRx()
    } catch(let err) {
      print(err)
    }
  }
  
  // MARK: - Configuration
  
  private func configureRx() throws {
    guard let model = viewModel else {
      throw RxViewModelState.viewModelError()
    }
    
    let input = ___VARIABLE_sceneName___ViewModel.Input()
    let output = model.configure(input: input)
    
    //bind title
    output.title.bind(to: self.rx.title).disposed(by: bag)
  }
  
  private func configureUI() {
    
  }
  
  // MARK: - Additional
  
  deinit {
    print("___VARIABLE_sceneName___ViewController deinit")
  }
}
