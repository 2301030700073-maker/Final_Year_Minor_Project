.class public final enum Lorg/jsoup/parser/TokeniserState$11;
.super Lorg/jsoup/parser/TokeniserState;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "RcdataLessthanSign"

    .line 2
    .line 3
    const/16 v1, 0xa

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
    .locals 5

    .line 1
    const/16 p0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createTempBuffer()V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState$12;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-boolean p0, p2, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    .line 19
    .line 20
    if-eqz p0, :cond_7

    .line 21
    .line 22
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->matchesAsciiAlpha()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_7

    .line 27
    .line 28
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p0, :cond_7

    .line 31
    .line 32
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->lastStartCloseSeq:Ljava/lang/String;

    .line 33
    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "</"

    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iput-object p0, p1, Lorg/jsoup/parser/Tokeniser;->lastStartCloseSeq:Ljava/lang/String;

    .line 53
    .line 54
    :cond_1
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->lastStartCloseSeq:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v0, p2, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x0

    .line 63
    const/4 v2, 0x1

    .line 64
    const/4 v3, -0x1

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget v0, p2, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    .line 68
    .line 69
    if-ne v0, v3, :cond_2

    .line 70
    .line 71
    move v2, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget v4, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 74
    .line 75
    if-lt v0, v4, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iput-object p0, p2, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    .line 79
    .line 80
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-le v4, v3, :cond_4

    .line 91
    .line 92
    iget p0, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 93
    .line 94
    add-int/2addr p0, v4

    .line 95
    iput p0, p2, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-le p0, v3, :cond_5

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    move v2, v1

    .line 110
    :goto_0
    if-eqz v2, :cond_6

    .line 111
    .line 112
    iget v0, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 113
    .line 114
    add-int v3, v0, p0

    .line 115
    .line 116
    :cond_6
    iput v3, p2, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    .line 117
    .line 118
    :goto_1
    if-nez v2, :cond_7

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->createTagPending(Z)Lorg/jsoup/parser/Token$Tag;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iput-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 130
    .line 131
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 132
    .line 133
    .line 134
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState$8;

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_7
    const/16 p0, 0x3c

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 143
    .line 144
    .line 145
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState$3;

    .line 146
    .line 147
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method
