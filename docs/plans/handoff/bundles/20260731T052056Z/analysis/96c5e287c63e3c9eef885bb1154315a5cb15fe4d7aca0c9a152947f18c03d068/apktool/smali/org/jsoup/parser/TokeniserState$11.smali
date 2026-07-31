.class public final enum Lorg/jsoup/parser/TokeniserState$11;
.super Lorg/jsoup/parser/TokeniserState;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

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
    iget-object v0, p2, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x1

    .line 62
    const/4 v3, -0x1

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget v0, p2, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    .line 66
    .line 67
    if-ne v0, v3, :cond_2

    .line 68
    .line 69
    move v2, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget v4, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 72
    .line 73
    if-lt v0, v4, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iput-object p0, p2, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    .line 77
    .line 78
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-le v4, v3, :cond_4

    .line 89
    .line 90
    iget p0, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 91
    .line 92
    add-int/2addr p0, v4

    .line 93
    iput p0, p2, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-le p0, v3, :cond_5

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    move v2, v1

    .line 108
    :goto_0
    if-eqz v2, :cond_6

    .line 109
    .line 110
    iget v0, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 111
    .line 112
    add-int v3, v0, p0

    .line 113
    .line 114
    :cond_6
    iput v3, p2, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    .line 115
    .line 116
    :goto_1
    if-nez v2, :cond_7

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->createTagPending(Z)Lorg/jsoup/parser/Token$Tag;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iput-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 128
    .line 129
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 130
    .line 131
    .line 132
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_7
    const/16 p0, 0x3c

    .line 139
    .line 140
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 141
    .line 142
    .line 143
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    .line 144
    .line 145
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method
