//
//  SwitUITableViewCell.swift
//  Music
//
//  Created by Hernandez, Osmar Alan (external - Project) on 18/05/21.
//

import UIKit
import SwiftUI

class SwitUITableViewCell<Content: View>: UITableViewCell {

    private let hostingController = UIHostingController<Content?>(rootView: nil)
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        hostingController.view.backgroundColor = .black
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return hostingController.sizeThatFits(in: size)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        hostingController.view.frame.size = self.sizeThatFits(bounds.size)
    }
    
    public func set(rootView: Content) {
        self.hostingController.rootView = rootView
        if !self.contentView.subviews.contains(hostingController.view) {
            self.contentView.addSubview(hostingController.view)
        }
    }
    
    private func removeHostingControllerFromParent() {
        hostingController.willMove(toParent: nil)
        hostingController.view.removeFromSuperview()
        hostingController.removeFromParent()
    }
    
    deinit {
        removeHostingControllerFromParent()
    }
}
