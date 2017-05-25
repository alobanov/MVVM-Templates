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

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController {
  
  // MARK: - Properties
  
  // Dependencies
  var viewModel: ___FILEBASENAMEASIDENTIFIER___Output?
  
  // Public
  var bag = DisposeBag()
  
  // Private
  
  // IBOutlet & UI
  // @IBOutlet weak var tableView: UITableView!
  
  // MARK: - View Live Circle
  
  override func awakeFromNib() {
    super.awakeFromNib()
//    ___FILEBASENAMEASIDENTIFIER___Configurator.configure(self)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    self.configureUI()
    
    do {
      try self.configureRx()
    } catch(let err) {
      print(err)
    }
  }
  
  // MARK: Configuration
  
  func configureRx() throws {
    guard let model = viewModel else {
      throw RxViewModel.bindingViewModelError()
    }
    
    let output = model.configure(input: ___FILEBASENAMEASIDENTIFIER___ViewModel.Input())
    
    //
    output.title.bind(to: self.rx.title).addDisposableTo(bag)
  }
  
  func configureUI() {
    self.title = "RxController"
  }
  
  // MARK: - Additional
  
  deinit {
    print("___FILEBASENAMEASIDENTIFIER___ViewController dead")
  }
}


