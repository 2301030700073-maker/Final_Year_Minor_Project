.class public final enum Lorg/jsoup/parser/TokeniserState$38;
.super Lorg/jsoup/parser/TokeniserState;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AttributeValue_doubleQuoted"

    .line 2
    .line 3
    const/16 v1, 0x25

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
    .locals 7

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 5
    .line 6
    .line 7
    iget v0, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 8
    .line 9
    iget v1, p2, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 10
    .line 11
    iget-object v2, p2, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 12
    .line 13
    move v3, v0

    .line 14
    :goto_0
    const/16 v4, 0x26

    .line 15
    .line 16
    const/16 v5, 0x22

    .line 17
    .line 18
    if-ge v3, v1, :cond_0

    .line 19
    .line 20
    aget-char v6, v2, v3

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    if-eq v6, v4, :cond_0

    .line 25
    .line 26
    if-eq v6, v5, :cond_0

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput v3, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 32
    .line 33
    if-le v3, v0, :cond_1

    .line 34
    .line 35
    iget-object v1, p2, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 36
    .line 37
    iget-object v2, p2, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 38
    .line 39
    sub-int/2addr v3, v0

    .line 40
    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string v0, ""

    .line 46
    .line 47
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x1

    .line 52
    if-lez v1, :cond_2

    .line 53
    .line 54
    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 55
    .line 56
    iget-object v1, v1, Lorg/jsoup/parser/Token$Tag;->attrValue:Lorg/jsoup/parser/TokenData;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenData;->append(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 63
    .line 64
    iput-boolean v2, v0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 65
    .line 66
    :goto_2
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    if-eq v1, v5, :cond_6

    .line 77
    .line 78
    if-eq v1, v4, :cond_4

    .line 79
    .line 80
    const v2, 0xffff

    .line 81
    .line 82
    .line 83
    if-eq v1, v2, :cond_3

    .line 84
    .line 85
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 86
    .line 87
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p0, v1, v0, p1}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 96
    .line 97
    .line 98
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p1, p0, v2}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 113
    .line 114
    if-eqz p0, :cond_5

    .line 115
    .line 116
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p1, v0, p2, p0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(II[I)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_5
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    invoke-virtual {p1, v4, v0, p0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_6
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState$41;

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_7
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 142
    .line 143
    const p1, 0xfffd

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    invoke-virtual {p0, p1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    .line 151
    .line 152
    .line 153
    return-void
.end method
