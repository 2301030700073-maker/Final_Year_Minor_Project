.class public final enum Lorg/jsoup/parser/TokeniserState$68;
.super Lorg/jsoup/parser/TokeniserState;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "CdataSection"

    .line 2
    .line 3
    const/16 v1, 0x43

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
    const-string p0, "]]>"

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p2, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 11
    .line 12
    iget-object v2, p2, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 13
    .line 14
    iget v3, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 15
    .line 16
    invoke-static {v1, v2, v3, v0}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v2, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 21
    .line 22
    add-int/2addr v2, v0

    .line 23
    iput v2, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v0, p2, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 27
    .line 28
    iget v1, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 29
    .line 30
    sub-int v2, v0, v1

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    if-ge v2, v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p2, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 39
    .line 40
    iget-object v1, p2, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 41
    .line 42
    iget v2, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 43
    .line 44
    iget v3, p2, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 45
    .line 46
    sub-int/2addr v3, v2

    .line 47
    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v0, p2, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 52
    .line 53
    iput v0, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    add-int/lit8 v0, v0, -0x2

    .line 57
    .line 58
    iget-object v2, p2, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 59
    .line 60
    iget-object v3, p2, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 61
    .line 62
    sub-int v4, v0, v1

    .line 63
    .line 64
    invoke-static {v2, v3, v1, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput v0, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 69
    .line 70
    :goto_0
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    return-void

    .line 89
    :cond_3
    :goto_1
    new-instance p0, Lorg/jsoup/parser/Token$CData;

    .line 90
    .line 91
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    const/4 v0, 0x5

    .line 98
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(I)V

    .line 99
    .line 100
    .line 101
    iput-object p2, p0, Lorg/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 104
    .line 105
    .line 106
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method
