//
//  ViewController.swift
//  SampleClosure
//
//  Created by sakiyamaK on 2020/04/17.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let lbl = SampleLabel()
        lbl.isUserInteractionEnabled = true
        self.view.addSubview(lbl)

        //画面中央に置く制約
        lbl.numberOfLines = 0
        lbl.setContentCompressionResistancePriority(.required, for: .horizontal)
        lbl.setContentCompressionResistancePriority(.required, for: .vertical)
        lbl.setContentHuggingPriority(.required, for: .horizontal)
        lbl.setContentHuggingPriority(.required, for: .vertical)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.widthAnchor.constraint(equalToConstant: 200).isActive = true
        lbl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        lbl.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true

        lbl.text = "あいうえお1かきくけこ2さしすせそ3456だいっpわじぇぱいえ19pjpじゃ"

        //このSampleLabelはタップした時に文字列内の数値だけ抜き出すというクロージャをパラメータとして用意してくれているので
        //無名関数を代入してタップした時にやって欲しい処理を書く
        //今回は単純にprintで出力してるだけ
        lbl.handleTap = {(value) in
            guard let _value = value else {
                print("テキスト内に数値はないよ")
                return
            }
            print("テキスト内の数値は\(_value)だよ")
        }
    }
}

