class Prefecture
  class << self
    def all
      [{id: 1 ,name: '北海道', furigana: 'ほっかいどう'},
       {id: 2 ,name: '青森県', furigana: 'あおもり'},  
       {id: 3 ,name: '岩手県', furigana: 'いわて'},  
       {id: 4 ,name: '宮城県', furigana: 'みやぎ'},  
       {id: 5 ,name: '秋田県', furigana: 'あきた'},  
       {id: 6 ,name: '山形県', furigana: 'やまがた'},  
       {id: 7 ,name: '福島県', furigana: 'ふくしま'},  
       {id: 8 ,name: '茨城県', furigana: 'いばらき'},  
       {id: 9 ,name: '栃木県', furigana: 'とちぎ'},  
       {id: 10,name: '群馬県', furigana: 'ぐんま'},  
       {id: 11,name: '埼玉県', furigana: 'さいたま'},  
       {id: 12,name: '千葉県', furigana: 'ちば'},  
       {id: 13,name: '東京都', furigana: 'とうきょう'},  
       {id: 14,name: '神奈川県',furigana:  'かながわ'},  
       {id: 15,name: '新潟県', furigana: 'にいがた'},  
       {id: 16,name: '富山県', furigana: 'とやま'},  
       {id: 17,name: '石川県', furigana: 'いしかわ'},  
       {id: 18,name: '福井県', furigana: 'ふくい'},  
       {id: 19,name: '山梨県', furigana: 'やまなし'},  
       {id: 20,name: '長野県', furigana: 'ながの'},  
       {id: 21,name: '岐阜県', furigana: 'ぎふ'},  
       {id: 22,name: '静岡県', furigana: 'しずおか'},  
       {id: 23,name: '愛知県', furigana: 'あいち'},  
       {id: 24,name: '三重県', furigana: 'みえ'},  
       {id: 25,name: '滋賀県', furigana: 'しが'},  
       {id: 26,name: '京都府', furigana: 'きょうと'},  
       {id: 27,name: '大阪府', furigana: 'おおさか'},  
       {id: 28,name: '兵庫県', furigana: 'ひょうご'},  
       {id: 29,name: '奈良県', furigana: 'なら'},  
       {id: 30,name: '和歌山県', furigana: 'わかやま'},  
       {id: 31,name: '鳥取県', furigana: 'とっとり'},  
       {id: 32,name: '島根県', furigana: 'しまね'},  
       {id: 33,name: '岡山県', furigana: 'おかやま'},  
       {id: 34,name: '広島県', furigana: 'ひろしま'},  
       {id: 35,name: '山口県', furigana: 'やまぐち'},  
       {id: 36,name: '徳島県', furigana: 'とくしま'},  
       {id: 37,name: '香川県', furigana: 'かがわ'},  
       {id: 38,name: '愛媛県', furigana: 'えひめ'},  
       {id: 39,name: '高知県', furigana: 'こうち'},  
       {id: 40,name: '福岡県', furigana: 'ふくおか'},  
       {id: 41,name: '佐賀県', furigana: 'さが'},  
       {id: 42,name: '長崎県', furigana: 'ながさき'},  
       {id: 43,name: '熊本県', furigana: 'くまもと'},  
       {id: 44,name: '大分県', furigana: 'おおいた'},  
       {id: 45,name: '宮崎県', furigana: 'みやざき'},  
       {id: 46,name: '鹿児島県', furigana: 'かごしま'},  
       {id: 47,name: '沖縄県', furigana: 'おきなわ'}      
      ]
    end
    
    def find(id)
      self.all.find {|item| item[:id] == id.to_i }
    end
    
    def find_by_name(name)
      self.all.find {|item| item[:name] == name}
    end

    def find_by_id(id)
      self.find(id)
    end
  end
end
