// Copyright (c) 2019 Lobanov Aleksey. All rights reserved.

import RxCocoa
import RxSwift
import UIKit

// MARK: Base view protocol template

public protocol ViewProtocol: UIView {
  func makeConstraints(viewController: UIViewController)
}

// MARK: Base viewcontroller protocol template

public protocol ControllerProtocol {
  func configureUI()
  func configureRx()
}

public class Controller<T: ViewProtocol>: UIViewController, ControllerProtocol {
  // MARK: - Properties
  
  let bag = DisposeBag()
  let viewAppearState = PublishRelay<ViewAppearState>()
  
  lazy var customView: T = {
    let customView = T(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
    return customView
  }()
  
  // MARK: - View lifecycle
  
  public override func loadView() {
    view = customView
  }
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    configureUI()
    configureRx()
    viewAppearState.accept(.didLoad)
  }
  
  public override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    viewAppearState.accept(.willAppear)
  }
  
  public override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    viewAppearState.accept(.didAppear)
  }
  
  public override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    viewAppearState.accept(.willDisappear)
  }
  
  public override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    viewAppearState.accept(.didDisappear)
  }
  
  // MARK: - Configuration
  
  public func configureUI() {
    assertionFailure("Need override configureUI")
  }
  
  public func configureRx() {
    assertionFailure("Need override configureRx")
  }
}
