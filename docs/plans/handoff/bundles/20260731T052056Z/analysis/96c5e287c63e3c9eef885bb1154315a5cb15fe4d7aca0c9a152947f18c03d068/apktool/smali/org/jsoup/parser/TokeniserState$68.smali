.class public final enum Lorg/jsoup/parser/TokeniserState$68;
.super Lorg/jsoup/parser/TokeniserState;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "DoctypeInternalSubset"

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
    .locals 10

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jsoup/parser/Token$Doctype;->internalSubset:Lokhttp3/FormBody$Builder;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    move v2, v1

    .line 7
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_f

    .line 12
    .line 13
    const/16 v4, 0x22

    .line 14
    .line 15
    if-eq v3, v4, :cond_d

    .line 16
    .line 17
    const/16 v4, 0x27

    .line 18
    .line 19
    if-eq v3, v4, :cond_b

    .line 20
    .line 21
    const/16 v4, 0x2d

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    if-eq v3, v4, :cond_a

    .line 25
    .line 26
    const/16 v4, 0x3c

    .line 27
    .line 28
    const/4 v6, 0x4

    .line 29
    const/16 v7, 0x3f

    .line 30
    .line 31
    if-eq v3, v4, :cond_8

    .line 32
    .line 33
    const/16 v4, 0x3e

    .line 34
    .line 35
    if-eq v3, v7, :cond_7

    .line 36
    .line 37
    const/16 v5, 0x5d

    .line 38
    .line 39
    if-eq v3, v5, :cond_2

    .line 40
    .line 41
    const v4, 0xffff

    .line 42
    .line 43
    .line 44
    if-eq v3, v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 54
    .line 55
    .line 56
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    if-nez v2, :cond_6

    .line 63
    .line 64
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 65
    .line 66
    .line 67
    iget v5, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 68
    .line 69
    iget v6, p2, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 70
    .line 71
    iget-object v7, p2, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 72
    .line 73
    move v8, v5

    .line 74
    :goto_2
    if-ge v8, v6, :cond_3

    .line 75
    .line 76
    aget-char v9, v7, v8

    .line 77
    .line 78
    invoke-static {v9}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-eqz v9, :cond_3

    .line 83
    .line 84
    add-int/lit8 v8, v8, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    iput v8, p2, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 88
    .line 89
    if-le v8, v5, :cond_4

    .line 90
    .line 91
    iget-object v6, p2, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 92
    .line 93
    iget-object v7, p2, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 94
    .line 95
    sub-int/2addr v8, v5

    .line 96
    invoke-static {v6, v7, v5, v8}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const-string v5, ""

    .line 102
    .line 103
    :goto_3
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_5

    .line 108
    .line 109
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 113
    .line 114
    .line 115
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    invoke-virtual {v0, v3}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v5}, Lokhttp3/FormBody$Builder;->append(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_6
    invoke-virtual {v0, v3}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    invoke-virtual {v0, v3}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 133
    .line 134
    .line 135
    if-ne v2, v6, :cond_0

    .line 136
    .line 137
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_0

    .line 142
    .line 143
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v4}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_8
    invoke-virtual {v0, v3}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 152
    .line 153
    .line 154
    if-nez v2, :cond_0

    .line 155
    .line 156
    const-string v3, "!--"

    .line 157
    .line 158
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_9

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Lokhttp3/FormBody$Builder;->append(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    move v2, v5

    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :cond_9
    const-string v3, "?"

    .line 171
    .line 172
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_0

    .line 177
    .line 178
    invoke-virtual {v0, v7}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 179
    .line 180
    .line 181
    move v2, v6

    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :cond_a
    invoke-virtual {v0, v3}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 185
    .line 186
    .line 187
    if-ne v2, v5, :cond_0

    .line 188
    .line 189
    const-string v3, "->"

    .line 190
    .line 191
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_0

    .line 196
    .line 197
    invoke-virtual {v0, v3}, Lokhttp3/FormBody$Builder;->append(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_b
    invoke-virtual {v0, v3}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 203
    .line 204
    .line 205
    const/4 v3, 0x1

    .line 206
    if-nez v2, :cond_c

    .line 207
    .line 208
    :goto_4
    move v2, v3

    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :cond_c
    if-ne v2, v3, :cond_0

    .line 212
    .line 213
    :goto_5
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_d
    invoke-virtual {v0, v3}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 216
    .line 217
    .line 218
    const/4 v3, 0x2

    .line 219
    if-nez v2, :cond_e

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_e
    if-ne v2, v3, :cond_0

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_f
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 226
    .line 227
    .line 228
    const v3, 0xfffd

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v3}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_1
.end method
