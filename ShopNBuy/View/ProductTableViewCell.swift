//
//  ProductTableViewCell.swift
//  ShopNBuy
//
//  Created by Ravi on 16/06/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

protocol CartDelegate {
    func updateCart(cell: ProductTableViewCell)
}

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var addToCartButton: UIButton!
    
    var delegate: CartDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        addToCartButton.layer.cornerRadius = 5
        addToCartButton.clipsToBounds = true
    }
    
    func setButton(state: Bool) {
        addToCartButton.isSelected = state
        addToCartButton.backgroundColor = (!addToCartButton.isSelected) ? .black : .red
    }
    
    @IBAction func addToCart(_ sender: Any) {
        setButton(state: !addToCartButton.isSelected)
        self.delegate?.updateCart(cell: self)
    }
}
