package com.craftinginterpreters.lox;

import com.craftinginterpreters.lox.TokenType;

class Token {
    final TokenType type;
    final String lexeme;
    final Object literal;
    final int line;

    Token(TokenType type, String lexeme, Object literal, int line) {
        this.type = type;
        this.lexeme = lexeme;
        this.literal = literal;
        this.line = line;
    }

    public String ToString() {
        return type + " " + lexeme + " " + literal;
    }
}
