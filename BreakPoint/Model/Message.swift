//
//  Message.swift
//  BreakPoint
//
//  Created by Can Haskan on 13.12.2025.
//

import Foundation


class Message {
    private var _content: String
    private var _senderId: String
    
    var content: String {
        return _content
    }
    
    var senderId: String {
        return _senderId
    }
    
    init(_content: String, _senderId: String) {
        self._content = _content
        self._senderId = _senderId
    }
    
}
