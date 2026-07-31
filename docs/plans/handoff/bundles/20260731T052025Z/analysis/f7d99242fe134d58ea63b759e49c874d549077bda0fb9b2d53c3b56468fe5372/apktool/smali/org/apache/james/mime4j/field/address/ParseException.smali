.class public final Lorg/apache/james/mime4j/field/address/ParseException;
.super Lorg/apache/james/mime4j/dom/field/ParseException;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public currentToken:Lorg/apache/james/mime4j/field/address/Token;

.field public eol:Ljava/lang/String;

.field public expectedTokenSequences:[[I

.field public specialConstructor:Z

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "Cannot parse field"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "line.separator"

    .line 7
    .line 8
    const-string v1, "\n"

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/ParseException;->eol:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/ParseException;->specialConstructor:Z

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    const-string p1, "line.separator"

    const-string v0, "\n"

    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/ParseException;->eol:Ljava/lang/String;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/address/ParseException;->specialConstructor:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 21
    const-string p1, "line.separator"

    const-string v0, "\n"

    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/ParseException;->eol:Ljava/lang/String;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/address/ParseException;->specialConstructor:Z

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/ParseException;->tokenImage:[Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/ParseException;->currentToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/ParseException;->expectedTokenSequences:[[I

    .line 8
    .line 9
    iget-object v4, v0, Lorg/apache/james/mime4j/field/address/ParseException;->eol:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v5, v0, Lorg/apache/james/mime4j/field/address/ParseException;->specialConstructor:Z

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    invoke-super {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    move v6, v5

    .line 27
    move v7, v6

    .line 28
    :goto_0
    array-length v8, v3

    .line 29
    const-string v9, " "

    .line 30
    .line 31
    const-string v10, "    "

    .line 32
    .line 33
    const/4 v11, 0x1

    .line 34
    if-ge v6, v8, :cond_4

    .line 35
    .line 36
    aget-object v8, v3, v6

    .line 37
    .line 38
    array-length v12, v8

    .line 39
    if-ge v7, v12, :cond_1

    .line 40
    .line 41
    array-length v7, v8

    .line 42
    :cond_1
    move v8, v5

    .line 43
    :goto_1
    aget-object v12, v3, v6

    .line 44
    .line 45
    array-length v13, v12

    .line 46
    if-ge v8, v13, :cond_2

    .line 47
    .line 48
    aget v12, v12, v8

    .line 49
    .line 50
    aget-object v12, v1, v12

    .line 51
    .line 52
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    array-length v8, v12

    .line 62
    sub-int/2addr v8, v11

    .line 63
    aget v8, v12, v8

    .line 64
    .line 65
    if-eqz v8, :cond_3

    .line 66
    .line 67
    const-string v8, "..."

    .line 68
    .line 69
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    iget-object v6, v2, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 82
    .line 83
    const-string v8, "Encountered \""

    .line 84
    .line 85
    move v12, v5

    .line 86
    :goto_2
    if-ge v12, v7, :cond_6

    .line 87
    .line 88
    if-eqz v12, :cond_5

    .line 89
    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    :cond_5
    iget v13, v6, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    .line 95
    .line 96
    if-nez v13, :cond_7

    .line 97
    .line 98
    invoke-static {v8}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    aget-object v1, v1, v5

    .line 103
    .line 104
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    :cond_6
    move-object/from16 v16, v0

    .line 112
    .line 113
    goto/16 :goto_6

    .line 114
    .line 115
    :cond_7
    invoke-static {v8}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    iget-object v13, v6, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    .line 120
    .line 121
    new-instance v14, Ljava/lang/StringBuffer;

    .line 122
    .line 123
    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .line 125
    .line 126
    move v15, v5

    .line 127
    :goto_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-ge v15, v5, :cond_10

    .line 132
    .line 133
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_9

    .line 138
    .line 139
    const/16 v11, 0x22

    .line 140
    .line 141
    if-eq v5, v11, :cond_f

    .line 142
    .line 143
    const/16 v11, 0x27

    .line 144
    .line 145
    if-eq v5, v11, :cond_e

    .line 146
    .line 147
    const/16 v11, 0x5c

    .line 148
    .line 149
    if-eq v5, v11, :cond_d

    .line 150
    .line 151
    const/16 v11, 0xc

    .line 152
    .line 153
    if-eq v5, v11, :cond_c

    .line 154
    .line 155
    const/16 v11, 0xd

    .line 156
    .line 157
    if-eq v5, v11, :cond_b

    .line 158
    .line 159
    packed-switch v5, :pswitch_data_0

    .line 160
    .line 161
    .line 162
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    const/16 v11, 0x20

    .line 167
    .line 168
    if-lt v5, v11, :cond_a

    .line 169
    .line 170
    const/16 v11, 0x7e

    .line 171
    .line 172
    if-le v5, v11, :cond_8

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_8
    invoke-virtual {v14, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    .line 177
    .line 178
    :cond_9
    move-object/from16 v16, v0

    .line 179
    .line 180
    goto/16 :goto_5

    .line 181
    .line 182
    :cond_a
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    move-object/from16 v16, v0

    .line 185
    .line 186
    const-string v0, "0000"

    .line 187
    .line 188
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const/16 v0, 0x10

    .line 192
    .line 193
    invoke-static {v5, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    add-int/lit8 v5, v5, -0x4

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const-string v5, "\\u"

    .line 219
    .line 220
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :pswitch_0
    move-object/from16 v16, v0

    .line 229
    .line 230
    const-string v0, "\\n"

    .line 231
    .line 232
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :pswitch_1
    move-object/from16 v16, v0

    .line 237
    .line 238
    const-string v0, "\\t"

    .line 239
    .line 240
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :pswitch_2
    move-object/from16 v16, v0

    .line 245
    .line 246
    const-string v0, "\\b"

    .line 247
    .line 248
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_b
    move-object/from16 v16, v0

    .line 253
    .line 254
    const-string v0, "\\r"

    .line 255
    .line 256
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_c
    move-object/from16 v16, v0

    .line 261
    .line 262
    const-string v0, "\\f"

    .line 263
    .line 264
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_d
    move-object/from16 v16, v0

    .line 269
    .line 270
    const-string v0, "\\\\"

    .line 271
    .line 272
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_e
    move-object/from16 v16, v0

    .line 277
    .line 278
    const-string v0, "\\\'"

    .line 279
    .line 280
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_f
    move-object/from16 v16, v0

    .line 285
    .line 286
    const-string v0, "\\\""

    .line 287
    .line 288
    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    .line 290
    .line 291
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 292
    .line 293
    move-object/from16 v0, v16

    .line 294
    .line 295
    const/4 v11, 0x1

    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :cond_10
    move-object/from16 v16, v0

    .line 299
    .line 300
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    iget-object v6, v6, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 312
    .line 313
    add-int/lit8 v12, v12, 0x1

    .line 314
    .line 315
    move-object/from16 v0, v16

    .line 316
    .line 317
    const/4 v5, 0x0

    .line 318
    const/4 v11, 0x1

    .line 319
    goto/16 :goto_2

    .line 320
    .line 321
    :goto_6
    const-string v0, "\" at line "

    .line 322
    .line 323
    invoke-static {v8, v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    iget-object v1, v2, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 328
    .line 329
    iget v1, v1, Lorg/apache/james/mime4j/field/address/Token;->beginLine:I

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v1, ", column "

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget-object v1, v2, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 340
    .line 341
    iget v1, v1, Lorg/apache/james/mime4j/field/address/Token;->beginColumn:I

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    const-string v1, "."

    .line 351
    .line 352
    invoke-static {v0, v1, v4}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    array-length v1, v3

    .line 357
    const/4 v2, 0x1

    .line 358
    if-ne v1, v2, :cond_11

    .line 359
    .line 360
    const-string v1, "Was expecting:"

    .line 361
    .line 362
    invoke-static {v0, v1, v4, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    goto :goto_7

    .line 367
    :cond_11
    const-string v1, "Was expecting one of:"

    .line 368
    .line 369
    invoke-static {v0, v1, v4, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    :goto_7
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    return-object v0

    .line 389
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
