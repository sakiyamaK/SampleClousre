//
//  SampleLabel.swift
//  SampleClosure
//
//  Created by sakiyamaK on 2020/04/17.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit

class SampleLabel: UILabel {
    //外部の無名関数を代入するクロージャー
    var handleTap:((Int?) -> Void)? = nil

    private var intInText: Int? = nil

    override var text: String? {
        didSet {
            guard let _text = text else { return }
            //文字列から数値だけ抜き出す処理
            intInText = Int(_text.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        //タッチされたらhandleTapクロージャーを呼び出す
        //無名関数が代入されていなければnilなので何もしない
        self.handleTap?(intInText)
    }
}
