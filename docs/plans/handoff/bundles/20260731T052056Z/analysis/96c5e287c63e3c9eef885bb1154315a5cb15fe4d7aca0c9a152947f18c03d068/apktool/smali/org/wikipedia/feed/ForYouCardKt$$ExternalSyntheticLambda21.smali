.class public final synthetic Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$6:Landroid/content/Context;

.field public final synthetic f$7:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$0:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$2:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$3:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$4:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$5:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$6:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$7:Lorg/wikipedia/dataclient/WikiSite;

    .line 19
    .line 20
    iput p9, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$8:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 6
    .line 7
    move-object/from16 v10, p2

    .line 8
    .line 9
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    check-cast v2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v1, v2, 0x11

    .line 23
    .line 24
    const/16 v3, 0x10

    .line 25
    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v14, 0x1

    .line 28
    if-eq v1, v3, :cond_0

    .line 29
    .line 30
    move v1, v14

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v13

    .line 33
    :goto_0
    and-int/2addr v2, v14

    .line 34
    invoke-virtual {v10, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_d

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    iget-object v2, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$0:Lkotlin/jvm/functions/Function0;

    .line 42
    .line 43
    iget-object v15, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$1:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    iget-object v3, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$6:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v4, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$7:Lorg/wikipedia/dataclient/WikiSite;

    .line 48
    .line 49
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const v6, -0xde240cd

    .line 54
    .line 55
    .line 56
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 57
    .line 58
    .line 59
    new-instance v6, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;

    .line 60
    .line 61
    invoke-direct {v6, v3, v4, v1}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 62
    .line 63
    .line 64
    const v7, 0x4ca46e89    # 8.620961E7f

    .line 65
    .line 66
    .line 67
    invoke-static {v7, v6, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    or-int/2addr v7, v8

    .line 80
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    if-nez v7, :cond_1

    .line 85
    .line 86
    if-ne v8, v5, :cond_2

    .line 87
    .line 88
    :cond_1
    new-instance v8, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda24;

    .line 89
    .line 90
    invoke-direct {v8, v2, v15, v13}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda24;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 97
    .line 98
    move-object v2, v5

    .line 99
    sget-object v5, Lorg/wikipedia/feed/ForYouCardKt;->lambda$1459791436:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 100
    .line 101
    const/16 v11, 0xc06

    .line 102
    .line 103
    const/16 v12, 0x1f4

    .line 104
    .line 105
    move-object v7, v4

    .line 106
    const/4 v4, 0x0

    .line 107
    move-object v9, v2

    .line 108
    move-object v2, v6

    .line 109
    const/4 v6, 0x0

    .line 110
    move-object/from16 v16, v7

    .line 111
    .line 112
    const/4 v7, 0x0

    .line 113
    move-object/from16 v17, v3

    .line 114
    .line 115
    move-object v3, v8

    .line 116
    const/4 v8, 0x0

    .line 117
    move-object/from16 v18, v9

    .line 118
    .line 119
    const/4 v9, 0x0

    .line 120
    move-object/from16 v14, v16

    .line 121
    .line 122
    move-object/from16 v1, v17

    .line 123
    .line 124
    move-object/from16 v19, v18

    .line 125
    .line 126
    invoke-static/range {v2 .. v12}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    move-object v1, v3

    .line 134
    move-object v14, v4

    .line 135
    move-object/from16 v19, v5

    .line 136
    .line 137
    const v2, -0xdd5cdbc

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 144
    .line 145
    .line 146
    :goto_1
    const/4 v2, 0x4

    .line 147
    iget-object v3, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$2:Lkotlin/jvm/functions/Function0;

    .line 148
    .line 149
    if-eqz v3, :cond_6

    .line 150
    .line 151
    const v4, -0xdd4dc27

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 155
    .line 156
    .line 157
    new-instance v4, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;

    .line 158
    .line 159
    invoke-direct {v4, v1, v14, v2}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 160
    .line 161
    .line 162
    const v5, -0x2585dc00

    .line 163
    .line 164
    .line 165
    invoke-static {v5, v4, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    or-int/2addr v5, v6

    .line 178
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    if-nez v5, :cond_4

    .line 183
    .line 184
    move-object/from16 v5, v19

    .line 185
    .line 186
    if-ne v6, v5, :cond_5

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_4
    move-object/from16 v5, v19

    .line 190
    .line 191
    :goto_2
    new-instance v6, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda24;

    .line 192
    .line 193
    const/4 v7, 0x1

    .line 194
    invoke-direct {v6, v3, v15, v7}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda24;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    move-object v3, v6

    .line 201
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 202
    .line 203
    move-object/from16 v18, v5

    .line 204
    .line 205
    sget-object v5, Lorg/wikipedia/feed/ForYouCardKt;->lambda$-970361085:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 206
    .line 207
    const/16 v11, 0xc06

    .line 208
    .line 209
    const/16 v12, 0x1f4

    .line 210
    .line 211
    move v6, v2

    .line 212
    move-object v2, v4

    .line 213
    const/4 v4, 0x0

    .line 214
    move v7, v6

    .line 215
    const/4 v6, 0x0

    .line 216
    move v8, v7

    .line 217
    const/4 v7, 0x0

    .line 218
    move v9, v8

    .line 219
    const/4 v8, 0x0

    .line 220
    move/from16 v16, v9

    .line 221
    .line 222
    const/4 v9, 0x0

    .line 223
    move-object/from16 v20, v18

    .line 224
    .line 225
    invoke-static/range {v2 .. v12}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_6
    move-object/from16 v20, v19

    .line 233
    .line 234
    const v2, -0xdc8077c

    .line 235
    .line 236
    .line 237
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 241
    .line 242
    .line 243
    :goto_3
    new-instance v2, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;

    .line 244
    .line 245
    const/4 v3, 0x5

    .line 246
    invoke-direct {v2, v1, v14, v3}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 247
    .line 248
    .line 249
    const v3, -0x6a6429d2

    .line 250
    .line 251
    .line 252
    invoke-static {v3, v2, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iget-object v3, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$3:Lkotlin/jvm/functions/Function0;

    .line 257
    .line 258
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    or-int/2addr v4, v5

    .line 267
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    if-nez v4, :cond_7

    .line 272
    .line 273
    move-object/from16 v4, v20

    .line 274
    .line 275
    if-ne v5, v4, :cond_8

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_7
    move-object/from16 v4, v20

    .line 279
    .line 280
    :goto_4
    new-instance v5, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda24;

    .line 281
    .line 282
    const/4 v6, 0x2

    .line 283
    invoke-direct {v5, v3, v15, v6}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda24;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_8
    move-object v3, v5

    .line 290
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 291
    .line 292
    sget-object v5, Lorg/wikipedia/feed/ForYouCardKt;->lambda$159733169:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 293
    .line 294
    const/16 v11, 0xc06

    .line 295
    .line 296
    const/16 v12, 0x1f4

    .line 297
    .line 298
    move-object/from16 v18, v4

    .line 299
    .line 300
    const/4 v4, 0x0

    .line 301
    const/4 v6, 0x0

    .line 302
    const/4 v7, 0x0

    .line 303
    const/4 v8, 0x0

    .line 304
    const/4 v9, 0x0

    .line 305
    move-object/from16 v13, v18

    .line 306
    .line 307
    invoke-static/range {v2 .. v12}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 308
    .line 309
    .line 310
    new-instance v2, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;

    .line 311
    .line 312
    const/4 v3, 0x6

    .line 313
    invoke-direct {v2, v1, v14, v3}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 314
    .line 315
    .line 316
    const v3, -0x3cc9c99b

    .line 317
    .line 318
    .line 319
    invoke-static {v3, v2, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    iget-object v3, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$4:Lkotlin/jvm/functions/Function0;

    .line 324
    .line 325
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    or-int/2addr v4, v5

    .line 334
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    if-nez v4, :cond_9

    .line 339
    .line 340
    if-ne v5, v13, :cond_a

    .line 341
    .line 342
    :cond_9
    new-instance v5, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda24;

    .line 343
    .line 344
    const/4 v4, 0x3

    .line 345
    invoke-direct {v5, v3, v15, v4}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda24;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_a
    move-object v3, v5

    .line 352
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 353
    .line 354
    sget-object v5, Lorg/wikipedia/feed/ForYouCardKt;->lambda$-490872536:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 355
    .line 356
    const/16 v11, 0xc06

    .line 357
    .line 358
    const/16 v12, 0x1f4

    .line 359
    .line 360
    const/4 v4, 0x0

    .line 361
    const/4 v6, 0x0

    .line 362
    const/4 v7, 0x0

    .line 363
    const/4 v8, 0x0

    .line 364
    const/4 v9, 0x0

    .line 365
    invoke-static/range {v2 .. v12}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 366
    .line 367
    .line 368
    new-instance v2, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda31;

    .line 369
    .line 370
    iget v3, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$8:I

    .line 371
    .line 372
    const/4 v4, 0x0

    .line 373
    invoke-direct {v2, v1, v14, v3, v4}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda31;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 374
    .line 375
    .line 376
    const v1, 0x432837a6

    .line 377
    .line 378
    .line 379
    invoke-static {v1, v2, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    iget-object v0, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda21;->f$5:Lkotlin/jvm/functions/Function0;

    .line 384
    .line 385
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    or-int/2addr v1, v3

    .line 394
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    if-nez v1, :cond_b

    .line 399
    .line 400
    if-ne v3, v13, :cond_c

    .line 401
    .line 402
    :cond_b
    new-instance v3, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda24;

    .line 403
    .line 404
    const/4 v6, 0x4

    .line 405
    invoke-direct {v3, v0, v15, v6}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda24;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    :cond_c
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 412
    .line 413
    sget-object v5, Lorg/wikipedia/feed/ForYouCardKt;->lambda$1655693929:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 414
    .line 415
    const/16 v11, 0xc06

    .line 416
    .line 417
    const/16 v12, 0x1f4

    .line 418
    .line 419
    const/4 v4, 0x0

    .line 420
    const/4 v6, 0x0

    .line 421
    const/4 v7, 0x0

    .line 422
    const/4 v8, 0x0

    .line 423
    const/4 v9, 0x0

    .line 424
    invoke-static/range {v2 .. v12}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 425
    .line 426
    .line 427
    goto :goto_5

    .line 428
    :cond_d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 429
    .line 430
    .line 431
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 432
    .line 433
    return-object v0
.end method
