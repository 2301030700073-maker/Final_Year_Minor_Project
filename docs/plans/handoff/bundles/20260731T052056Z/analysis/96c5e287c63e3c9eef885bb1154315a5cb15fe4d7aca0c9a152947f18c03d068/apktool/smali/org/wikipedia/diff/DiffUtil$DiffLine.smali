.class public final Lorg/wikipedia/diff/DiffUtil$DiffLine;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final diff:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;

.field public expanded:Z

.field public lineEnd:I

.field public final lineStart:I

.field public parsedText:Landroid/text/SpannedString;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Lorg/wikipedia/diff/DiffUtil$DiffLine;->diff:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;

    .line 14
    .line 15
    iget v3, v2, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->lineNumber:I

    .line 16
    .line 17
    iput v3, v0, Lorg/wikipedia/diff/DiffUtil$DiffLine;->lineStart:I

    .line 18
    .line 19
    iput v3, v0, Lorg/wikipedia/diff/DiffUtil$DiffLine;->lineEnd:I

    .line 20
    .line 21
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v4, v2, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->text:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x1

    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    new-instance v2, Lorg/wikipedia/diff/EmptyLineSpan;

    .line 37
    .line 38
    const v4, 0x1010031

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v4}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const v5, 0x7f0404fb

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v5}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-direct {v2, v4, v1}, Lorg/wikipedia/diff/EmptyLineSpan;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/16 v4, 0xa

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(C)Ljava/lang/Appendable;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/16 v5, 0x11

    .line 69
    .line 70
    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 71
    .line 72
    .line 73
    :cond_0
    move/from16 v16, v7

    .line 74
    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :cond_1
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 78
    .line 79
    .line 80
    iget v5, v2, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->type:I

    .line 81
    .line 82
    const/4 v8, 0x4

    .line 83
    const/4 v9, 0x2

    .line 84
    if-eq v5, v7, :cond_3

    .line 85
    .line 86
    if-eq v5, v9, :cond_2

    .line 87
    .line 88
    if-eq v5, v8, :cond_2

    .line 89
    .line 90
    const/4 v10, 0x5

    .line 91
    if-eq v5, v10, :cond_3

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-static {v3, v1, v6, v6, v5}, Lokhttp3/Headers$Companion;->updateDiffTextDecor(Landroid/text/SpannableStringBuilder;Landroid/content/Context;ZII)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-static {v3, v1, v7, v6, v5}, Lokhttp3/Headers$Companion;->updateDiffTextDecor(Landroid/text/SpannableStringBuilder;Landroid/content/Context;ZII)V

    .line 107
    .line 108
    .line 109
    :goto_0
    iget-object v2, v2, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->highlightRanges:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_0

    .line 120
    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;

    .line 126
    .line 127
    sget-object v10, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 128
    .line 129
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 130
    .line 131
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    array-length v10, v10

    .line 142
    new-array v11, v10, [I

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    move v13, v6

    .line 149
    move v14, v13

    .line 150
    move v15, v14

    .line 151
    :goto_2
    if-ge v13, v12, :cond_a

    .line 152
    .line 153
    move/from16 v16, v7

    .line 154
    .line 155
    invoke-virtual {v4, v13}, Ljava/lang/String;->codePointAt(I)I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    const/16 v8, 0x7f

    .line 160
    .line 161
    if-gt v7, v8, :cond_4

    .line 162
    .line 163
    move/from16 v14, v16

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_4
    const/16 v8, 0x7ff

    .line 167
    .line 168
    if-gt v7, v8, :cond_5

    .line 169
    .line 170
    move v14, v9

    .line 171
    goto :goto_3

    .line 172
    :cond_5
    const v8, 0xffff

    .line 173
    .line 174
    .line 175
    if-gt v7, v8, :cond_6

    .line 176
    .line 177
    const/4 v14, 0x3

    .line 178
    goto :goto_3

    .line 179
    :cond_6
    const v8, 0x1fffff

    .line 180
    .line 181
    .line 182
    if-gt v7, v8, :cond_7

    .line 183
    .line 184
    const/4 v14, 0x4

    .line 185
    :cond_7
    :goto_3
    move v7, v6

    .line 186
    :goto_4
    if-ge v7, v14, :cond_9

    .line 187
    .line 188
    if-ge v15, v10, :cond_8

    .line 189
    .line 190
    add-int/lit8 v8, v15, 0x1

    .line 191
    .line 192
    aput v13, v11, v15

    .line 193
    .line 194
    move v15, v8

    .line 195
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_9
    add-int/lit8 v13, v13, 0x1

    .line 199
    .line 200
    move/from16 v7, v16

    .line 201
    .line 202
    const/4 v8, 0x4

    .line 203
    goto :goto_2

    .line 204
    :cond_a
    move/from16 v16, v7

    .line 205
    .line 206
    iget v7, v5, Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;->start:I

    .line 207
    .line 208
    aget v7, v11, v7

    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    invoke-static {v7, v6, v8}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    iget v8, v5, Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;->start:I

    .line 219
    .line 220
    iget v12, v5, Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;->length:I

    .line 221
    .line 222
    add-int/2addr v8, v12

    .line 223
    if-ltz v8, :cond_b

    .line 224
    .line 225
    if-ge v8, v10, :cond_b

    .line 226
    .line 227
    aget v8, v11, v8

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_b
    if-eqz v10, :cond_d

    .line 231
    .line 232
    add-int/lit8 v10, v10, -0x1

    .line 233
    .line 234
    aget v8, v11, v10

    .line 235
    .line 236
    add-int/lit8 v8, v8, 0x1

    .line 237
    .line 238
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    invoke-static {v8, v6, v10}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    iget v5, v5, Lorg/wikipedia/dataclient/restbase/DiffResponse$HighlightRange;->type:I

    .line 247
    .line 248
    if-nez v5, :cond_c

    .line 249
    .line 250
    move/from16 v5, v16

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_c
    move v5, v6

    .line 254
    :goto_6
    invoke-static {v3, v1, v5, v7, v8}, Lokhttp3/Headers$Companion;->updateDiffTextDecor(Landroid/text/SpannableStringBuilder;Landroid/content/Context;ZII)V

    .line 255
    .line 256
    .line 257
    move/from16 v7, v16

    .line 258
    .line 259
    const/4 v8, 0x4

    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_d
    const-string v0, "Array is empty."

    .line 263
    .line 264
    invoke-static {v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const/4 v0, 0x0

    .line 268
    throw v0

    .line 269
    :goto_7
    new-instance v1, Landroid/text/SpannedString;

    .line 270
    .line 271
    invoke-direct {v1, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    iput-object v1, v0, Lorg/wikipedia/diff/DiffUtil$DiffLine;->parsedText:Landroid/text/SpannedString;

    .line 275
    .line 276
    iget-object v1, v0, Lorg/wikipedia/diff/DiffUtil$DiffLine;->diff:Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;

    .line 277
    .line 278
    iget v1, v1, Lorg/wikipedia/dataclient/restbase/DiffResponse$DiffItem;->type:I

    .line 279
    .line 280
    if-eqz v1, :cond_e

    .line 281
    .line 282
    move/from16 v6, v16

    .line 283
    .line 284
    :cond_e
    iput-boolean v6, v0, Lorg/wikipedia/diff/DiffUtil$DiffLine;->expanded:Z

    .line 285
    .line 286
    return-void
.end method
