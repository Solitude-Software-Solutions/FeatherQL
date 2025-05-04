package types


Query :: struct {
    Command_Token : TokenType,
    Dynamic_Token: TokenType, // ALL
    Location_Token: [dynamic]string,
    Paramerter_Tokens: map[string]string,
    isChained: bool,
    rawInput: string,
    // Finder_Token: map[string]string , //Will be used to returing things with specifications. Like FETCHING specific
}

TokenType :: enum {
    EOF = 0,
    INVALID,
    NEW,
    FETCH,
    RENAME,
    SET,
    ERASE,
    ILLEGAL,
}

Token :=  [TokenType]string {
.NEW = "NEW",
.FETCH = "FETCH",
.RENAME = "RENAME",
.SET = "SET",
.ERASE = "ERASE"
}





