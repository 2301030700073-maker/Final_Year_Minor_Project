.class public final enum Lorg/jsoup/parser/TokeniserState$10;
.super Lorg/jsoup/parser/TokeniserState;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "TagName"

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    iget v0, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 5
    .line 6
    iget v1, p2, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 7
    .line 8
    iget-object v2, p2, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 9
    .line 10
    move v3, v0

    .line 11
    :goto_0
    const/16 v4, 0x3e

    .line 12
    .line 13
    const/16 v5, 0x2f

    .line 14
    .line 15
    const/16 v6, 0x20

    .line 16
    .line 17
    const/16 v7, 0xd

    .line 18
    .line 19
    const/16 v8, 0xc

    .line 20
    .line 21
    const/16 v9, 0xa

    .line 22
    .line 23
    const/16 v10, 0x9

    .line 24
    .line 25
    if-ge v3, v1, :cond_0

    .line 26
    .line 27
    aget-char v11, v2, v3

    .line 28
    .line 29
    if-eq v11, v10, :cond_0

    .line 30
    .line 31
    if-eq v11, v9, :cond_0

    .line 32
    .line 33
    if-eq v11, v8, :cond_0

    .line 34
    .line 35
    if-eq v11, v7, :cond_0

    .line 36
    .line 37
    if-eq v11, v6, :cond_0

    .line 38
    .line 39
    if-eq v11, v5, :cond_0

    .line 40
    .line 41
    if-eq v11, v4, :cond_0

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iput v3, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 47
    .line 48
    if-le v3, v0, :cond_1

    .line 49
    .line 50
    iget-object v1, p2, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 51
    .line 52
    iget-object v2, p2, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 53
    .line 54
    sub-int/2addr v3, v0

    .line 55
    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string v0, ""

    .line 61
    .line 62
    :goto_1
    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_6

    .line 72
    .line 73
    if-eq p2, v6, :cond_5

    .line 74
    .line 75
    if-eq p2, v5, :cond_4

    .line 76
    .line 77
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

    .line 78
    .line 79
    if-eq p2, v4, :cond_3

    .line 80
    .line 81
    const v1, 0xffff

    .line 82
    .line 83
    .line 84
    if-eq p2, v1, :cond_2

    .line 85
    .line 86
    if-eq p2, v10, :cond_5

    .line 87
    .line 88
    if-eq p2, v9, :cond_5

    .line 89
    .line 90
    if-eq p2, v8, :cond_5

    .line 91
    .line 92
    if-eq p2, v7, :cond_5

    .line 93
    .line 94
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_4
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState$42;

    .line 122
    .line 123
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_5
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState$34;

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_6
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 134
    .line 135
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method
