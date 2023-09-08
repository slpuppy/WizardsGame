import UIKit

final class DefaultButton: UIButton {
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = LayoutMetrics.cornerRadius
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not implemented")
    }
    
    static func createButton(color: UIColor, title: String) -> DefaultButton {
        var config = UIButton.Configuration.filled()
        var container = AttributeContainer()
        
        container.font = UIFont.systemFont(ofSize: 25, weight: .black)
        
        config.cornerStyle = .medium
        config.attributedTitle = AttributedString(title.uppercased(), attributes: container)
        config.contentInsets = NSDirectionalEdgeInsets(top: 27, leading: 27, bottom: 26, trailing: 27)
        config.baseBackgroundColor = color
        
        return DefaultButton(configuration: config)
    }
    
    static func createButtonWithIcon(color: UIColor, title: String, icon: UIImage) -> DefaultButton {
        var config = UIButton.Configuration.filled()
        var container = AttributeContainer()
        
        container.font = UIFont.systemFont(ofSize: 25, weight: .black)
        
        config.cornerStyle = .medium
        config.attributedTitle = AttributedString(title.uppercased(), attributes: container)
        config.image = icon
        config.imagePadding = 10
        config.contentInsets = NSDirectionalEdgeInsets(top: 27, leading: -5, bottom: 26, trailing: 0)
        config.baseBackgroundColor = color
        
        return DefaultButton(configuration: config)
    }
    
    static func createTutorialButton(title: String) -> DefaultButton {
        var config = UIButton.Configuration.filled()
        var container = AttributeContainer()
        
        container.font = UIFont.systemFont(ofSize: 14, weight: .black)
        
        config.cornerStyle = .medium
        config.attributedTitle = AttributedString(title.uppercased(), attributes: container)
        config.contentInsets = NSDirectionalEdgeInsets(top: 17, leading: 0, bottom: 18, trailing: 0)
        config.baseBackgroundColor = .appBlueSpell
        
        return DefaultButton(configuration: config)
    }
    
    static func createSymbolButton(image: UIImage) -> DefaultButton {
        var config = UIButton.Configuration.plain()
        
        config.buttonSize = .large
        config.image = image
        
        return DefaultButton(configuration: config)
    }
}
