//
//  ItemTableViewCell.swift
//  MySearchApp
//
//  Created by Mao Nishi on 2015/10/12.
//  Copyright © 2015年 Mao Nishi. All rights reserved.
//

import UIKit

//商品のセル
class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView! //商品画像
    @IBOutlet weak var itemTitleLabel: UILabel! //商品タイトル
    @IBOutlet weak var itemPriceLabel: UILabel! //商品価格
    
    var itemUrl :String? //商品ページのURL。遷移先の画面で利用する
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        //再利用時に元々入っている情報をクリア
        itemImageView.image = nil
    }
}

