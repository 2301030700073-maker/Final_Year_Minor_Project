.class public final Landroidx/compose/material3/CardKt$Card$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/material3/CardKt$Card$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/CardKt$Card$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/material3/CardKt$Card$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 5
    .line 6
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 7
    .line 8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/material3/CardKt$Card$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    move-object/from16 v1, p2

    .line 22
    .line 23
    check-cast v1, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    and-int/lit8 v2, v1, 0x3

    .line 30
    .line 31
    if-eq v2, v5, :cond_0

    .line 32
    .line 33
    move v2, v7

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v2, v6

    .line 36
    :goto_0
    and-int/2addr v1, v7

    .line 37
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_6

    .line 44
    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    .line 47
    float-to-double v2, v1

    .line 48
    const-wide/16 v8, 0x0

    .line 49
    .line 50
    cmpl-double v2, v2, v8

    .line 51
    .line 52
    if-lez v2, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string v2, "invalid weight; must be greater than zero"

    .line 56
    .line 57
    invoke-static {v2}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    new-instance v8, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 61
    .line 62
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 63
    .line 64
    .line 65
    cmpl-float v3, v1, v2

    .line 66
    .line 67
    if-lez v3, :cond_2

    .line 68
    .line 69
    move v1, v2

    .line 70
    :cond_2
    invoke-direct {v8, v1, v7}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 71
    .line 72
    .line 73
    const/4 v12, 0x0

    .line 74
    const/16 v13, 0xa

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    move v11, v9

    .line 79
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 84
    .line 85
    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {v0, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 102
    .line 103
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 109
    .line 110
    .line 111
    iget-boolean v9, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 112
    .line 113
    if-eqz v9, :cond_3

    .line 114
    .line 115
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 120
    .line 121
    .line 122
    :goto_2
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 123
    .line 124
    invoke-static {v0, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 128
    .line 129
    invoke-static {v0, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 130
    .line 131
    .line 132
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 133
    .line 134
    iget-boolean v5, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 135
    .line 136
    if-nez v5, :cond_4

    .line 137
    .line 138
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-nez v5, :cond_5

    .line 151
    .line 152
    :cond_4
    invoke-static {v3, v0, v3, v2}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 156
    .line 157
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v6, p0, v0, v7}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;Z)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 165
    .line 166
    .line 167
    :goto_3
    return-object v4

    .line 168
    :pswitch_0
    move-object v0, p1

    .line 169
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 170
    .line 171
    move-object/from16 v8, p2

    .line 172
    .line 173
    check-cast v8, Ljava/lang/Number;

    .line 174
    .line 175
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    and-int/lit8 v9, v8, 0x3

    .line 180
    .line 181
    if-eq v9, v5, :cond_7

    .line 182
    .line 183
    move v5, v7

    .line 184
    goto :goto_4

    .line 185
    :cond_7
    move v5, v6

    .line 186
    :goto_4
    and-int/2addr v8, v7

    .line 187
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 188
    .line 189
    invoke-virtual {v0, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_b

    .line 194
    .line 195
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 196
    .line 197
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 198
    .line 199
    invoke-static {v5, v8, v0, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-static {v0, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 216
    .line 217
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 221
    .line 222
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 223
    .line 224
    .line 225
    iget-boolean v10, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 226
    .line 227
    if-eqz v10, :cond_8

    .line 228
    .line 229
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 230
    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 234
    .line 235
    .line 236
    :goto_5
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 237
    .line 238
    invoke-static {v0, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 239
    .line 240
    .line 241
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 242
    .line 243
    invoke-static {v0, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 244
    .line 245
    .line 246
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 247
    .line 248
    iget-boolean v8, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 249
    .line 250
    if-nez v8, :cond_9

    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-nez v8, :cond_a

    .line 265
    .line 266
    :cond_9
    invoke-static {v6, v0, v6, v5}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 267
    .line 268
    .line 269
    :cond_a
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 270
    .line 271
    invoke-static {v0, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {p0, v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 286
    .line 287
    .line 288
    :goto_6
    return-object v4

    .line 289
    :pswitch_1
    move-object v0, p1

    .line 290
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 291
    .line 292
    move-object/from16 v8, p2

    .line 293
    .line 294
    check-cast v8, Ljava/lang/Number;

    .line 295
    .line 296
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    and-int/lit8 v9, v8, 0x3

    .line 301
    .line 302
    if-eq v9, v5, :cond_c

    .line 303
    .line 304
    move v5, v7

    .line 305
    goto :goto_7

    .line 306
    :cond_c
    move v5, v6

    .line 307
    :goto_7
    and-int/2addr v8, v7

    .line 308
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 309
    .line 310
    invoke-virtual {v0, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-eqz v5, :cond_10

    .line 315
    .line 316
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 317
    .line 318
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 319
    .line 320
    invoke-static {v5, v8, v0, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    invoke-static {v0, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 337
    .line 338
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 342
    .line 343
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 344
    .line 345
    .line 346
    iget-boolean v10, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 347
    .line 348
    if-eqz v10, :cond_d

    .line 349
    .line 350
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 351
    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 355
    .line 356
    .line 357
    :goto_8
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 358
    .line 359
    invoke-static {v0, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 360
    .line 361
    .line 362
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 363
    .line 364
    invoke-static {v0, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 365
    .line 366
    .line 367
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 368
    .line 369
    iget-boolean v8, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 370
    .line 371
    if-nez v8, :cond_e

    .line 372
    .line 373
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v8

    .line 385
    if-nez v8, :cond_f

    .line 386
    .line 387
    :cond_e
    invoke-static {v6, v0, v6, v5}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 388
    .line 389
    .line 390
    :cond_f
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 391
    .line 392
    invoke-static {v0, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 393
    .line 394
    .line 395
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {p0, v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 403
    .line 404
    .line 405
    goto :goto_9

    .line 406
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 407
    .line 408
    .line 409
    :goto_9
    return-object v4

    .line 410
    nop

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
