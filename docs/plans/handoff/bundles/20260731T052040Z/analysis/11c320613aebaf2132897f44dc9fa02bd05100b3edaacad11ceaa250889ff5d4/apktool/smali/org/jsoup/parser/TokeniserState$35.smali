.class public final enum Lorg/jsoup/parser/TokeniserState$35;
.super Lorg/jsoup/parser/TokeniserState;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AttributeName"

    .line 2
    .line 3
    const/16 v1, 0x22

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
    .locals 4

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeToAnySorted([C)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const v3, 0xfffd

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, v1, Lorg/jsoup/parser/Token$Tag;->attrName:Lorg/jsoup/parser/TokenData;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenData;->append(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/16 v0, 0x9

    .line 33
    .line 34
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState$36;

    .line 35
    .line 36
    if-eq p2, v0, :cond_4

    .line 37
    .line 38
    const/16 v0, 0xa

    .line 39
    .line 40
    if-eq p2, v0, :cond_4

    .line 41
    .line 42
    const/16 v0, 0xc

    .line 43
    .line 44
    if-eq p2, v0, :cond_4

    .line 45
    .line 46
    const/16 v0, 0xd

    .line 47
    .line 48
    if-eq p2, v0, :cond_4

    .line 49
    .line 50
    const/16 v0, 0x20

    .line 51
    .line 52
    if-eq p2, v0, :cond_4

    .line 53
    .line 54
    const/16 v0, 0x22

    .line 55
    .line 56
    if-eq p2, v0, :cond_3

    .line 57
    .line 58
    const/16 v0, 0x27

    .line 59
    .line 60
    if-eq p2, v0, :cond_3

    .line 61
    .line 62
    const/16 v0, 0x2f

    .line 63
    .line 64
    if-eq p2, v0, :cond_2

    .line 65
    .line 66
    const v0, 0xffff

    .line 67
    .line 68
    .line 69
    sget-object v2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

    .line 70
    .line 71
    if-eq p2, v0, :cond_1

    .line 72
    .line 73
    packed-switch p2, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_0
    iget p0, p1, Lorg/jsoup/parser/Tokeniser;->syntax:I

    .line 78
    .line 79
    const/4 v0, 0x2

    .line 80
    if-ne p0, v0, :cond_0

    .line 81
    .line 82
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 83
    .line 84
    instance-of p0, p0, Lorg/jsoup/parser/Token$XmlDecl;

    .line 85
    .line 86
    if-eqz p0, :cond_0

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_0
    :goto_0
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 93
    .line 94
    iget-object p0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Lorg/jsoup/parser/TokenData;

    .line 95
    .line 96
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/TokenData;->append(C)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_2
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState$37;

    .line 108
    .line 109
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_2
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState$42;

    .line 121
    .line 122
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    :pswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 127
    .line 128
    .line 129
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 130
    .line 131
    iget-object p0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Lorg/jsoup/parser/TokenData;

    .line 132
    .line 133
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/TokenData;->append(C)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_4
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
