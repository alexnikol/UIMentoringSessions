//
//  ActionButton.swift
//  UIMentoringSession
//
//  Created by Maxos on 6/1/23.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

final class MaksymBilyk_ActionButton: NibInitiableView {
    
    @IBOutlet weak var socialIconView: UIImageView!
    @IBOutlet weak var actionButton: MaksymBilyk_Buttons!
    var onTap: (() -> Void)?
    
    @IBAction func onActionTap(_ sender: Any) {
        onTap?()
    }
    
    func setup(title: String, image: UIImage) {
        socialIconView.image = image
        actionButton.setTitle(title, for: .normal)
    }
}

public protocol NibInitiable {
    var nibName: String? { get }
    var nibBundle: Bundle? { get }
    var containerView: UIView? { get }
}

public extension NibInitiable where Self: UIView {
    
    func loadNib() {
        let viewType = type(of: self)
        let bundle = nibBundle ?? Bundle(for: viewType)
        let nibName = self.nibName ?? String(describing: viewType)
        bundle.loadNibNamed(nibName, owner: self, options: nil)
        guard let containerView = containerView else {
            fatalError("Container view is not connected")
        }
        addSubview(containerView)
        translatesAutoresizingMaskIntoConstraints = false
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}

open class NibInitiableView: UIView, NibInitiable {
    
    /// Connect your nib's root view
    @IBOutlet public var containerView: UIView?
    
    /// If nibName is nil, nib will loading by class name
    open var nibName: String?
    
    open var nibBundle: Bundle?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
        setup()
    }
    
    public init(nibName: String?, bundle: Bundle?) {
        super.init(frame: .zero)
        self.nibName = nibName
        self.nibBundle = bundle
        loadNib()
        setup()
    }
    
    /// Override for setup something after nib loading
    open func setup() {
        
    }
}
