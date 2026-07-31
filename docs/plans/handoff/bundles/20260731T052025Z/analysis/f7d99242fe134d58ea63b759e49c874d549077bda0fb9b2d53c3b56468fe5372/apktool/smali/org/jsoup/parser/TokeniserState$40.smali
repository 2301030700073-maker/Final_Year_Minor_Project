.class public final enum Lorg/jsoup/parser/TokeniserState$40;
.super Lorg/jsoup/parser/TokeniserState;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AttributeValue_unquoted"

    .line 2
    .line 3
    const/16 v1, 0x27

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
    move-result v0

    .line 5
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    .line 6
    .line 7
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/CharacterReader;->consumeToAnySorted([C)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 18
    .line 19
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v2, v0, v1, v3}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(ILjava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    if-eq v1, v2, :cond_5

    .line 39
    .line 40
    const/16 v2, 0x22

    .line 41
    .line 42
    if-eq v1, v2, :cond_4

    .line 43
    .line 44
    const/16 v2, 0x60

    .line 45
    .line 46
    if-eq v1, v2, :cond_4

    .line 47
    .line 48
    const v2, 0xffff

    .line 49
    .line 50
    .line 51
    sget-object v3, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

    .line 52
    .line 53
    if-eq v1, v2, :cond_3

    .line 54
    .line 55
    const/16 v2, 0x9

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
    const/16 v2, 0x26

    .line 72
    .line 73
    if-eq v1, v2, :cond_1

    .line 74
    .line 75
    const/16 v2, 0x27

    .line 76
    .line 77
    if-eq v1, v2, :cond_4

    .line 78
    .line 79
    packed-switch v1, :pswitch_data_0

    .line 80
    .line 81
    .line 82
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 83
    .line 84
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {p0, v1, v0, p1}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    const/16 p0, 0x3e

    .line 100
    .line 101
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-virtual {p1, p0, v1}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 111
    .line 112
    if-eqz p0, :cond_2

    .line 113
    .line 114
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-virtual {p1, v0, p2, p0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(II[I)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    invoke-virtual {p1, v2, v0, p0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_4
    :pswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 141
    .line 142
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-virtual {p0, v1, v0, p1}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_5
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState$34;

    .line 151
    .line 152
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_6
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 157
    .line 158
    .line 159
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 160
    .line 161
    const p1, 0xfffd

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    invoke-virtual {p0, p1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
