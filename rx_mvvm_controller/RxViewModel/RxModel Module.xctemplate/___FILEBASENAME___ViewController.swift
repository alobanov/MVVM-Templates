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

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController, ___FILEBASENAMEASIDENTIFIER___Input {
  
  // MARK: - Properties
  // dependencies
  var viewModel: ___FILEBASENAMEASIDENTIFIER___Output?
  
  // Private
  var disposeBag: DisposeBag = DisposeBag()
  
  // MARK: Life Cycle
  
  override func awakeFromNib() {
    super.awakeFromNib()
//    ___FILEBASENAMEASIDENTIFIER___Configurator.configure(self)
  }
  
  // MARK: - View Live Circle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    self.configureUI()
    self.configureRx()
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
  
  func configureRx() {
    guard let model = viewModel else { return }
    model.confRx()
    
    model.title.asObservable()
      .bindTo(self.rx.title)
      .addDisposableTo(disposeBag)
  }
  
  func configureUI() {
    self.title = "RxController"
  }
  
  // MARK: - Action
  
  // MARK: - ___FILEBASENAMEASIDENTIFIER___Input
//  func show(error: NSError) {
//    
//  }
  
  // MARK: - Additional
  
  deinit {
    print("___FILEBASENAMEASIDENTIFIER___ViewController dead")
  }
}


