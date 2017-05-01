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
    try! self.configureRx()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    self.viewModel?.router.passDataToNextScene(segue: segue)
  }
  
  // MARK: Configuration
  
  func configureRx() throws {
    guard let model = viewModel else {
      fatalError("Need set view model")
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


