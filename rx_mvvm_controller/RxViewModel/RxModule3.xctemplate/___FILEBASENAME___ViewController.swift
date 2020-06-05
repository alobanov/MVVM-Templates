//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import RxCocoa
import RxSwift
import UIKit

public class ___VARIABLE_sceneName___Controller: Controller<___VARIABLE_sceneName___View> {
    // MARK: - Properties

    // Dependencies
    public var viewModel: ___VARIABLE_sceneName___ViewOutput!

    // Private

    // MARK: - View lifecycle

    deinit {
        print("___VARIABLE_sceneName___ViewController deinit")
    }

    // MARK: - Configuration

    public override func configureUI() {
        customView.makeConstraints(viewController: self)
    }

    public override func configureRx() {
        /// Commands
        let input = ___VARIABLE_sceneName___ViewModel.Input(
            appearState: viewAppearState.asSignal()
        )

        /// Bindings
        configureBindings(viewModel.configure(input: input))
    }

    private func configureBindings(_ bindings: ___VARIABLE_sceneName___ViewModel.Output) {
        bindings.title.drive(rx.title).disposed(by: bag)
        bindings.state.drive(stateHandler).disposed(by: bag)
    }

    // MARK: - Additional

    private var stateHandler: Binder<ModelState> {
        return Binder(self) { _, state in
//      let loadState = (state == .networkActivity)
            if case let .error(error) = state {
                print(error)
            }
        }
    }
}
