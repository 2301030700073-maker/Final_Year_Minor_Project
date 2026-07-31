.class public final enum Lorg/jsoup/parser/TokeniserState$35;
.super Lorg/jsoup/parser/TokeniserState;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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
    .locals 6

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    .line 6
    .line 7
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/CharacterReader;->consumeToAnySorted([C)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 12
    .line 13
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const v5, 0xfffd

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v2, v0, v3}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName(II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v2, Lorg/jsoup/parser/Token$Tag;->attrNameSb:Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    iput-object v1, v2, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    sget-object v3, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState$36;

    .line 56
    .line 57
    if-eq v1, v2, :cond_5

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    if-eq v1, v2, :cond_5

    .line 62
    .line 63
    const/16 v2, 0xc

    .line 64
    .line 65
    if-eq v1, v2, :cond_5

    .line 66
    .line 67
    const/16 v2, 0xd

    .line 68
    .line 69
    if-eq v1, v2, :cond_5

    .line 70
    .line 71
    const/16 v2, 0x20

    .line 72
    .line 73
    if-eq v1, v2, :cond_5

    .line 74
    .line 75
    const/16 v2, 0x22

    .line 76
    .line 77
    if-eq v1, v2, :cond_4

    .line 78
    .line 79
    const/16 v2, 0x27

    .line 80
    .line 81
    if-eq v1, v2, :cond_4

    .line 82
    .line 83
    const/16 v2, 0x2f

    .line 84
    .line 85
    if-eq v1, v2, :cond_3

    .line 86
    .line 87
    const v2, 0xffff

    .line 88
    .line 89
    .line 90
    sget-object v4, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

    .line 91
    .line 92
    if-eq v1, v2, :cond_2

    .line 93
    .line 94
    packed-switch v1, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :pswitch_0
    iget p0, p1, Lorg/jsoup/parser/Tokeniser;->syntax:I

    .line 99
    .line 100
    const/4 v2, 0x2

    .line 101
    if-ne p0, v2, :cond_1

    .line 102
    .line 103
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 104
    .line 105
    instance-of p0, p0, Lorg/jsoup/parser/Token$XmlDecl;

    .line 106
    .line 107
    if-eqz p0, :cond_1

    .line 108
    .line 109
    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_1
    :goto_1
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 114
    .line 115
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {p0, v0, p1}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName(II)V

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameSb:Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v4}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_2
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState$37;

    .line 136
    .line 137
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v4}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_3
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState$42;

    .line 149
    .line 150
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_4
    :pswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 155
    .line 156
    .line 157
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 158
    .line 159
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-virtual {p0, v0, p1}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName(II)V

    .line 164
    .line 165
    .line 166
    iget-object p0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameSb:Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_5
    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
