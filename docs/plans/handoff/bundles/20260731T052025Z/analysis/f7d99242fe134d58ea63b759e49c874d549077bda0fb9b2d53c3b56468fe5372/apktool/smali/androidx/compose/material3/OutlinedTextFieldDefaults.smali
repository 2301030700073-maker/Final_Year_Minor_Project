.class public final Landroidx/compose/material3/OutlinedTextFieldDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

.field public static final INSTANCE$1:Landroidx/compose/material3/OutlinedTextFieldDefaults;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE$1:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    .line 14
    .line 15
    return-void
.end method

.method public static colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;
    .locals 90

    .line 1
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const v2, 0x1745d472

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    iget-wide v4, v2, Landroidx/compose/material3/TextFieldColors;->errorPlaceholderColor:J

    .line 31
    .line 32
    iget-wide v6, v2, Landroidx/compose/material3/TextFieldColors;->disabledPlaceholderColor:J

    .line 33
    .line 34
    iget-wide v8, v2, Landroidx/compose/material3/TextFieldColors;->unfocusedPlaceholderColor:J

    .line 35
    .line 36
    iget-wide v10, v2, Landroidx/compose/material3/TextFieldColors;->focusedPlaceholderColor:J

    .line 37
    .line 38
    iget-wide v12, v2, Landroidx/compose/material3/TextFieldColors;->errorLabelColor:J

    .line 39
    .line 40
    iget-wide v14, v2, Landroidx/compose/material3/TextFieldColors;->disabledLabelColor:J

    .line 41
    .line 42
    move-wide/from16 v64, v4

    .line 43
    .line 44
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->unfocusedLabelColor:J

    .line 45
    .line 46
    move-wide/from16 v52, v3

    .line 47
    .line 48
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->focusedLabelColor:J

    .line 49
    .line 50
    move-wide/from16 v50, v3

    .line 51
    .line 52
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->errorTrailingIconColor:J

    .line 53
    .line 54
    move-wide/from16 v48, v3

    .line 55
    .line 56
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->disabledTrailingIconColor:J

    .line 57
    .line 58
    move-wide/from16 v46, v3

    .line 59
    .line 60
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->unfocusedTrailingIconColor:J

    .line 61
    .line 62
    move-wide/from16 v44, v3

    .line 63
    .line 64
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->focusedTrailingIconColor:J

    .line 65
    .line 66
    move-wide/from16 v42, v3

    .line 67
    .line 68
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->errorLeadingIconColor:J

    .line 69
    .line 70
    move-wide/from16 v40, v3

    .line 71
    .line 72
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->disabledLeadingIconColor:J

    .line 73
    .line 74
    move-wide/from16 v38, v3

    .line 75
    .line 76
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->unfocusedLeadingIconColor:J

    .line 77
    .line 78
    move-wide/from16 v36, v3

    .line 79
    .line 80
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->focusedLeadingIconColor:J

    .line 81
    .line 82
    move-wide/from16 v34, v3

    .line 83
    .line 84
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->errorIndicatorColor:J

    .line 85
    .line 86
    move-wide/from16 v32, v3

    .line 87
    .line 88
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->disabledIndicatorColor:J

    .line 89
    .line 90
    move-wide/from16 v30, v3

    .line 91
    .line 92
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->unfocusedIndicatorColor:J

    .line 93
    .line 94
    move-wide/from16 v28, v3

    .line 95
    .line 96
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->focusedIndicatorColor:J

    .line 97
    .line 98
    iget-object v5, v2, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 99
    .line 100
    move-wide/from16 v26, v3

    .line 101
    .line 102
    const v3, 0x1745d473

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 106
    .line 107
    .line 108
    sget-object v3, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 115
    .line 116
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_1

    .line 121
    .line 122
    :goto_0
    const/4 v3, 0x0

    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_1
    move-object v4, v5

    .line 126
    move-wide/from16 v62, v6

    .line 127
    .line 128
    iget-wide v5, v2, Landroidx/compose/material3/TextFieldColors;->focusedTextColor:J

    .line 129
    .line 130
    move-wide/from16 v60, v8

    .line 131
    .line 132
    iget-wide v7, v2, Landroidx/compose/material3/TextFieldColors;->unfocusedTextColor:J

    .line 133
    .line 134
    move-wide/from16 v58, v10

    .line 135
    .line 136
    iget-wide v9, v2, Landroidx/compose/material3/TextFieldColors;->disabledTextColor:J

    .line 137
    .line 138
    move-wide/from16 v56, v12

    .line 139
    .line 140
    iget-wide v11, v2, Landroidx/compose/material3/TextFieldColors;->errorTextColor:J

    .line 141
    .line 142
    move-wide/from16 v54, v14

    .line 143
    .line 144
    iget-wide v13, v2, Landroidx/compose/material3/TextFieldColors;->focusedContainerColor:J

    .line 145
    .line 146
    move-object v15, v3

    .line 147
    move-object/from16 v16, v4

    .line 148
    .line 149
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->unfocusedContainerColor:J

    .line 150
    .line 151
    move-wide/from16 v17, v3

    .line 152
    .line 153
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->disabledContainerColor:J

    .line 154
    .line 155
    move-wide/from16 v19, v3

    .line 156
    .line 157
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->errorContainerColor:J

    .line 158
    .line 159
    move-wide/from16 v21, v3

    .line 160
    .line 161
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->cursorColor:J

    .line 162
    .line 163
    move-wide/from16 v23, v3

    .line 164
    .line 165
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->errorCursorColor:J

    .line 166
    .line 167
    move-wide/from16 v66, v3

    .line 168
    .line 169
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->focusedSupportingTextColor:J

    .line 170
    .line 171
    move-wide/from16 v68, v3

    .line 172
    .line 173
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->unfocusedSupportingTextColor:J

    .line 174
    .line 175
    move-wide/from16 v70, v3

    .line 176
    .line 177
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->disabledSupportingTextColor:J

    .line 178
    .line 179
    move-wide/from16 v72, v3

    .line 180
    .line 181
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->errorSupportingTextColor:J

    .line 182
    .line 183
    move-wide/from16 v74, v3

    .line 184
    .line 185
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->focusedPrefixColor:J

    .line 186
    .line 187
    move-wide/from16 v76, v3

    .line 188
    .line 189
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->unfocusedPrefixColor:J

    .line 190
    .line 191
    move-wide/from16 v78, v3

    .line 192
    .line 193
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->disabledPrefixColor:J

    .line 194
    .line 195
    move-wide/from16 v80, v3

    .line 196
    .line 197
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->errorPrefixColor:J

    .line 198
    .line 199
    move-wide/from16 v82, v3

    .line 200
    .line 201
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->focusedSuffixColor:J

    .line 202
    .line 203
    move-wide/from16 v84, v3

    .line 204
    .line 205
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->unfocusedSuffixColor:J

    .line 206
    .line 207
    move-wide/from16 v86, v3

    .line 208
    .line 209
    iget-wide v3, v2, Landroidx/compose/material3/TextFieldColors;->disabledSuffixColor:J

    .line 210
    .line 211
    move-wide/from16 v88, v3

    .line 212
    .line 213
    iget-wide v2, v2, Landroidx/compose/material3/TextFieldColors;->errorSuffixColor:J

    .line 214
    .line 215
    if-nez v15, :cond_2

    .line 216
    .line 217
    move-object/from16 v25, v16

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_2
    move-object/from16 v25, v15

    .line 221
    .line 222
    :goto_1
    new-instance v4, Landroidx/compose/material3/TextFieldColors;

    .line 223
    .line 224
    move-wide/from16 v15, v17

    .line 225
    .line 226
    move-wide/from16 v17, v19

    .line 227
    .line 228
    move-wide/from16 v19, v21

    .line 229
    .line 230
    move-wide/from16 v21, v23

    .line 231
    .line 232
    move-wide/from16 v23, v66

    .line 233
    .line 234
    move-wide/from16 v66, v68

    .line 235
    .line 236
    move-wide/from16 v68, v70

    .line 237
    .line 238
    move-wide/from16 v70, v72

    .line 239
    .line 240
    move-wide/from16 v72, v74

    .line 241
    .line 242
    move-wide/from16 v74, v76

    .line 243
    .line 244
    move-wide/from16 v76, v78

    .line 245
    .line 246
    move-wide/from16 v78, v80

    .line 247
    .line 248
    move-wide/from16 v80, v82

    .line 249
    .line 250
    move-wide/from16 v82, v84

    .line 251
    .line 252
    move-wide/from16 v84, v86

    .line 253
    .line 254
    move-wide/from16 v86, v88

    .line 255
    .line 256
    move-wide/from16 v88, v2

    .line 257
    .line 258
    invoke-direct/range {v4 .. v89}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 259
    .line 260
    .line 261
    iput-object v4, v0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    .line 262
    .line 263
    move-object v2, v4

    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :goto_2
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 267
    .line 268
    .line 269
    :goto_3
    if-nez v2, :cond_3

    .line 270
    .line 271
    const v2, -0x6a979da7

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 275
    .line 276
    .line 277
    new-instance v3, Landroidx/compose/material3/TextFieldColors;

    .line 278
    .line 279
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->FocusInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 280
    .line 281
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 282
    .line 283
    .line 284
    move-result-wide v4

    .line 285
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->InputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 286
    .line 287
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 288
    .line 289
    .line 290
    move-result-wide v6

    .line 291
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->DisabledInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 292
    .line 293
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 294
    .line 295
    .line 296
    move-result-wide v8

    .line 297
    const v10, 0x3ec28f5c    # 0.38f

    .line 298
    .line 299
    .line 300
    invoke-static {v10, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 301
    .line 302
    .line 303
    move-result-wide v8

    .line 304
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->ErrorInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 305
    .line 306
    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 307
    .line 308
    .line 309
    move-result-wide v11

    .line 310
    move-wide v14, v11

    .line 311
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 312
    .line 313
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->CaretColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 314
    .line 315
    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 316
    .line 317
    .line 318
    move-result-wide v20

    .line 319
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->ErrorFocusCaretColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 320
    .line 321
    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 322
    .line 323
    .line 324
    move-result-wide v22

    .line 325
    sget-object v11, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 326
    .line 327
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    move-object/from16 v24, v11

    .line 332
    .line 333
    check-cast v24, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 334
    .line 335
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->FocusOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 336
    .line 337
    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 338
    .line 339
    .line 340
    move-result-wide v25

    .line 341
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->OutlineColor$3:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 342
    .line 343
    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 344
    .line 345
    .line 346
    move-result-wide v27

    .line 347
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->DisabledOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 348
    .line 349
    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 350
    .line 351
    .line 352
    move-result-wide v10

    .line 353
    move-object/from16 v17, v3

    .line 354
    .line 355
    const v3, 0x3df5c28f    # 0.12f

    .line 356
    .line 357
    .line 358
    invoke-static {v3, v10, v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 359
    .line 360
    .line 361
    move-result-wide v29

    .line 362
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ErrorOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 363
    .line 364
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 365
    .line 366
    .line 367
    move-result-wide v31

    .line 368
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->FocusLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 369
    .line 370
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 371
    .line 372
    .line 373
    move-result-wide v33

    .line 374
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->LeadingIconColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 375
    .line 376
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 377
    .line 378
    .line 379
    move-result-wide v35

    .line 380
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->DisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 381
    .line 382
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 383
    .line 384
    .line 385
    move-result-wide v10

    .line 386
    const v3, 0x3ec28f5c    # 0.38f

    .line 387
    .line 388
    .line 389
    invoke-static {v3, v10, v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 390
    .line 391
    .line 392
    move-result-wide v37

    .line 393
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->ErrorLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 394
    .line 395
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 396
    .line 397
    .line 398
    move-result-wide v39

    .line 399
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->FocusTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 400
    .line 401
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 402
    .line 403
    .line 404
    move-result-wide v41

    .line 405
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->TrailingIconColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 406
    .line 407
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 408
    .line 409
    .line 410
    move-result-wide v43

    .line 411
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->DisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 412
    .line 413
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 414
    .line 415
    .line 416
    move-result-wide v10

    .line 417
    invoke-static {v3, v10, v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 418
    .line 419
    .line 420
    move-result-wide v45

    .line 421
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->ErrorTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 422
    .line 423
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 424
    .line 425
    .line 426
    move-result-wide v47

    .line 427
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->FocusLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 428
    .line 429
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 430
    .line 431
    .line 432
    move-result-wide v49

    .line 433
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->LabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 434
    .line 435
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 436
    .line 437
    .line 438
    move-result-wide v51

    .line 439
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->DisabledLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 440
    .line 441
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 442
    .line 443
    .line 444
    move-result-wide v10

    .line 445
    invoke-static {v3, v10, v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 446
    .line 447
    .line 448
    move-result-wide v53

    .line 449
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->ErrorLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 450
    .line 451
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 452
    .line 453
    .line 454
    move-result-wide v55

    .line 455
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->InputPlaceholderColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 456
    .line 457
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 458
    .line 459
    .line 460
    move-result-wide v57

    .line 461
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 462
    .line 463
    .line 464
    move-result-wide v59

    .line 465
    move-wide/from16 v18, v4

    .line 466
    .line 467
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 468
    .line 469
    .line 470
    move-result-wide v4

    .line 471
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 472
    .line 473
    .line 474
    move-result-wide v61

    .line 475
    invoke-static {v0, v10}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 476
    .line 477
    .line 478
    move-result-wide v63

    .line 479
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->FocusSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 480
    .line 481
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 482
    .line 483
    .line 484
    move-result-wide v65

    .line 485
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->SupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 486
    .line 487
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 488
    .line 489
    .line 490
    move-result-wide v67

    .line 491
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->DisabledSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 492
    .line 493
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 494
    .line 495
    .line 496
    move-result-wide v4

    .line 497
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 498
    .line 499
    .line 500
    move-result-wide v69

    .line 501
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ErrorSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 502
    .line 503
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 504
    .line 505
    .line 506
    move-result-wide v71

    .line 507
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->InputPrefixColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 508
    .line 509
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 510
    .line 511
    .line 512
    move-result-wide v73

    .line 513
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 514
    .line 515
    .line 516
    move-result-wide v75

    .line 517
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 518
    .line 519
    .line 520
    move-result-wide v4

    .line 521
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 522
    .line 523
    .line 524
    move-result-wide v77

    .line 525
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 526
    .line 527
    .line 528
    move-result-wide v79

    .line 529
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->InputSuffixColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 530
    .line 531
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 532
    .line 533
    .line 534
    move-result-wide v81

    .line 535
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 536
    .line 537
    .line 538
    move-result-wide v83

    .line 539
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 540
    .line 541
    .line 542
    move-result-wide v4

    .line 543
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 544
    .line 545
    .line 546
    move-result-wide v85

    .line 547
    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 548
    .line 549
    .line 550
    move-result-wide v87

    .line 551
    move-wide v10, v14

    .line 552
    move-wide v14, v12

    .line 553
    move-object/from16 v3, v17

    .line 554
    .line 555
    move-wide/from16 v16, v12

    .line 556
    .line 557
    move-wide/from16 v4, v18

    .line 558
    .line 559
    move-wide/from16 v18, v12

    .line 560
    .line 561
    invoke-direct/range {v3 .. v88}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 562
    .line 563
    .line 564
    iput-object v3, v0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    .line 565
    .line 566
    const/4 v0, 0x0

    .line 567
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 568
    .line 569
    .line 570
    return-object v3

    .line 571
    :cond_3
    const/4 v0, 0x0

    .line 572
    const v3, -0x6a9a946d

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 579
    .line 580
    .line 581
    return-object v2
.end method


# virtual methods
.method public Container-4EFweAY(ZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V
    .locals 22

    .line 1
    move/from16 v2, p1

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v6, p5

    .line 8
    .line 9
    move-object/from16 v7, p6

    .line 10
    .line 11
    move/from16 v10, p10

    .line 12
    .line 13
    move/from16 v11, p11

    .line 14
    .line 15
    move-object/from16 v0, p9

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v1, 0x3db82288

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x2

    .line 34
    :goto_0
    or-int/2addr v1, v10

    .line 35
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    const/16 v5, 0x20

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v5, 0x10

    .line 45
    .line 46
    :goto_1
    or-int/2addr v1, v5

    .line 47
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    const/16 v5, 0x100

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v5, 0x80

    .line 57
    .line 58
    :goto_2
    or-int/2addr v1, v5

    .line 59
    and-int/lit8 v5, v11, 0x8

    .line 60
    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    or-int/lit16 v1, v1, 0xc00

    .line 64
    .line 65
    :cond_3
    move-object/from16 v8, p4

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    and-int/lit16 v8, v10, 0xc00

    .line 69
    .line 70
    if-nez v8, :cond_3

    .line 71
    .line 72
    move-object/from16 v8, p4

    .line 73
    .line 74
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-eqz v9, :cond_5

    .line 79
    .line 80
    const/16 v9, 0x800

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    const/16 v9, 0x400

    .line 84
    .line 85
    :goto_3
    or-int/2addr v1, v9

    .line 86
    :goto_4
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_6

    .line 91
    .line 92
    const/16 v9, 0x4000

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_6
    const/16 v9, 0x2000

    .line 96
    .line 97
    :goto_5
    or-int/2addr v1, v9

    .line 98
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_7

    .line 103
    .line 104
    const/high16 v9, 0x20000

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_7
    const/high16 v9, 0x10000

    .line 108
    .line 109
    :goto_6
    or-int/2addr v1, v9

    .line 110
    const/high16 v9, 0x180000

    .line 111
    .line 112
    and-int/2addr v9, v10

    .line 113
    if-nez v9, :cond_a

    .line 114
    .line 115
    and-int/lit8 v9, v11, 0x40

    .line 116
    .line 117
    if-nez v9, :cond_8

    .line 118
    .line 119
    move/from16 v9, p7

    .line 120
    .line 121
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    if-eqz v12, :cond_9

    .line 126
    .line 127
    const/high16 v12, 0x100000

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_8
    move/from16 v9, p7

    .line 131
    .line 132
    :cond_9
    const/high16 v12, 0x80000

    .line 133
    .line 134
    :goto_7
    or-int/2addr v1, v12

    .line 135
    goto :goto_8

    .line 136
    :cond_a
    move/from16 v9, p7

    .line 137
    .line 138
    :goto_8
    const/high16 v12, 0xc00000

    .line 139
    .line 140
    and-int/2addr v12, v10

    .line 141
    if-nez v12, :cond_d

    .line 142
    .line 143
    and-int/lit16 v12, v11, 0x80

    .line 144
    .line 145
    if-nez v12, :cond_b

    .line 146
    .line 147
    move/from16 v12, p8

    .line 148
    .line 149
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    if-eqz v13, :cond_c

    .line 154
    .line 155
    const/high16 v13, 0x800000

    .line 156
    .line 157
    goto :goto_9

    .line 158
    :cond_b
    move/from16 v12, p8

    .line 159
    .line 160
    :cond_c
    const/high16 v13, 0x400000

    .line 161
    .line 162
    :goto_9
    or-int/2addr v1, v13

    .line 163
    goto :goto_a

    .line 164
    :cond_d
    move/from16 v12, p8

    .line 165
    .line 166
    :goto_a
    const v13, 0x2492493

    .line 167
    .line 168
    .line 169
    and-int/2addr v13, v1

    .line 170
    const v14, 0x2492492

    .line 171
    .line 172
    .line 173
    if-eq v13, v14, :cond_e

    .line 174
    .line 175
    const/4 v13, 0x1

    .line 176
    goto :goto_b

    .line 177
    :cond_e
    const/4 v13, 0x0

    .line 178
    :goto_b
    and-int/lit8 v14, v1, 0x1

    .line 179
    .line 180
    invoke-virtual {v0, v14, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 181
    .line 182
    .line 183
    move-result v13

    .line 184
    if-eqz v13, :cond_1f

    .line 185
    .line 186
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 187
    .line 188
    .line 189
    and-int/lit8 v13, v10, 0x1

    .line 190
    .line 191
    const v14, -0x1c00001

    .line 192
    .line 193
    .line 194
    const v16, -0x380001

    .line 195
    .line 196
    .line 197
    if-eqz v13, :cond_12

    .line 198
    .line 199
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    if-eqz v13, :cond_f

    .line 204
    .line 205
    goto :goto_c

    .line 206
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 207
    .line 208
    .line 209
    and-int/lit8 v5, v11, 0x40

    .line 210
    .line 211
    if-eqz v5, :cond_10

    .line 212
    .line 213
    and-int v1, v1, v16

    .line 214
    .line 215
    :cond_10
    and-int/lit16 v5, v11, 0x80

    .line 216
    .line 217
    if-eqz v5, :cond_11

    .line 218
    .line 219
    and-int/2addr v1, v14

    .line 220
    :cond_11
    move-object v5, v8

    .line 221
    move v8, v9

    .line 222
    goto :goto_f

    .line 223
    :cond_12
    :goto_c
    if-eqz v5, :cond_13

    .line 224
    .line 225
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 226
    .line 227
    goto :goto_d

    .line 228
    :cond_13
    move-object v5, v8

    .line 229
    :goto_d
    and-int/lit8 v8, v11, 0x40

    .line 230
    .line 231
    if-eqz v8, :cond_14

    .line 232
    .line 233
    and-int v1, v1, v16

    .line 234
    .line 235
    const/high16 v8, 0x40000000    # 2.0f

    .line 236
    .line 237
    goto :goto_e

    .line 238
    :cond_14
    move v8, v9

    .line 239
    :goto_e
    and-int/lit16 v9, v11, 0x80

    .line 240
    .line 241
    if-eqz v9, :cond_15

    .line 242
    .line 243
    and-int/2addr v1, v14

    .line 244
    const/high16 v9, 0x3f800000    # 1.0f

    .line 245
    .line 246
    move v12, v9

    .line 247
    :cond_15
    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 248
    .line 249
    .line 250
    shr-int/lit8 v1, v1, 0x6

    .line 251
    .line 252
    and-int/lit8 v1, v1, 0xe

    .line 253
    .line 254
    invoke-static {v4, v0, v1}, Lcom/fsck/k9/sasl/OAuthBearer;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-nez v2, :cond_16

    .line 269
    .line 270
    iget-wide v13, v6, Landroidx/compose/material3/TextFieldColors;->disabledIndicatorColor:J

    .line 271
    .line 272
    goto :goto_10

    .line 273
    :cond_16
    if-eqz v3, :cond_17

    .line 274
    .line 275
    iget-wide v13, v6, Landroidx/compose/material3/TextFieldColors;->errorIndicatorColor:J

    .line 276
    .line 277
    goto :goto_10

    .line 278
    :cond_17
    if-eqz v1, :cond_18

    .line 279
    .line 280
    iget-wide v13, v6, Landroidx/compose/material3/TextFieldColors;->focusedIndicatorColor:J

    .line 281
    .line 282
    goto :goto_10

    .line 283
    :cond_18
    iget-wide v13, v6, Landroidx/compose/material3/TextFieldColors;->unfocusedIndicatorColor:J

    .line 284
    .line 285
    :goto_10
    sget-object v9, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 286
    .line 287
    invoke-static {v9, v0}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 288
    .line 289
    .line 290
    move-result-object v15

    .line 291
    if-eqz v2, :cond_19

    .line 292
    .line 293
    move/from16 p4, v1

    .line 294
    .line 295
    const v1, -0x63cef6df

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 299
    .line 300
    .line 301
    invoke-static {v13, v14, v15, v0}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/SpringSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    const/4 v15, 0x0

    .line 306
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 307
    .line 308
    .line 309
    goto :goto_11

    .line 310
    :cond_19
    move/from16 p4, v1

    .line 311
    .line 312
    const/4 v15, 0x0

    .line 313
    const v1, -0x63cdbb6c

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 317
    .line 318
    .line 319
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 320
    .line 321
    invoke-direct {v1, v13, v14}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 322
    .line 323
    .line 324
    invoke-static {v1, v0}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 329
    .line 330
    .line 331
    :goto_11
    sget-object v13, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 332
    .line 333
    invoke-static {v13, v0}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 334
    .line 335
    .line 336
    move-result-object v13

    .line 337
    if-eqz v2, :cond_1b

    .line 338
    .line 339
    const v14, -0x63caf6c8

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 343
    .line 344
    .line 345
    if-eqz p4, :cond_1a

    .line 346
    .line 347
    move v14, v8

    .line 348
    :goto_12
    move-object/from16 p7, v1

    .line 349
    .line 350
    goto :goto_13

    .line 351
    :cond_1a
    move v14, v12

    .line 352
    goto :goto_12

    .line 353
    :goto_13
    const/16 v1, 0xc

    .line 354
    .line 355
    invoke-static {v14, v13, v0, v15, v1}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/SpringSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 360
    .line 361
    .line 362
    goto :goto_14

    .line 363
    :cond_1b
    move-object/from16 p7, v1

    .line 364
    .line 365
    const v1, -0x63c82f99

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 369
    .line 370
    .line 371
    new-instance v1, Landroidx/compose/ui/unit/Dp;

    .line 372
    .line 373
    invoke-direct {v1, v12}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 374
    .line 375
    .line 376
    invoke-static {v1, v0}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 381
    .line 382
    .line 383
    :goto_14
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    check-cast v1, Landroidx/compose/ui/unit/Dp;

    .line 388
    .line 389
    iget v1, v1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 390
    .line 391
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v13

    .line 395
    check-cast v13, Landroidx/compose/ui/graphics/Color;

    .line 396
    .line 397
    iget-wide v13, v13, Landroidx/compose/ui/graphics/Color;->value:J

    .line 398
    .line 399
    invoke-static {v1, v13, v14}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-static {v1, v0}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    if-nez v2, :cond_1c

    .line 408
    .line 409
    iget-wide v13, v6, Landroidx/compose/material3/TextFieldColors;->disabledContainerColor:J

    .line 410
    .line 411
    goto :goto_15

    .line 412
    :cond_1c
    if-eqz v3, :cond_1d

    .line 413
    .line 414
    iget-wide v13, v6, Landroidx/compose/material3/TextFieldColors;->errorContainerColor:J

    .line 415
    .line 416
    goto :goto_15

    .line 417
    :cond_1d
    if-eqz p4, :cond_1e

    .line 418
    .line 419
    iget-wide v13, v6, Landroidx/compose/material3/TextFieldColors;->focusedContainerColor:J

    .line 420
    .line 421
    goto :goto_15

    .line 422
    :cond_1e
    iget-wide v13, v6, Landroidx/compose/material3/TextFieldColors;->unfocusedContainerColor:J

    .line 423
    .line 424
    :goto_15
    invoke-static {v9, v0}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    invoke-static {v13, v14, v9, v0}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/SpringSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    .line 429
    .line 430
    .line 431
    move-result-object v19

    .line 432
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    check-cast v1, Landroidx/compose/foundation/BorderStroke;

    .line 437
    .line 438
    iget v9, v1, Landroidx/compose/foundation/BorderStroke;->width:F

    .line 439
    .line 440
    iget-object v1, v1, Landroidx/compose/foundation/BorderStroke;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 441
    .line 442
    new-instance v13, Landroidx/compose/foundation/BorderModifierNodeElement;

    .line 443
    .line 444
    invoke-direct {v13, v9, v1, v7}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)V

    .line 445
    .line 446
    .line 447
    invoke-interface {v5, v13}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    new-instance v15, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    .line 452
    .line 453
    const/16 v16, 0x0

    .line 454
    .line 455
    const/16 v17, 0x3

    .line 456
    .line 457
    const-class v18, Landroidx/compose/runtime/State;

    .line 458
    .line 459
    const-string/jumbo v20, "value"

    .line 460
    .line 461
    .line 462
    const-string v21, "getValue()Ljava/lang/Object;"

    .line 463
    .line 464
    invoke-direct/range {v15 .. v21}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    new-instance v9, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    .line 468
    .line 469
    invoke-direct {v9, v15}, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;)V

    .line 470
    .line 471
    .line 472
    new-instance v13, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 473
    .line 474
    const/16 v14, 0x15

    .line 475
    .line 476
    invoke-direct {v13, v14, v7, v9}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    invoke-static {v1, v13}, Landroidx/compose/ui/draw/ClipKt;->drawWithCache(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    const/4 v15, 0x0

    .line 484
    invoke-static {v1, v0, v15}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 485
    .line 486
    .line 487
    :goto_16
    move v9, v12

    .line 488
    goto :goto_17

    .line 489
    :cond_1f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 490
    .line 491
    .line 492
    move-object v5, v8

    .line 493
    move v8, v9

    .line 494
    goto :goto_16

    .line 495
    :goto_17
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 496
    .line 497
    .line 498
    move-result-object v12

    .line 499
    if-eqz v12, :cond_20

    .line 500
    .line 501
    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$$ExternalSyntheticLambda0;

    .line 502
    .line 503
    move-object/from16 v1, p0

    .line 504
    .line 505
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/OutlinedTextFieldDefaults$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;ZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V

    .line 506
    .line 507
    .line 508
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 509
    .line 510
    :cond_20
    return-void
.end method

.method public DecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v6, p5

    .line 4
    .line 5
    move-object/from16 v9, p8

    .line 6
    .line 7
    move/from16 v14, p14

    .line 8
    .line 9
    move-object/from16 v0, p13

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v1, -0x67408512

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v1, v14, 0x6

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x2

    .line 32
    :goto_0
    or-int/2addr v1, v14

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v1, v14

    .line 35
    :goto_1
    and-int/lit8 v5, v14, 0x30

    .line 36
    .line 37
    if-nez v5, :cond_3

    .line 38
    .line 39
    move-object/from16 v5, p2

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    if-eqz v10, :cond_2

    .line 46
    .line 47
    const/16 v10, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v10, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v1, v10

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move-object/from16 v5, p2

    .line 55
    .line 56
    :goto_3
    and-int/lit16 v10, v14, 0x180

    .line 57
    .line 58
    if-nez v10, :cond_5

    .line 59
    .line 60
    move/from16 v10, p3

    .line 61
    .line 62
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    if-eqz v13, :cond_4

    .line 67
    .line 68
    const/16 v13, 0x100

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    const/16 v13, 0x80

    .line 72
    .line 73
    :goto_4
    or-int/2addr v1, v13

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    move/from16 v10, p3

    .line 76
    .line 77
    :goto_5
    and-int/lit16 v13, v14, 0xc00

    .line 78
    .line 79
    const/16 v15, 0x400

    .line 80
    .line 81
    const/16 v16, 0x800

    .line 82
    .line 83
    if-nez v13, :cond_7

    .line 84
    .line 85
    move/from16 v13, p4

    .line 86
    .line 87
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 88
    .line 89
    .line 90
    move-result v17

    .line 91
    if-eqz v17, :cond_6

    .line 92
    .line 93
    move/from16 v17, v16

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_6
    move/from16 v17, v15

    .line 97
    .line 98
    :goto_6
    or-int v1, v1, v17

    .line 99
    .line 100
    goto :goto_7

    .line 101
    :cond_7
    move/from16 v13, p4

    .line 102
    .line 103
    :goto_7
    and-int/lit16 v3, v14, 0x6000

    .line 104
    .line 105
    const/16 v17, 0x2000

    .line 106
    .line 107
    if-nez v3, :cond_9

    .line 108
    .line 109
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_8

    .line 114
    .line 115
    const/16 v3, 0x4000

    .line 116
    .line 117
    goto :goto_8

    .line 118
    :cond_8
    move/from16 v3, v17

    .line 119
    .line 120
    :goto_8
    or-int/2addr v1, v3

    .line 121
    :cond_9
    const/high16 v3, 0x30000

    .line 122
    .line 123
    and-int/2addr v3, v14

    .line 124
    const/high16 v19, 0x10000

    .line 125
    .line 126
    if-nez v3, :cond_b

    .line 127
    .line 128
    move-object/from16 v3, p6

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v20

    .line 134
    if-eqz v20, :cond_a

    .line 135
    .line 136
    const/high16 v20, 0x20000

    .line 137
    .line 138
    goto :goto_9

    .line 139
    :cond_a
    move/from16 v20, v19

    .line 140
    .line 141
    :goto_9
    or-int v1, v1, v20

    .line 142
    .line 143
    goto :goto_a

    .line 144
    :cond_b
    move-object/from16 v3, p6

    .line 145
    .line 146
    :goto_a
    const/high16 v20, 0x180000

    .line 147
    .line 148
    and-int v20, v14, v20

    .line 149
    .line 150
    move/from16 v8, p7

    .line 151
    .line 152
    if-nez v20, :cond_d

    .line 153
    .line 154
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 155
    .line 156
    .line 157
    move-result v21

    .line 158
    if-eqz v21, :cond_c

    .line 159
    .line 160
    const/high16 v21, 0x100000

    .line 161
    .line 162
    goto :goto_b

    .line 163
    :cond_c
    const/high16 v21, 0x80000

    .line 164
    .line 165
    :goto_b
    or-int v1, v1, v21

    .line 166
    .line 167
    :cond_d
    const/high16 v21, 0xc00000

    .line 168
    .line 169
    and-int v22, v14, v21

    .line 170
    .line 171
    if-nez v22, :cond_f

    .line 172
    .line 173
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v22

    .line 177
    if-eqz v22, :cond_e

    .line 178
    .line 179
    const/high16 v22, 0x800000

    .line 180
    .line 181
    goto :goto_c

    .line 182
    :cond_e
    const/high16 v22, 0x400000

    .line 183
    .line 184
    :goto_c
    or-int v1, v1, v22

    .line 185
    .line 186
    :cond_f
    const/high16 v22, 0x6000000

    .line 187
    .line 188
    and-int v22, v14, v22

    .line 189
    .line 190
    const/4 v11, 0x0

    .line 191
    if-nez v22, :cond_11

    .line 192
    .line 193
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v22

    .line 197
    if-eqz v22, :cond_10

    .line 198
    .line 199
    const/high16 v22, 0x4000000

    .line 200
    .line 201
    goto :goto_d

    .line 202
    :cond_10
    const/high16 v22, 0x2000000

    .line 203
    .line 204
    :goto_d
    or-int v1, v1, v22

    .line 205
    .line 206
    :cond_11
    const/high16 v22, 0x30000000

    .line 207
    .line 208
    and-int v22, v14, v22

    .line 209
    .line 210
    if-nez v22, :cond_13

    .line 211
    .line 212
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v22

    .line 216
    if-eqz v22, :cond_12

    .line 217
    .line 218
    const/high16 v22, 0x20000000

    .line 219
    .line 220
    goto :goto_e

    .line 221
    :cond_12
    const/high16 v22, 0x10000000

    .line 222
    .line 223
    :goto_e
    or-int v1, v1, v22

    .line 224
    .line 225
    :cond_13
    move-object/from16 v12, p9

    .line 226
    .line 227
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v24

    .line 231
    if-eqz v24, :cond_14

    .line 232
    .line 233
    const/16 v24, 0x4

    .line 234
    .line 235
    goto :goto_f

    .line 236
    :cond_14
    const/16 v24, 0x2

    .line 237
    .line 238
    :goto_f
    const/high16 v25, 0xd80000

    .line 239
    .line 240
    or-int v24, v25, v24

    .line 241
    .line 242
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v25

    .line 246
    if-eqz v25, :cond_15

    .line 247
    .line 248
    const/16 v18, 0x20

    .line 249
    .line 250
    goto :goto_10

    .line 251
    :cond_15
    const/16 v18, 0x10

    .line 252
    .line 253
    :goto_10
    or-int v18, v24, v18

    .line 254
    .line 255
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v20

    .line 259
    if-eqz v20, :cond_16

    .line 260
    .line 261
    const/16 v22, 0x100

    .line 262
    .line 263
    goto :goto_11

    .line 264
    :cond_16
    const/16 v22, 0x80

    .line 265
    .line 266
    :goto_11
    or-int v18, v18, v22

    .line 267
    .line 268
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v20

    .line 272
    if-eqz v20, :cond_17

    .line 273
    .line 274
    move/from16 v15, v16

    .line 275
    .line 276
    :cond_17
    or-int v15, v18, v15

    .line 277
    .line 278
    move-object/from16 v11, p10

    .line 279
    .line 280
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v16

    .line 284
    if-eqz v16, :cond_18

    .line 285
    .line 286
    const/16 v17, 0x4000

    .line 287
    .line 288
    :cond_18
    or-int v15, v15, v17

    .line 289
    .line 290
    or-int v15, v15, v19

    .line 291
    .line 292
    const v16, 0x12492493

    .line 293
    .line 294
    .line 295
    and-int v7, v1, v16

    .line 296
    .line 297
    const v4, 0x12492492

    .line 298
    .line 299
    .line 300
    const/16 v18, 0x1

    .line 301
    .line 302
    if-ne v7, v4, :cond_1a

    .line 303
    .line 304
    const v4, 0x492493

    .line 305
    .line 306
    .line 307
    and-int/2addr v4, v15

    .line 308
    const v7, 0x492492

    .line 309
    .line 310
    .line 311
    if-eq v4, v7, :cond_19

    .line 312
    .line 313
    goto :goto_12

    .line 314
    :cond_19
    const/4 v4, 0x0

    .line 315
    goto :goto_13

    .line 316
    :cond_1a
    :goto_12
    move/from16 v4, v18

    .line 317
    .line 318
    :goto_13
    and-int/lit8 v7, v1, 0x1

    .line 319
    .line 320
    invoke-virtual {v0, v7, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-eqz v4, :cond_22

    .line 325
    .line 326
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 327
    .line 328
    .line 329
    and-int/lit8 v4, v14, 0x1

    .line 330
    .line 331
    const v7, -0x70001

    .line 332
    .line 333
    .line 334
    if-eqz v4, :cond_1c

    .line 335
    .line 336
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    if-eqz v4, :cond_1b

    .line 341
    .line 342
    goto :goto_14

    .line 343
    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 344
    .line 345
    .line 346
    and-int v4, v15, v7

    .line 347
    .line 348
    move-object/from16 v24, p11

    .line 349
    .line 350
    goto :goto_15

    .line 351
    :cond_1c
    :goto_14
    new-instance v4, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 352
    .line 353
    move/from16 v19, v7

    .line 354
    .line 355
    const/high16 v7, 0x41800000    # 16.0f

    .line 356
    .line 357
    invoke-direct {v4, v7, v7, v7, v7}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 358
    .line 359
    .line 360
    and-int v7, v15, v19

    .line 361
    .line 362
    move-object/from16 v24, v4

    .line 363
    .line 364
    move v4, v7

    .line 365
    :goto_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 366
    .line 367
    .line 368
    and-int/lit8 v7, v1, 0xe

    .line 369
    .line 370
    const/4 v15, 0x4

    .line 371
    if-ne v7, v15, :cond_1d

    .line 372
    .line 373
    move/from16 v7, v18

    .line 374
    .line 375
    goto :goto_16

    .line 376
    :cond_1d
    const/4 v7, 0x0

    .line 377
    :goto_16
    const p11, 0xe000

    .line 378
    .line 379
    .line 380
    and-int v15, v1, p11

    .line 381
    .line 382
    const/16 v3, 0x4000

    .line 383
    .line 384
    if-ne v15, v3, :cond_1e

    .line 385
    .line 386
    goto :goto_17

    .line 387
    :cond_1e
    const/16 v18, 0x0

    .line 388
    .line 389
    :goto_17
    or-int v3, v7, v18

    .line 390
    .line 391
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    if-nez v3, :cond_1f

    .line 396
    .line 397
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 398
    .line 399
    if-ne v7, v3, :cond_20

    .line 400
    .line 401
    :cond_1f
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString;

    .line 402
    .line 403
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v6, v3}, Landroidx/compose/ui/text/input/VisualTransformation;->filter(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    :cond_20
    check-cast v7, Landroidx/compose/ui/text/input/TransformedText;

    .line 414
    .line 415
    iget-object v3, v7, Landroidx/compose/ui/text/input/TransformedText;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 416
    .line 417
    iget-object v15, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 418
    .line 419
    new-instance v17, Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    .line 420
    .line 421
    invoke-direct/range {v17 .. v17}, Landroidx/compose/material3/TextFieldLabelPosition$Attached;-><init>()V

    .line 422
    .line 423
    .line 424
    const/4 v3, 0x3

    .line 425
    if-nez v9, :cond_21

    .line 426
    .line 427
    const v7, 0x72dc957c

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 431
    .line 432
    .line 433
    const/4 v7, 0x0

    .line 434
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 435
    .line 436
    .line 437
    move/from16 p13, v3

    .line 438
    .line 439
    const/16 v18, 0x0

    .line 440
    .line 441
    goto :goto_18

    .line 442
    :cond_21
    const v7, 0x72dc957d

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 446
    .line 447
    .line 448
    new-instance v7, Landroidx/compose/material3/TooltipKt$animateTooltip$2;

    .line 449
    .line 450
    invoke-direct {v7, v3, v9}, Landroidx/compose/material3/TooltipKt$animateTooltip$2;-><init>(ILjava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    move/from16 p13, v3

    .line 454
    .line 455
    const v3, -0x570185d2

    .line 456
    .line 457
    .line 458
    invoke-static {v3, v7, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    const/4 v7, 0x0

    .line 463
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 464
    .line 465
    .line 466
    move-object/from16 v18, v3

    .line 467
    .line 468
    :goto_18
    shl-int/lit8 v3, v1, 0x3

    .line 469
    .line 470
    and-int/lit16 v3, v3, 0x380

    .line 471
    .line 472
    or-int/lit8 v3, v3, 0x6

    .line 473
    .line 474
    shr-int/lit8 v7, v1, 0x9

    .line 475
    .line 476
    const/high16 v16, 0x70000

    .line 477
    .line 478
    and-int v16, v7, v16

    .line 479
    .line 480
    or-int v3, v3, v16

    .line 481
    .line 482
    const/high16 v16, 0x380000

    .line 483
    .line 484
    and-int v19, v7, v16

    .line 485
    .line 486
    or-int v3, v3, v19

    .line 487
    .line 488
    shl-int/lit8 v19, v4, 0x15

    .line 489
    .line 490
    const/high16 v20, 0x1c00000

    .line 491
    .line 492
    and-int v20, v19, v20

    .line 493
    .line 494
    or-int v3, v3, v20

    .line 495
    .line 496
    const/high16 v20, 0xe000000

    .line 497
    .line 498
    and-int v20, v19, v20

    .line 499
    .line 500
    or-int v3, v3, v20

    .line 501
    .line 502
    const/high16 v20, 0x70000000

    .line 503
    .line 504
    and-int v19, v19, v20

    .line 505
    .line 506
    or-int v28, v3, v19

    .line 507
    .line 508
    shr-int/lit8 v3, v4, 0x9

    .line 509
    .line 510
    and-int/lit8 v3, v3, 0xe

    .line 511
    .line 512
    shr-int/lit8 v19, v1, 0x6

    .line 513
    .line 514
    and-int/lit8 v19, v19, 0x70

    .line 515
    .line 516
    or-int v3, v3, v19

    .line 517
    .line 518
    move-object/from16 v27, v0

    .line 519
    .line 520
    and-int/lit16 v0, v1, 0x380

    .line 521
    .line 522
    or-int/2addr v0, v3

    .line 523
    and-int/lit16 v3, v7, 0x1c00

    .line 524
    .line 525
    or-int/2addr v0, v3

    .line 526
    shr-int/lit8 v1, v1, 0x3

    .line 527
    .line 528
    and-int v1, v1, p11

    .line 529
    .line 530
    or-int/2addr v0, v1

    .line 531
    shl-int/lit8 v1, v4, 0x6

    .line 532
    .line 533
    and-int v1, v1, v16

    .line 534
    .line 535
    or-int/2addr v0, v1

    .line 536
    or-int v29, v0, v21

    .line 537
    .line 538
    move-object/from16 v23, p6

    .line 539
    .line 540
    move-object/from16 v26, p12

    .line 541
    .line 542
    move-object/from16 v16, v5

    .line 543
    .line 544
    move/from16 v22, v8

    .line 545
    .line 546
    move/from16 v21, v10

    .line 547
    .line 548
    move-object/from16 v25, v11

    .line 549
    .line 550
    move-object/from16 v19, v12

    .line 551
    .line 552
    move/from16 v20, v13

    .line 553
    .line 554
    invoke-static/range {v15 .. v29}, Landroidx/compose/material3/internal/Icons$Filled;->CommonDecorationBox(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 555
    .line 556
    .line 557
    move-object/from16 v12, v24

    .line 558
    .line 559
    goto :goto_19

    .line 560
    :cond_22
    move-object/from16 v27, v0

    .line 561
    .line 562
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 563
    .line 564
    .line 565
    move-object/from16 v12, p11

    .line 566
    .line 567
    :goto_19
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 568
    .line 569
    .line 570
    move-result-object v15

    .line 571
    if-eqz v15, :cond_23

    .line 572
    .line 573
    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$$ExternalSyntheticLambda1;

    .line 574
    .line 575
    move-object/from16 v1, p0

    .line 576
    .line 577
    move-object/from16 v3, p2

    .line 578
    .line 579
    move/from16 v4, p3

    .line 580
    .line 581
    move/from16 v5, p4

    .line 582
    .line 583
    move-object/from16 v7, p6

    .line 584
    .line 585
    move/from16 v8, p7

    .line 586
    .line 587
    move-object/from16 v10, p9

    .line 588
    .line 589
    move-object/from16 v11, p10

    .line 590
    .line 591
    move-object/from16 v13, p12

    .line 592
    .line 593
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/OutlinedTextFieldDefaults$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 594
    .line 595
    .line 596
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 597
    .line 598
    :cond_23
    return-void
.end method
