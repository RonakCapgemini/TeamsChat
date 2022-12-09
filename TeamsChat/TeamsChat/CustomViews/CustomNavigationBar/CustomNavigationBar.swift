import Foundation
import UIKit

final class CustomNavigationBar: UIView {
    
    private static let NIB_NAME = "CustomNavigationBar"
    
    @IBOutlet private var view: UIView!
    @IBOutlet weak var leftButton: UIButton! {
        didSet {
            leftButton.backgroundColor = .clear
            leftButton.layer.cornerRadius = leftButton.frame.width / 2
            leftButton.imageView?.layer.cornerRadius = leftButton.frame.width / 2
        }
    }
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rightFirstButton: UIButton!
    @IBOutlet weak var rightSecondButton: UIButton!
    
    var title: String = "" {
        didSet {
            titleLabel.text = title
        }
    }
    
    var isLeftButtonHidden: Bool {
        set {
            leftButton.isHidden = newValue
        }
        get {
            return leftButton.isHidden
        }
    }
    
    var isRightFirstButtonEnabled: Bool {
        set {
            rightFirstButton.isEnabled = newValue
        }
        get {
            return rightFirstButton.isEnabled
        }
    }
    
    override func awakeFromNib() {
        initWithNib()
    }
    
    private func initWithNib() {
        Bundle.main.loadNibNamed(CustomNavigationBar.NIB_NAME, owner: self, options: nil)
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        setupLayout()
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate(
            [
                view.topAnchor.constraint(equalTo: topAnchor),
                view.leadingAnchor.constraint(equalTo: leadingAnchor),
                view.bottomAnchor.constraint(equalTo: bottomAnchor),
                view.trailingAnchor.constraint(equalTo: trailingAnchor),
            ]
        )
    }
}
