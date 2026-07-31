.class public abstract Landroidx/sqlite/SQLite;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlinx/serialization/encoding/Encoder;


# static fields
.field public static sActionBarFieldsFetched:Z = false

.field public static sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method; = null

.field public static sDialogFieldsFetched:Z = false

.field public static sDialogKeyListenerField:Ljava/lang/reflect/Field;


# direct methods
.method public static final ContentType(Ljava/lang/String;)Landroidx/compose/ui/autofill/AndroidContentType;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/autofill/AndroidContentType;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/sqlite/SQLite;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroidx/compose/ui/autofill/AndroidContentType;-><init>(Ljava/util/Set;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V
    .locals 20

    .line 1
    move-object/from16 v7, p7

    .line 2
    .line 3
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, 0x3335543

    .line 6
    .line 7
    .line 8
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, p0, 0x6

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    move-object/from16 v9, p9

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int v0, p0, v0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move/from16 v0, p0

    .line 31
    .line 32
    :goto_1
    or-int/lit8 v2, v0, 0x10

    .line 33
    .line 34
    and-int/lit8 v3, p1, 0x4

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    or-int/lit16 v0, v0, 0x190

    .line 39
    .line 40
    move v2, v0

    .line 41
    move-object/from16 v0, p5

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_2
    move-object/from16 v0, p5

    .line 45
    .line 46
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    const/16 v4, 0x100

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const/16 v4, 0x80

    .line 56
    .line 57
    :goto_2
    or-int/2addr v2, v4

    .line 58
    :goto_3
    or-int/lit16 v2, v2, 0xc00

    .line 59
    .line 60
    and-int/lit8 v4, p1, 0x10

    .line 61
    .line 62
    if-nez v4, :cond_4

    .line 63
    .line 64
    move-object/from16 v4, p4

    .line 65
    .line 66
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    const/16 v5, 0x4000

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    move-object/from16 v4, p4

    .line 76
    .line 77
    :cond_5
    const/16 v5, 0x2000

    .line 78
    .line 79
    :goto_4
    or-int/2addr v2, v5

    .line 80
    const/high16 v5, 0x2cb0000

    .line 81
    .line 82
    or-int/2addr v2, v5

    .line 83
    const/high16 v5, 0x30000000

    .line 84
    .line 85
    and-int v5, p0, v5

    .line 86
    .line 87
    move-object/from16 v10, p10

    .line 88
    .line 89
    if-nez v5, :cond_7

    .line 90
    .line 91
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_6

    .line 96
    .line 97
    const/high16 v5, 0x20000000

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_6
    const/high16 v5, 0x10000000

    .line 101
    .line 102
    :goto_5
    or-int/2addr v2, v5

    .line 103
    :cond_7
    const v5, 0x12492493

    .line 104
    .line 105
    .line 106
    and-int/2addr v5, v2

    .line 107
    const v6, 0x12492492

    .line 108
    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    const/4 v11, 0x1

    .line 112
    if-eq v5, v6, :cond_8

    .line 113
    .line 114
    move v5, v11

    .line 115
    goto :goto_6

    .line 116
    :cond_8
    move v5, v8

    .line 117
    :goto_6
    and-int/lit8 v6, v2, 0x1

    .line 118
    .line 119
    invoke-virtual {v7, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_12

    .line 124
    .line 125
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 126
    .line 127
    .line 128
    and-int/lit8 v5, p0, 0x1

    .line 129
    .line 130
    const v6, -0xe380001

    .line 131
    .line 132
    .line 133
    const v12, -0xe071

    .line 134
    .line 135
    .line 136
    if-eqz v5, :cond_b

    .line 137
    .line 138
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_9

    .line 143
    .line 144
    goto :goto_8

    .line 145
    :cond_9
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 146
    .line 147
    .line 148
    and-int/lit8 v1, v2, -0x71

    .line 149
    .line 150
    and-int/lit8 v3, p1, 0x10

    .line 151
    .line 152
    if-eqz v3, :cond_a

    .line 153
    .line 154
    and-int v1, v2, v12

    .line 155
    .line 156
    :cond_a
    and-int/2addr v1, v6

    .line 157
    move-object/from16 v2, p2

    .line 158
    .line 159
    move-object/from16 v3, p3

    .line 160
    .line 161
    move-object/from16 v6, p6

    .line 162
    .line 163
    move-object/from16 v8, p8

    .line 164
    .line 165
    move/from16 v11, p11

    .line 166
    .line 167
    :goto_7
    move-object v5, v0

    .line 168
    goto :goto_9

    .line 169
    :cond_b
    :goto_8
    sget-object v5, Landroidx/compose/foundation/lazy/LazyListStateKt;->EmptyLazyListMeasureResult:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 170
    .line 171
    new-array v5, v8, [Ljava/lang/Object;

    .line 172
    .line 173
    sget-object v13, Landroidx/compose/foundation/lazy/LazyListState;->Saver:Landroidx/cardview/widget/CardView$1;

    .line 174
    .line 175
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    or-int/2addr v14, v15

    .line 184
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v15

    .line 188
    move/from16 p7, v6

    .line 189
    .line 190
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 191
    .line 192
    if-nez v14, :cond_c

    .line 193
    .line 194
    if-ne v15, v6, :cond_d

    .line 195
    .line 196
    :cond_c
    new-instance v15, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 197
    .line 198
    invoke-direct {v15, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_d
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 205
    .line 206
    invoke-static {v5, v13, v15, v7, v8}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable$1([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListState;

    .line 211
    .line 212
    and-int/lit8 v5, v2, -0x71

    .line 213
    .line 214
    if-eqz v3, :cond_e

    .line 215
    .line 216
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 217
    .line 218
    const/4 v3, 0x0

    .line 219
    invoke-direct {v0, v3, v3, v3, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 220
    .line 221
    .line 222
    :cond_e
    and-int/lit8 v3, p1, 0x10

    .line 223
    .line 224
    if-eqz v3, :cond_f

    .line 225
    .line 226
    sget-object v3, Landroidx/compose/foundation/layout/SpacerKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 227
    .line 228
    and-int v5, v2, v12

    .line 229
    .line 230
    move-object v4, v3

    .line 231
    :cond_f
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 232
    .line 233
    invoke-static {v7}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    if-nez v8, :cond_10

    .line 246
    .line 247
    if-ne v12, v6, :cond_11

    .line 248
    .line 249
    :cond_10
    new-instance v12, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 250
    .line 251
    invoke-direct {v12, v3}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_11
    move-object v3, v12

    .line 258
    check-cast v3, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 259
    .line 260
    invoke-static {v7}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    and-int v5, v5, p7

    .line 265
    .line 266
    move-object v8, v2

    .line 267
    move-object v2, v6

    .line 268
    move-object v6, v1

    .line 269
    move v1, v5

    .line 270
    goto :goto_7

    .line 271
    :goto_9
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 272
    .line 273
    .line 274
    and-int/lit8 v0, v1, 0xe

    .line 275
    .line 276
    or-int/lit16 v0, v0, 0x6000

    .line 277
    .line 278
    and-int/lit16 v12, v1, 0x380

    .line 279
    .line 280
    or-int/2addr v0, v12

    .line 281
    const v12, 0x30180c00

    .line 282
    .line 283
    .line 284
    or-int/2addr v0, v12

    .line 285
    shr-int/lit8 v12, v1, 0xc

    .line 286
    .line 287
    and-int/lit8 v12, v12, 0xe

    .line 288
    .line 289
    shr-int/lit8 v1, v1, 0x12

    .line 290
    .line 291
    and-int/lit16 v1, v1, 0x1c00

    .line 292
    .line 293
    or-int/2addr v1, v12

    .line 294
    invoke-static/range {v0 .. v11}, Lkotlin/text/CharsKt;->LazyList(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 295
    .line 296
    .line 297
    move-object/from16 v16, v2

    .line 298
    .line 299
    move-object v14, v3

    .line 300
    move-object v10, v6

    .line 301
    move-object v13, v8

    .line 302
    move v15, v11

    .line 303
    move-object v11, v5

    .line 304
    :goto_a
    move-object v12, v4

    .line 305
    goto :goto_b

    .line 306
    :cond_12
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 307
    .line 308
    .line 309
    move-object/from16 v16, p2

    .line 310
    .line 311
    move-object/from16 v14, p3

    .line 312
    .line 313
    move-object/from16 v10, p6

    .line 314
    .line 315
    move-object/from16 v13, p8

    .line 316
    .line 317
    move/from16 v15, p11

    .line 318
    .line 319
    move-object v11, v0

    .line 320
    goto :goto_a

    .line 321
    :goto_b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    if-eqz v0, :cond_13

    .line 326
    .line 327
    new-instance v8, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda11;

    .line 328
    .line 329
    move/from16 v18, p0

    .line 330
    .line 331
    move/from16 v19, p1

    .line 332
    .line 333
    move-object/from16 v9, p9

    .line 334
    .line 335
    move-object/from16 v17, p10

    .line 336
    .line 337
    invoke-direct/range {v8 .. v19}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;II)V

    .line 338
    .line 339
    .line 340
    iput-object v8, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 341
    .line 342
    :cond_13
    return-void
.end method

.method public static final access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p2, Lokhttp3/internal/concurrent/TaskQueue;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 p2, 0x20

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    new-array v1, p2, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p3, v1, v2

    .line 21
    .line 22
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string p3, "%-22s"

    .line 27
    .line 28
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p2, ": "

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Lokhttp3/internal/concurrent/Task;->name:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static final asGapAnchor(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    move-object p0, v0

    .line 6
    :goto_0
    if-eqz p0, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const-string p0, "Inconsistent composition"

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticBUOutline0;->m()V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    array-length v1, p0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    new-instance p0, Ljava/io/ObjectInputStream;

    .line 19
    .line 20
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readBoolean()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    new-instance v6, Landroidx/work/Constraints$ContentUriTrigger;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-direct {v6, v4, v5}, Landroidx/work/Constraints$ContentUriTrigger;-><init>(Landroid/net/Uri;Z)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v2

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto :goto_4

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 67
    :catchall_2
    move-exception v3

    .line 68
    :try_start_4
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 73
    .line 74
    .line 75
    :goto_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :goto_4
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 80
    :catchall_3
    move-exception v0

    .line 81
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw v0
.end method

.method public static collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->wantsNodes()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->stream(Lorg/jsoup/nodes/Element;Ljava/lang/Class;)Lj$/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lorg/jsoup/select/Evaluator$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, p0, p1, v2}, Lorg/jsoup/select/Evaluator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->stream(Lorg/jsoup/nodes/Element;Ljava/lang/Class;)Lj$/util/stream/Stream;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lorg/jsoup/select/Evaluator$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {v1, p0, p1, v2}, Lorg/jsoup/select/Evaluator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    new-instance v0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/4 v1, 0x6

    .line 53
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lorg/jsoup/select/Elements;

    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    .line 67
    .line 68
    .line 69
    return-object p1
.end method

.method public static create(Landroid/content/Context;)Landroidx/emoji2/text/FontRequestEmojiCompatConfig;
    .locals 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28;

    .line 10
    .line 11
    invoke-direct {v0, v2}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lio/noties/markwon/BlockHandlerDef;

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "Package manager required to locate emoji font provider"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v3, "androidx.content.action.LOAD_EMOJI_FONT"

    .line 32
    .line 33
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 57
    .line 58
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    and-int/2addr v6, v7

    .line 70
    if-ne v6, v7, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v4, v5

    .line 74
    :goto_1
    if-nez v4, :cond_3

    .line 75
    .line 76
    :goto_2
    move-object v6, v5

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    :try_start_0
    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1, v8}, Lio/noties/markwon/BlockHandlerDef;->getSigningSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    array-length v2, v0

    .line 92
    :goto_3
    if-ge v3, v2, :cond_4

    .line 93
    .line 94
    aget-object v4, v0, v3

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    new-instance v6, Landroidx/core/provider/FontRequest;

    .line 111
    .line 112
    const-string v9, "emojicompat-emoji-font"

    .line 113
    .line 114
    const/4 v11, 0x0

    .line 115
    const/4 v12, 0x0

    .line 116
    invoke-direct/range {v6 .. v12}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "emoji2.text.DefaultEmojiConfig"

    .line 122
    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :goto_4
    if-nez v6, :cond_5

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_5
    new-instance v5, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    .line 131
    .line 132
    new-instance v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;

    .line 133
    .line 134
    invoke-direct {v0, p0, v6}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {v5, v0}, Landroidx/room/RoomOpenDelegate;-><init>(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;)V

    .line 138
    .line 139
    .line 140
    :goto_5
    return-object v5
.end method

.method public static defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 7
    .line 8
    .line 9
    const/high16 p0, 0x7f020000

    .line 10
    .line 11
    iput p0, v0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    .line 12
    .line 13
    const v1, 0x7f020001

    .line 14
    .line 15
    .line 16
    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    .line 17
    .line 18
    iput p0, v0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    .line 19
    .line 20
    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    .line 21
    .line 22
    return-object v0
.end method

.method public static dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1c

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    const v0, 0x7f0a03d0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v3, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    iput-object v3, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    .line 34
    .line 35
    iput-object v3, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p0, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-ne p0, p1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object p0, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    iget-object p0, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    .line 59
    .line 60
    if-nez p0, :cond_3

    .line 61
    .line 62
    new-instance p0, Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p0, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    .line 68
    .line 69
    :cond_3
    iget-object p0, v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x1

    .line 76
    if-ne v0, v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ltz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 95
    .line 96
    .line 97
    :cond_4
    if-nez v3, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    move-object v3, p0

    .line 108
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 109
    .line 110
    :cond_5
    if-eqz v3, :cond_8

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p0, Landroid/view/View;

    .line 117
    .line 118
    if-eqz p0, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    const p1, 0x7f0a03d1

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Ljava/util/ArrayList;

    .line 134
    .line 135
    if-eqz p0, :cond_7

    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    sub-int/2addr p1, v1

    .line 142
    if-gez p1, :cond_6

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 153
    .line 154
    .line 155
    return v2

    .line 156
    :cond_7
    :goto_0
    return v1

    .line 157
    :cond_8
    :goto_1
    return v2
.end method

.method public static dispatchKeyEvent(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto/16 :goto_4

    .line 5
    .line 6
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1c

    .line 9
    .line 10
    if-lt v1, v2, :cond_1

    .line 11
    .line 12
    invoke-interface {p0, p3}, Landroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    instance-of v1, p2, Landroid/app/Activity;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v1, :cond_9

    .line 22
    .line 23
    check-cast p2, Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/16 p1, 0x8

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/16 v4, 0x52

    .line 49
    .line 50
    if-ne v1, v4, :cond_5

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    sget-boolean v1, Landroidx/sqlite/SQLite;->sActionBarFieldsFetched:Z

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v4, "onMenuKeyEvent"

    .line 63
    .line 64
    new-array v5, v3, [Ljava/lang/Class;

    .line 65
    .line 66
    const-class v6, Landroid/view/KeyEvent;

    .line 67
    .line 68
    aput-object v6, v5, v0

    .line 69
    .line 70
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sput-object v1, Landroidx/sqlite/SQLite;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    :catch_0
    sput-boolean v3, Landroidx/sqlite/SQLite;->sActionBarFieldsFetched:Z

    .line 77
    .line 78
    :cond_2
    sget-object v1, Landroidx/sqlite/SQLite;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object p3, v4, v0

    .line 85
    .line 86
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-nez p1, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :catch_1
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_7

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_7
    if-eqz p0, :cond_8

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :cond_8
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    :goto_1
    return v3

    .line 131
    :cond_9
    instance-of v1, p2, Landroid/app/Dialog;

    .line 132
    .line 133
    if-eqz v1, :cond_10

    .line 134
    .line 135
    check-cast p2, Landroid/app/Dialog;

    .line 136
    .line 137
    sget-boolean p0, Landroidx/sqlite/SQLite;->sDialogFieldsFetched:Z

    .line 138
    .line 139
    if-nez p0, :cond_a

    .line 140
    .line 141
    :try_start_2
    const-class p0, Landroid/app/Dialog;

    .line 142
    .line 143
    const-string p1, "mOnKeyListener"

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    sput-object p0, Landroidx/sqlite/SQLite;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    .line 150
    .line 151
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 152
    .line 153
    .line 154
    :catch_2
    sput-boolean v3, Landroidx/sqlite/SQLite;->sDialogFieldsFetched:Z

    .line 155
    .line 156
    :cond_a
    sget-object p0, Landroidx/sqlite/SQLite;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    .line 157
    .line 158
    if-eqz p0, :cond_b

    .line 159
    .line 160
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catch_3
    :cond_b
    move-object p0, v2

    .line 168
    :goto_2
    if-eqz p0, :cond_c

    .line 169
    .line 170
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_c

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_c
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_d

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_d
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_e

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_e
    if-eqz p0, :cond_f

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :cond_f
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    :goto_3
    return v3

    .line 214
    :cond_10
    if-eqz p1, :cond_11

    .line 215
    .line 216
    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-nez p1, :cond_12

    .line 221
    .line 222
    :cond_11
    invoke-interface {p0, p3}, Landroidx/core/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    if-eqz p0, :cond_13

    .line 227
    .line 228
    :cond_12
    return v3

    .line 229
    :cond_13
    :goto_4
    return v0
.end method

.method public static enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lus/shandian/giga/util/Utility;->isPopupEnabledElseAsk(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const v0, 0x7f13014e

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    .line 22
    .line 23
    const-class v0, Lorg/schabi/newpipe/player/PlayerService;

    .line 24
    .line 25
    sget-object v2, Lorg/schabi/newpipe/player/PlayerIntentType;->Enqueue:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 26
    .line 27
    invoke-static {p0, v0, p1, v2}, Landroidx/sqlite/SQLite;->getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "resume_playback"

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "player_type"

    .line 38
    .line 39
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Lcoil3/decode/StaticImageDecoderKt;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static final execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p0, p1}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :catchall_1
    move-exception v0

    .line 19
    invoke-static {p0, p1}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public static final formatDuration(J)Ljava/lang/String;
    .locals 18

    .line 1
    const-wide/32 v0, -0x3b9328e0

    .line 2
    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    const-string v1, " s "

    .line 7
    .line 8
    const-wide/32 v2, 0x3b9aca00

    .line 9
    .line 10
    .line 11
    const-wide/32 v4, 0x1dcd6500

    .line 12
    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    sub-long v4, p0, v4

    .line 22
    .line 23
    div-long/2addr v4, v2

    .line 24
    invoke-static {v4, v5, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-wide/32 v6, -0xf404c

    .line 30
    .line 31
    .line 32
    cmp-long v0, p0, v6

    .line 33
    .line 34
    const-string v6, " ms"

    .line 35
    .line 36
    const-wide/32 v7, 0xf4240

    .line 37
    .line 38
    .line 39
    const-wide/32 v9, 0x7a120

    .line 40
    .line 41
    .line 42
    if-gtz v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    sub-long v1, p0, v9

    .line 50
    .line 51
    div-long/2addr v1, v7

    .line 52
    invoke-static {v1, v2, v6, v0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-wide/16 v11, 0x0

    .line 58
    .line 59
    cmp-long v0, p0, v11

    .line 60
    .line 61
    const-string v11, " \u00b5s"

    .line 62
    .line 63
    const-wide/16 v12, 0x3e8

    .line 64
    .line 65
    const-wide/16 v14, 0x1f4

    .line 66
    .line 67
    if-gtz v0, :cond_2

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    sub-long v1, p0, v14

    .line 75
    .line 76
    div-long/2addr v1, v12

    .line 77
    invoke-static {v1, v2, v11, v0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const-wide/32 v16, 0xf404c

    .line 83
    .line 84
    .line 85
    cmp-long v0, p0, v16

    .line 86
    .line 87
    if-gez v0, :cond_3

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    add-long v1, p0, v14

    .line 95
    .line 96
    div-long/2addr v1, v12

    .line 97
    invoke-static {v1, v2, v11, v0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    const-wide/32 v11, 0x3b9328e0

    .line 103
    .line 104
    .line 105
    cmp-long v0, p0, v11

    .line 106
    .line 107
    if-gez v0, :cond_4

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    add-long v1, p0, v9

    .line 115
    .line 116
    div-long/2addr v1, v7

    .line 117
    invoke-static {v1, v2, v6, v0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    add-long v4, p0, v4

    .line 128
    .line 129
    div-long/2addr v4, v2

    .line 130
    invoke-static {v4, v5, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_0
    const/4 v1, 0x1

    .line 135
    new-array v2, v1, [Ljava/lang/Object;

    .line 136
    .line 137
    const/4 v3, 0x0

    .line 138
    aput-object v0, v2, v3

    .line 139
    .line 140
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v1, "%6s"

    .line 145
    .line 146
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    return-object v0
.end method

.method public static final fromNetworkRequest$work_runtime_release(Landroidx/work/impl/utils/NetworkRequestCompat;)[B
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    new-array p0, v2, [B

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/work/impl/utils/NetworkRequestCompat;->wrapped:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroid/net/NetworkRequest;

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    new-array p0, v2, [B

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    .line 29
    .line 30
    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    const/16 v4, 0x1f

    .line 34
    .line 35
    if-lt v0, v4, :cond_2

    .line 36
    .line 37
    :try_start_1
    invoke-static {p0}, Landroidx/work/impl/utils/NetworkRequest31;->transportTypes(Landroid/net/NetworkRequest;)[I

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/16 v0, 0xa

    .line 43
    .line 44
    new-array v5, v0, [I

    .line 45
    .line 46
    fill-array-data v5, :array_0

    .line 47
    .line 48
    .line 49
    new-instance v6, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    move v7, v2

    .line 55
    :goto_0
    if-ge v7, v0, :cond_4

    .line 56
    .line 57
    aget v8, v5, v7

    .line 58
    .line 59
    invoke-static {p0, v8}, Landroidx/work/impl/utils/Api28Impl;->hasTransport$work_runtime_release(Landroid/net/NetworkRequest;I)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_3

    .line 64
    .line 65
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/ArrayList;)[I

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .line 81
    if-lt v5, v4, :cond_5

    .line 82
    .line 83
    invoke-static {p0}, Landroidx/work/impl/utils/NetworkRequest31;->capabilities(Landroid/net/NetworkRequest;)[I

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    goto :goto_3

    .line 88
    :cond_5
    const/16 v4, 0x1e

    .line 89
    .line 90
    new-array v5, v4, [I

    .line 91
    .line 92
    fill-array-data v5, :array_1

    .line 93
    .line 94
    .line 95
    new-instance v6, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    move v7, v2

    .line 101
    :goto_2
    if-ge v7, v4, :cond_7

    .line 102
    .line 103
    aget v8, v5, v7

    .line 104
    .line 105
    invoke-static {p0, v8}, Landroidx/work/impl/utils/Api28Impl;->hasCapability$work_runtime_release(Landroid/net/NetworkRequest;I)Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-eqz v9, :cond_6

    .line 110
    .line 111
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/ArrayList;)[I

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    :goto_3
    array-length v4, v0

    .line 126
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 127
    .line 128
    .line 129
    array-length v4, v0

    .line 130
    move v5, v2

    .line 131
    :goto_4
    if-ge v5, v4, :cond_8

    .line 132
    .line 133
    aget v6, v0, v5

    .line 134
    .line 135
    invoke-virtual {v3, v6}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto :goto_6

    .line 143
    :cond_8
    array-length v0, p0

    .line 144
    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 145
    .line 146
    .line 147
    array-length v0, p0

    .line 148
    :goto_5
    if-ge v2, v0, :cond_9

    .line 149
    .line 150
    aget v4, p0, v2

    .line 151
    .line 152
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .line 154
    .line 155
    add-int/lit8 v2, v2, 0x1

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_9
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    return-object p0

    .line 172
    :catchall_1
    move-exception p0

    .line 173
    goto :goto_7

    .line 174
    :goto_6
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 175
    :catchall_2
    move-exception v0

    .line 176
    :try_start_4
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    :goto_7
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 181
    :catchall_3
    move-exception v0

    .line 182
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    nop

    .line 187
    :array_0
    .array-data 4
        0x2
        0x0
        0x3
        0x6
        0xa
        0x9
        0x8
        0x4
        0x1
        0x5
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_1
    .array-data 4
        0x11
        0x5
        0x2
        0xa
        0x1d
        0x13
        0x3
        0x20
        0x7
        0x4
        0xc
        0x24
        0x17
        0x0
        0x21
        0x14
        0xb
        0xd
        0x12
        0x15
        0xf
        0x23
        0x22
        0x8
        0x1
        0x19
        0xe
        0x10
        0x6
        0x9
    .end array-data
.end method

.method public static final getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Landroidx/compose/ui/autofill/AndroidContentType;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidContentType;->androidAutofillHints:Ljava/util/Set;

    .line 7
    .line 8
    check-cast p0, Ljava/util/Collection;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, [Ljava/lang/String;

    .line 18
    .line 19
    return-object p0
.end method

.method public static getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
    .locals 3

    .line 1
    new-instance v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/concurrent/futures/ResolvableFuture;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 12
    .line 13
    new-instance v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    .line 25
    .line 26
    :try_start_0
    invoke-interface {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;->attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    iput-object p0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object v1

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v1

    .line 38
    :goto_0
    iget-object v0, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method public static getIntentByLink(Landroid/content/Context;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/extractor/StreamingService;->getLinkTypeByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget p1, p1, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 10
    .line 11
    invoke-static {p0, p2, p1, v0}, Landroidx/sqlite/SQLite;->getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Url not known to service. service="

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " url="

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public static getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/xwray/groupie/Group;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    if-le v2, p0, :cond_0

    .line 24
    .line 25
    sub-int/2addr p0, v0

    .line 26
    invoke-interface {v1, p0}, Lcom/xwray/groupie/Group;->getItem(I)Lcom/xwray/groupie/Item;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    move v0, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string p1, " but there are only "

    .line 34
    .line 35
    const-string v1, " items"

    .line 36
    .line 37
    const-string v2, "Wanted item at "

    .line 38
    .line 39
    invoke-static {v2, p0, p1, v0, v1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/String;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public static getItemCount(Ljava/util/Collection;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/xwray/groupie/Group;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/xwray/groupie/Group;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v0
.end method

.method public static getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lorg/schabi/newpipe/MainActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "key_service_id"

    .line 9
    .line 10
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "key_url"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p0, "key_link_type"

    .line 19
    .line 20
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-static {p2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/16 v1, 0x1b

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    const-string p0, "play_queue_key"

    .line 29
    .line 30
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "player_type"

    .line 35
    .line 36
    sget-object p2, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string/jumbo p1, "should_start_foreground_extra"

    .line 43
    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "player_intent_type"

    .line 51
    .line 52
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public static gotoMainFragment(Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const-string v2, "main_fragment_tag"

    .line 4
    .line 5
    invoke-virtual {p0, v1, v0, v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(IILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/sqlite/SQLite;->openMainFragment(Landroidx/fragment/app/FragmentManager;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static final intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string v0, "Could not convert "

    .line 10
    .line 11
    const-string v1, " to BackoffPolicy"

    .line 12
    .line 13
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_1
    sget-object p0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final intToNetworkType(I)Landroidx/work/NetworkType;
    .locals 2

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x1e

    .line 18
    .line 19
    if-lt v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    sget-object p0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string v0, "Could not convert "

    .line 28
    .line 29
    const-string v1, " to NetworkType"

    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_1
    sget-object p0, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    sget-object p0, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_3
    sget-object p0, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_4
    sget-object p0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_5
    sget-object p0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    .line 53
    .line 54
    return-object p0
.end method

.method public static final intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string v0, "Could not convert "

    .line 10
    .line 11
    const-string v1, " to OutOfQuotaPolicy"

    .line 12
    .line 13
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_1
    sget-object p0, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final intToState(I)Landroidx/work/WorkInfo$State;
    .locals 2

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    sget-object p0, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string v0, "Could not convert "

    .line 22
    .line 23
    const-string v1, " to State"

    .line 24
    .line 25
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    :cond_1
    sget-object p0, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    sget-object p0, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_3
    sget-object p0, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_4
    sget-object p0, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_5
    sget-object p0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 47
    .line 48
    return-object p0
.end method

.method public static isTrue(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p1, Lorg/jsoup/helper/ValidationException;

    .line 13
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method

.method public static isTrue(Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 5
    .line 6
    const-string v0, "Must be true"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public static iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v0, p0}, Lkotlin/text/UStringsKt;->createCoroutineUnintercepted(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)Lkotlin/coroutines/Continuation;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    return-object v0
.end method

.method public static matchToClosingBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    .line 1
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_2a

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/2addr v2, v0

    .line 12
    move-object/from16 v0, p0

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lokhttp3/ConnectionPool;

    .line 24
    .line 25
    const/16 v4, 0x1c

    .line 26
    .line 27
    invoke-direct {v3, v4}, Lokhttp3/ConnectionPool;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iget-object v4, v3, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, [Lokio/PriorityQueue;

    .line 33
    .line 34
    new-instance v5, Ljava/util/Stack;

    .line 35
    .line 36
    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v6, Ljava/util/Stack;

    .line 40
    .line 41
    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    move v8, v7

    .line 46
    :goto_0
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    :goto_1
    sget-object v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 51
    .line 52
    if-eq v9, v10, :cond_0

    .line 53
    .line 54
    sget-object v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 55
    .line 56
    if-ne v9, v10, :cond_1

    .line 57
    .line 58
    :cond_0
    move-object/from16 v19, v4

    .line 59
    .line 60
    move v11, v7

    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    goto/16 :goto_18

    .line 64
    .line 65
    :cond_1
    sget-object v14, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 66
    .line 67
    sget-object v15, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 68
    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 72
    .line 73
    const/16 p0, 0x2

    .line 74
    .line 75
    sget-object v12, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 76
    .line 77
    if-eq v9, v12, :cond_2

    .line 78
    .line 79
    if-ne v9, v1, :cond_10

    .line 80
    .line 81
    :cond_2
    aget-object v13, v4, v7

    .line 82
    .line 83
    if-eqz v13, :cond_8

    .line 84
    .line 85
    const/16 v17, 0x1

    .line 86
    .line 87
    iget-object v11, v13, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v11, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 90
    .line 91
    iget-boolean v7, v11, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isKeyw:Z

    .line 92
    .line 93
    if-eqz v7, :cond_5

    .line 94
    .line 95
    sget-object v7, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 96
    .line 97
    if-eq v11, v7, :cond_4

    .line 98
    .line 99
    :cond_3
    :goto_2
    move/from16 v7, v17

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    const/4 v7, 0x0

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    if-ne v11, v15, :cond_6

    .line 105
    .line 106
    instance-of v7, v13, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    .line 107
    .line 108
    if-eqz v7, :cond_6

    .line 109
    .line 110
    check-cast v13, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    .line 111
    .line 112
    iget-object v7, v13, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    .line 113
    .line 114
    iget-boolean v7, v7, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;->conditional:Z

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    if-ne v11, v14, :cond_7

    .line 118
    .line 119
    instance-of v7, v13, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    .line 120
    .line 121
    if-eqz v7, :cond_7

    .line 122
    .line 123
    check-cast v13, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    .line 124
    .line 125
    iget-object v7, v13, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;->brace:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    .line 126
    .line 127
    iget-boolean v11, v7, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->isBlock:Z

    .line 128
    .line 129
    if-eqz v11, :cond_4

    .line 130
    .line 131
    iget-object v7, v7, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    .line 132
    .line 133
    if-eqz v7, :cond_3

    .line 134
    .line 135
    iget-boolean v7, v7, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;->funcExpr:Z

    .line 136
    .line 137
    xor-int/lit8 v7, v7, 0x1

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_7
    iget-boolean v7, v11, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isPunct:Z

    .line 141
    .line 142
    if-eqz v7, :cond_4

    .line 143
    .line 144
    sget-object v7, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 145
    .line 146
    if-eq v11, v7, :cond_4

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_8
    const/16 v17, 0x1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :goto_3
    if-eqz v7, :cond_10

    .line 153
    .line 154
    iget v7, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 155
    .line 156
    const/4 v11, 0x0

    .line 157
    iput v11, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 158
    .line 159
    const-string v13, "msg.unterminated.re.lit"

    .line 160
    .line 161
    if-ne v9, v1, :cond_9

    .line 162
    .line 163
    const/16 v1, 0x3d

    .line 164
    .line 165
    invoke-virtual {v2, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 166
    .line 167
    .line 168
    move/from16 v1, v17

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_9
    if-eq v9, v12, :cond_a

    .line 172
    .line 173
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 174
    .line 175
    .line 176
    :cond_a
    move/from16 v1, v17

    .line 177
    .line 178
    invoke-virtual {v2, v1, v11}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    invoke-virtual {v2, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    .line 183
    .line 184
    .line 185
    const/16 v12, 0x2a

    .line 186
    .line 187
    if-eq v9, v12, :cond_17

    .line 188
    .line 189
    :goto_4
    move v9, v11

    .line 190
    :goto_5
    invoke-virtual {v2, v1, v11}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    const/16 v11, 0x2f

    .line 195
    .line 196
    const/4 v1, -0x1

    .line 197
    if-ne v12, v11, :cond_11

    .line 198
    .line 199
    if-eqz v9, :cond_b

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_b
    :goto_6
    const/4 v9, 0x1

    .line 203
    invoke-virtual {v2, v9, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    const-string v9, "gimysu"

    .line 208
    .line 209
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    if-eq v9, v1, :cond_c

    .line 214
    .line 215
    invoke-virtual {v2, v11}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_c
    const/16 v1, 0x5a

    .line 220
    .line 221
    if-gt v11, v1, :cond_d

    .line 222
    .line 223
    const/16 v1, 0x41

    .line 224
    .line 225
    if-le v1, v11, :cond_e

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_d
    const/16 v1, 0x61

    .line 229
    .line 230
    if-gt v1, v11, :cond_f

    .line 231
    .line 232
    const/16 v1, 0x7a

    .line 233
    .line 234
    if-le v11, v1, :cond_e

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_e
    const-string v0, "msg.invalid.re.flag"

    .line 238
    .line 239
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return-object v16

    .line 243
    :cond_f
    :goto_7
    invoke-virtual {v2, v11}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 244
    .line 245
    .line 246
    iget v1, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 247
    .line 248
    add-int/2addr v7, v1

    .line 249
    add-int/lit8 v7, v7, 0x2

    .line 250
    .line 251
    iput v7, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 252
    .line 253
    sget-object v9, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->REGEXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 254
    .line 255
    :cond_10
    move-object/from16 v19, v4

    .line 256
    .line 257
    goto :goto_a

    .line 258
    :cond_11
    :goto_8
    const/16 v11, 0xa

    .line 259
    .line 260
    if-eq v12, v11, :cond_16

    .line 261
    .line 262
    if-eq v12, v1, :cond_16

    .line 263
    .line 264
    const/16 v1, 0x5c

    .line 265
    .line 266
    if-ne v12, v1, :cond_13

    .line 267
    .line 268
    invoke-virtual {v2, v12}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 269
    .line 270
    .line 271
    move-object/from16 v19, v4

    .line 272
    .line 273
    const/4 v1, 0x1

    .line 274
    const/4 v12, 0x0

    .line 275
    invoke-virtual {v2, v1, v12}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    if-eq v4, v11, :cond_12

    .line 280
    .line 281
    const/4 v1, -0x1

    .line 282
    if-eq v4, v1, :cond_12

    .line 283
    .line 284
    move v12, v4

    .line 285
    goto :goto_9

    .line 286
    :cond_12
    invoke-static {v13}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-object v16

    .line 290
    :cond_13
    move-object/from16 v19, v4

    .line 291
    .line 292
    const/16 v1, 0x5b

    .line 293
    .line 294
    if-ne v12, v1, :cond_14

    .line 295
    .line 296
    const/4 v9, 0x1

    .line 297
    goto :goto_9

    .line 298
    :cond_14
    const/16 v1, 0x5d

    .line 299
    .line 300
    if-ne v12, v1, :cond_15

    .line 301
    .line 302
    const/4 v9, 0x0

    .line 303
    :cond_15
    :goto_9
    invoke-virtual {v2, v12}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 304
    .line 305
    .line 306
    move-object/from16 v4, v19

    .line 307
    .line 308
    const/4 v1, 0x1

    .line 309
    const/4 v11, 0x0

    .line 310
    goto :goto_5

    .line 311
    :cond_16
    invoke-static {v13}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    return-object v16

    .line 315
    :cond_17
    iget v0, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 316
    .line 317
    const/16 v17, 0x1

    .line 318
    .line 319
    add-int/lit8 v0, v0, -0x1

    .line 320
    .line 321
    iput v0, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 322
    .line 323
    invoke-static {v13}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    return-object v16

    .line 327
    :goto_a
    iget v1, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 328
    .line 329
    iget v4, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 330
    .line 331
    iget-boolean v7, v9, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isPunct:Z

    .line 332
    .line 333
    sget-object v11, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 334
    .line 335
    if-eqz v7, :cond_18

    .line 336
    .line 337
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    packed-switch v7, :pswitch_data_0

    .line 342
    .line 343
    .line 344
    :cond_18
    const/16 v17, 0x1

    .line 345
    .line 346
    goto/16 :goto_15

    .line 347
    .line 348
    :pswitch_0
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 349
    .line 350
    .line 351
    move-result v7

    .line 352
    if-nez v7, :cond_19

    .line 353
    .line 354
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    .line 355
    .line 356
    iget v7, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    .line 357
    .line 358
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v10

    .line 362
    check-cast v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    .line 363
    .line 364
    invoke-direct {v1, v15, v7, v10}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3, v1}, Lokhttp3/ConnectionPool;->push(Lokio/PriorityQueue;)V

    .line 368
    .line 369
    .line 370
    :goto_b
    const/16 v17, 0x1

    .line 371
    .line 372
    goto/16 :goto_16

    .line 373
    .line 374
    :cond_19
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 375
    .line 376
    const-string/jumbo v2, "unmatched closing paren at "

    .line 377
    .line 378
    .line 379
    invoke-static {v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v0

    .line 387
    :pswitch_1
    const/16 v18, 0x0

    .line 388
    .line 389
    aget-object v1, v19, v18

    .line 390
    .line 391
    sget-object v7, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 392
    .line 393
    sget-object v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 394
    .line 395
    sget-object v12, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 396
    .line 397
    if-eqz v1, :cond_1b

    .line 398
    .line 399
    iget-object v13, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v13, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 402
    .line 403
    if-ne v13, v12, :cond_1b

    .line 404
    .line 405
    const/16 v17, 0x1

    .line 406
    .line 407
    aget-object v12, v19, v17

    .line 408
    .line 409
    if-eqz v12, :cond_1c

    .line 410
    .line 411
    iget-object v12, v12, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v12, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 414
    .line 415
    iget-boolean v13, v12, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isOp:Z

    .line 416
    .line 417
    if-nez v13, :cond_1a

    .line 418
    .line 419
    if-eq v12, v10, :cond_1a

    .line 420
    .line 421
    if-ne v12, v7, :cond_1c

    .line 422
    .line 423
    :cond_1a
    :goto_c
    const/4 v7, 0x1

    .line 424
    goto :goto_d

    .line 425
    :cond_1b
    const/16 v17, 0x1

    .line 426
    .line 427
    aget-object v13, v19, v17

    .line 428
    .line 429
    if-eqz v13, :cond_1c

    .line 430
    .line 431
    iget-object v13, v13, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v13, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 434
    .line 435
    if-ne v13, v12, :cond_1c

    .line 436
    .line 437
    aget-object v12, v19, p0

    .line 438
    .line 439
    if-eqz v12, :cond_1c

    .line 440
    .line 441
    iget-object v12, v12, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v12, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 444
    .line 445
    iget-boolean v13, v12, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isOp:Z

    .line 446
    .line 447
    if-nez v13, :cond_1a

    .line 448
    .line 449
    if-eq v12, v10, :cond_1a

    .line 450
    .line 451
    if-ne v12, v7, :cond_1c

    .line 452
    .line 453
    goto :goto_c

    .line 454
    :cond_1c
    const/4 v7, 0x0

    .line 455
    :goto_d
    if-eqz v1, :cond_1e

    .line 456
    .line 457
    iget-object v1, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 460
    .line 461
    sget-object v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 462
    .line 463
    if-eq v1, v10, :cond_1d

    .line 464
    .line 465
    sget-object v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 466
    .line 467
    if-eq v1, v10, :cond_1d

    .line 468
    .line 469
    sget-object v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WHILE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 470
    .line 471
    if-eq v1, v10, :cond_1d

    .line 472
    .line 473
    sget-object v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WITH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 474
    .line 475
    if-ne v1, v10, :cond_1e

    .line 476
    .line 477
    :cond_1d
    const/4 v1, 0x1

    .line 478
    goto :goto_e

    .line 479
    :cond_1e
    const/4 v1, 0x0

    .line 480
    :goto_e
    new-instance v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    .line 481
    .line 482
    invoke-direct {v10, v7, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;-><init>(ZZ)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v6, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    .line 489
    .line 490
    sget-object v7, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 491
    .line 492
    iget v12, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    .line 493
    .line 494
    invoke-direct {v1, v7, v12, v10}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v3, v1}, Lokhttp3/ConnectionPool;->push(Lokio/PriorityQueue;)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_b

    .line 501
    .line 502
    :pswitch_2
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 503
    .line 504
    .line 505
    move-result v7

    .line 506
    if-nez v7, :cond_1f

    .line 507
    .line 508
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    .line 509
    .line 510
    iget v7, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    .line 511
    .line 512
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v10

    .line 516
    check-cast v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    .line 517
    .line 518
    invoke-direct {v1, v14, v7, v10}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3, v1}, Lokhttp3/ConnectionPool;->push(Lokio/PriorityQueue;)V

    .line 522
    .line 523
    .line 524
    goto/16 :goto_b

    .line 525
    .line 526
    :cond_1f
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 527
    .line 528
    const-string/jumbo v2, "unmatched closing brace at "

    .line 529
    .line 530
    .line 531
    invoke-static {v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    throw v0

    .line 539
    :pswitch_3
    const/16 v18, 0x0

    .line 540
    .line 541
    aget-object v1, v19, v18

    .line 542
    .line 543
    if-eqz v1, :cond_24

    .line 544
    .line 545
    iget-object v1, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 546
    .line 547
    check-cast v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 548
    .line 549
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    const/4 v7, 0x3

    .line 554
    if-eq v1, v7, :cond_20

    .line 555
    .line 556
    const/16 v7, 0x27

    .line 557
    .line 558
    if-eq v1, v7, :cond_20

    .line 559
    .line 560
    const/16 v7, 0x2e

    .line 561
    .line 562
    if-eq v1, v7, :cond_22

    .line 563
    .line 564
    const/16 v7, 0x30

    .line 565
    .line 566
    if-eq v1, v7, :cond_22

    .line 567
    .line 568
    const/16 v7, 0x41

    .line 569
    .line 570
    if-eq v1, v7, :cond_21

    .line 571
    .line 572
    const/16 v7, 0x4d

    .line 573
    .line 574
    if-eq v1, v7, :cond_22

    .line 575
    .line 576
    const/16 v7, 0x5f

    .line 577
    .line 578
    if-eq v1, v7, :cond_20

    .line 579
    .line 580
    const/16 v18, 0x0

    .line 581
    .line 582
    aget-object v1, v19, v18

    .line 583
    .line 584
    iget-object v1, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 587
    .line 588
    iget-boolean v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isOp:Z

    .line 589
    .line 590
    const/16 v17, 0x1

    .line 591
    .line 592
    xor-int/lit8 v1, v1, 0x1

    .line 593
    .line 594
    :goto_f
    const/16 v17, 0x1

    .line 595
    .line 596
    :goto_10
    const/16 v18, 0x0

    .line 597
    .line 598
    goto :goto_13

    .line 599
    :cond_20
    const/16 v17, 0x1

    .line 600
    .line 601
    goto :goto_11

    .line 602
    :cond_21
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    if-nez v1, :cond_22

    .line 607
    .line 608
    invoke-virtual {v5}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    check-cast v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    .line 613
    .line 614
    iget-boolean v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->isBlock:Z

    .line 615
    .line 616
    if-eqz v1, :cond_22

    .line 617
    .line 618
    const/4 v1, 0x1

    .line 619
    goto :goto_f

    .line 620
    :cond_22
    const/4 v1, 0x0

    .line 621
    goto :goto_f

    .line 622
    :goto_11
    aget-object v1, v19, v17

    .line 623
    .line 624
    if-eqz v1, :cond_23

    .line 625
    .line 626
    iget v1, v1, Lokio/PriorityQueue;->size:I

    .line 627
    .line 628
    iget v7, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    .line 629
    .line 630
    if-eq v1, v7, :cond_23

    .line 631
    .line 632
    goto :goto_12

    .line 633
    :cond_23
    const/4 v1, 0x0

    .line 634
    goto :goto_10

    .line 635
    :cond_24
    const/16 v17, 0x1

    .line 636
    .line 637
    :goto_12
    move/from16 v1, v17

    .line 638
    .line 639
    goto :goto_10

    .line 640
    :goto_13
    aget-object v7, v19, v18

    .line 641
    .line 642
    instance-of v10, v7, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    .line 643
    .line 644
    if-eqz v10, :cond_25

    .line 645
    .line 646
    iget-object v10, v7, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 649
    .line 650
    if-ne v10, v15, :cond_25

    .line 651
    .line 652
    check-cast v7, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    .line 653
    .line 654
    iget-object v7, v7, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    .line 655
    .line 656
    goto :goto_14

    .line 657
    :cond_25
    move-object/from16 v7, v16

    .line 658
    .line 659
    :goto_14
    new-instance v10, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    .line 660
    .line 661
    invoke-direct {v10, v1, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;-><init>(ZLorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v5, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    .line 668
    .line 669
    iget v7, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    .line 670
    .line 671
    invoke-direct {v1, v11, v7, v10}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v3, v1}, Lokhttp3/ConnectionPool;->push(Lokio/PriorityQueue;)V

    .line 675
    .line 676
    .line 677
    goto :goto_16

    .line 678
    :goto_15
    if-eq v9, v10, :cond_26

    .line 679
    .line 680
    new-instance v1, Lokio/PriorityQueue;

    .line 681
    .line 682
    iget v7, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    .line 683
    .line 684
    const/16 v10, 0xc

    .line 685
    .line 686
    invoke-direct {v1, v9, v7, v10}, Lokio/PriorityQueue;-><init>(Ljava/lang/Object;II)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v3, v1}, Lokhttp3/ConnectionPool;->push(Lokio/PriorityQueue;)V

    .line 690
    .line 691
    .line 692
    :cond_26
    :goto_16
    if-ne v9, v11, :cond_27

    .line 693
    .line 694
    move/from16 v8, v17

    .line 695
    .line 696
    const/4 v11, 0x0

    .line 697
    goto :goto_17

    .line 698
    :cond_27
    if-eqz v8, :cond_28

    .line 699
    .line 700
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    if-eqz v1, :cond_28

    .line 705
    .line 706
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    if-eqz v1, :cond_28

    .line 711
    .line 712
    const/4 v11, 0x0

    .line 713
    invoke-virtual {v0, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    return-object v0

    .line 718
    :cond_28
    const/4 v11, 0x0

    .line 719
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 720
    .line 721
    if-eq v9, v1, :cond_29

    .line 722
    .line 723
    :goto_17
    move v7, v11

    .line 724
    move-object/from16 v4, v19

    .line 725
    .line 726
    goto/16 :goto_0

    .line 727
    .line 728
    :cond_29
    const-string v0, "Could not find matching braces"

    .line 729
    .line 730
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    return-object v16

    .line 734
    :goto_18
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 735
    .line 736
    .line 737
    move-result-object v9

    .line 738
    move v7, v11

    .line 739
    move-object/from16 v4, v19

    .line 740
    .line 741
    goto/16 :goto_1

    .line 742
    .line 743
    :cond_2a
    const/16 v16, 0x0

    .line 744
    .line 745
    const-string v0, "Start not found"

    .line 746
    .line 747
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    return-object v16

    .line 751
    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final networkTypeToInt(Landroidx/work/NetworkType;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v2, 0x1e

    .line 26
    .line 27
    if-lt v0, v2, :cond_0

    .line 28
    .line 29
    sget-object v0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    .line 30
    .line 31
    if-ne p0, v0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x5

    .line 34
    return p0

    .line 35
    :cond_0
    const-string v0, "Could not convert "

    .line 36
    .line 37
    const-string v2, " to int"

    .line 38
    .line 39
    invoke-static {p0, v2, v0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_1
    return v2

    .line 44
    :cond_2
    return v1
.end method

.method public static notEmpty(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 11
    .line 12
    const-string v0, "String must not be empty"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public static notEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method public static notNull(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 5
    .line 6
    const-string v0, "Object must not be null"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public static openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p2, p1, p3}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->getInstance(Ljava/lang/String;ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a01a9

    .line 10
    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p3}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static openCommentAuthorIfPresent(Landroidx/fragment/app/FragmentActivity;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, v1, v2, p1}, Landroidx/sqlite/SQLite;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p1

    .line 33
    const-string v0, "Opening channel fragment"

    .line 34
    .line 35
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static openDownloads(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const/16 v0, 0x309

    .line 2
    .line 3
    invoke-static {p0, v0}, Lus/shandian/giga/util/Utility;->checkStoragePermissions(Landroid/app/Activity;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-class v1, Lorg/schabi/newpipe/download/DownloadActivity;

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static openFeedFragment(Landroidx/fragment/app/FragmentManager;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p3, p1, p2}, Lorg/schabi/newpipe/local/feed/FeedFragment;->newInstance(Ljava/lang/String;J)Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a01a9

    .line 10
    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p3}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static openMainFragment(Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache;->INSTANCE:Lorg/schabi/newpipe/util/InfoCache;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/util/InfoCache;->removeStaleCache()V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x1e

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v1, -0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v1, v0, v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(IILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance v0, Lorg/schabi/newpipe/fragments/MainFragment;

    .line 29
    .line 30
    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/MainFragment;-><init>()V

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a01a9

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1, v0, v2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "main_fragment_tag"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0
.end method

.method public static openPlaylistFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2, p1, p3}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->setInitialData(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a01a9

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, p2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static openSearchFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getInstance(ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x0

    .line 10
    const v0, 0x7f0a01a9

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, p2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "search_fragment_tag"

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 10

    .line 1
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getType()Lorg/schabi/newpipe/player/PlayerType;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isAutoplayAllowedByUser(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    move v2, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz p6, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 29
    .line 30
    const/16 v3, 0x11

    .line 31
    .line 32
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    .line 53
    .line 54
    if-ne v5, v1, :cond_2

    .line 55
    .line 56
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isAutoplayAllowedByUser(Landroid/content/Context;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move v2, v0

    .line 62
    :goto_1
    new-instance v1, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;

    .line 63
    .line 64
    move-object v6, p0

    .line 65
    move v7, p2

    .line 66
    move-object v4, p3

    .line 67
    move-object v8, p4

    .line 68
    move-object v9, p5

    .line 69
    move/from16 v3, p6

    .line 70
    .line 71
    invoke-direct/range {v1 .. v9}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;-><init>(ZZLjava/lang/String;Lorg/schabi/newpipe/player/PlayerType;Landroid/content/Context;ILjava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 72
    .line 73
    .line 74
    const p0, 0x7f0a01aa

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    instance-of v3, p3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    check-cast p3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 92
    .line 93
    invoke-virtual {v1, p3}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;->run(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    new-instance p3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 98
    .line 99
    invoke-direct {p3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;-><init>()V

    .line 100
    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p3, p2, v3, p4, p5}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setAutoPlay(Z)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1, p0, p3, v3}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 117
    .line 118
    const/16 p2, 0x18

    .line 119
    .line 120
    invoke-direct {p0, v1, p3, p2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/BackStackRecord;->runOnCommitInternal(ZLjava/lang/Runnable;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public static playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 2

    .line 1
    const v0, 0x7f130060

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10
    .line 11
    .line 12
    const-class v0, Lorg/schabi/newpipe/player/PlayerService;

    .line 13
    .line 14
    sget-object v1, Lorg/schabi/newpipe/player/PlayerIntentType;->AllOthers:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 15
    .line 16
    invoke-static {p0, v0, p1, v1}, Landroidx/sqlite/SQLite;->getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "player_type"

    .line 21
    .line 22
    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "resume_playback"

    .line 29
    .line 30
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Lcoil3/decode/StaticImageDecoderKt;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static playOnExternalPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)V
    .locals 5

    .line 1
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_9

    .line 11
    .line 12
    sget-object v1, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    if-eq v0, v3, :cond_2

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    if-eq v0, v3, :cond_1

    .line 32
    .line 33
    const-string v0, ""

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "application/vnd.ms-sstr+xml"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string v0, "application/x-mpegURL"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const-string v0, "application/dash+xml"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_7

    .line 50
    .line 51
    instance-of v0, p3, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    const-string v0, "audio/*"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    instance-of v0, p3, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    const-string/jumbo v0, "video/*"

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    return-void

    .line 67
    :cond_7
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 72
    .line 73
    :goto_0
    new-instance v3, Landroid/content/Intent;

    .line 74
    .line 75
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "android.intent.action.VIEW"

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {v3, p3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    const-string p3, "android.intent.extra.TITLE"

    .line 95
    .line 96
    invoke-virtual {v3, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    const-string/jumbo p3, "title"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    const-string p1, "artist"

    .line 106
    .line 107
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    const/high16 p1, 0x10000000

    .line 111
    .line 112
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catch_0
    instance-of p1, p0, Landroid/app/Activity;

    .line 120
    .line 121
    if-eqz p1, :cond_8

    .line 122
    .line 123
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 124
    .line 125
    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    const p2, 0x7f13036a

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 132
    .line 133
    .line 134
    new-instance p2, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda3;

    .line 135
    .line 136
    invoke-direct {p2, p0, v1}, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;I)V

    .line 137
    .line 138
    .line 139
    const p0, 0x7f13022a

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    new-instance p1, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;

    .line 147
    .line 148
    invoke-direct {p1, v2}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;-><init>(I)V

    .line 149
    .line 150
    .line 151
    const p2, 0x7f130076

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_8
    const p1, 0x7f13036b

    .line 163
    .line 164
    .line 165
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_9
    :goto_1
    const p1, 0x7f130454

    .line 174
    .line 175
    .line 176
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public static playOnMainPlayer(Landroid/content/ContextWrapper;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v3, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 20
    .line 21
    invoke-static {p0, v2, v1, v3}, Landroidx/sqlite/SQLite;->getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/high16 v2, 0x10000000

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "key_title"

    .line 32
    .line 33
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string/jumbo v1, "switching_players"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    sget-object v0, Lorg/schabi/newpipe/util/SerializedCache;->INSTANCE:Lorg/schabi/newpipe/util/SerializedCache;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lorg/schabi/newpipe/util/SerializedCache;->put(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    const-string v0, "play_queue_key"

    .line 56
    .line 57
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public static playOnPopupPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Lus/shandian/giga/util/Utility;->isPopupEnabledElseAsk(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const v0, 0x7f1303e2

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 17
    .line 18
    .line 19
    const-class v0, Lorg/schabi/newpipe/player/PlayerService;

    .line 20
    .line 21
    sget-object v1, Lorg/schabi/newpipe/player/PlayerIntentType;->AllOthers:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 22
    .line 23
    invoke-static {p0, v0, p1, v1}, Landroidx/sqlite/SQLite;->getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "player_type"

    .line 28
    .line 29
    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "resume_playback"

    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Lcoil3/decode/StaticImageDecoderKt;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static final resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F
    .locals 4

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x100000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    float-to-double v0, v0

    .line 21
    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmpl-double v0, v0, v2

    .line 27
    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    invoke-interface {p3, p2}, Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(F)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    div-float/2addr p0, p1

    .line 43
    :goto_0
    mul-float/2addr p0, p2

    .line 44
    return p0

    .line 45
    :cond_0
    invoke-interface {p3, p0, p1}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_1
    const-wide v2, 0x200000000L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 67
    .line 68
    return p0
.end method

.method public static restartApp(Landroid/app/Activity;)V
    .locals 4

    .line 1
    sget-object v0, Lnet/newpipe/app/AppKt;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const-class v0, Lnet/newpipe/app/AppKt;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v2, Lnet/newpipe/app/AppKt;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lnet/newpipe/app/AppKt;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->close()V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lnet/newpipe/app/AppKt;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    goto :goto_2

    .line 28
    :goto_1
    monitor-exit v0

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "android.software.leanback"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :cond_2
    if-nez v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_3
    if-eqz v1, :cond_4

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    new-array v0, v0, [Landroid/content/Intent;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    aput-object v1, v0, v2

    .line 67
    .line 68
    aget-object v1, v0, v2

    .line 69
    .line 70
    const v2, 0x10008000

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    new-instance v1, Landroid/content/Intent;

    .line 77
    .line 78
    const-class v2, Lcom/jakewharton/processphoenix/PhoenixActivity;

    .line 79
    .line 80
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .line 82
    .line 83
    const/high16 v2, 0x10000000

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    const-string v2, "phoenix_restart_intents"

    .line 89
    .line 90
    new-instance v3, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    const-string v0, "phoenix_main_process_pid"

    .line 103
    .line 104
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    const-string p0, "Unable to determine default activity for "

    .line 116
    .line 117
    const-string v1, ". Does an activity specify the DEFAULT category in its intent filter?"

    .line 118
    .line 119
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public static final setColor-RPmYEkk(Landroid/text/Spannable;JII)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x10

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x21

    .line 17
    .line 18
    invoke-interface {p0, v0, p3, p4, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static final setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V
    .locals 6

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x100000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x21

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 19
    .line 20
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {v0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v0, p4, p5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-wide v4, 0x200000000L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    new-instance p3, Landroid/text/style/RelativeSizeSpan;

    .line 48
    .line 49
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-direct {p3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, p3, p4, p5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public static final setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x18

    .line 8
    .line 9
    if-lt v1, v2, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/compose/ui/text/intl/Locale;

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    new-array p1, p1, [Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, [Ljava/util/Locale;

    .line 52
    .line 53
    array-length v0, p1

    .line 54
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, [Ljava/util/Locale;

    .line 59
    .line 60
    invoke-static {p1}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Landroid/os/LocaleList;)Landroid/text/style/LocaleSpan;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    sget-object p1, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    .line 76
    .line 77
    invoke-interface {p1}, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :goto_1
    new-instance v0, Landroid/text/style/LocaleSpan;

    .line 91
    .line 92
    iget-object p1, p1, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    .line 95
    .line 96
    .line 97
    move-object p1, v0

    .line 98
    :goto_2
    const/16 v0, 0x21

    .line 99
    .line 100
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public static setOf(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public static final setOfTriggersToByteArray(Ljava/util/Set;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    new-array p0, p0, [B

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroidx/work/Constraints$ContentUriTrigger;

    .line 46
    .line 47
    iget-object v3, v2, Landroidx/work/Constraints$ContentUriTrigger;->uri:Landroid/net/Uri;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v2, v2, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants:Z

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :catchall_1
    move-exception p0

    .line 79
    goto :goto_2

    .line 80
    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 81
    :catchall_2
    move-exception v2

    .line 82
    :try_start_4
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    :goto_2
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 87
    :catchall_3
    move-exception v1

    .line 88
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v1
.end method

.method public static final stateToInt(Landroidx/work/WorkInfo$State;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq p0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq p0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq p0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    if-ne p0, v1, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 28
    .line 29
    .line 30
    return v0

    .line 31
    :cond_1
    return v1

    .line 32
    :cond_2
    return v0
.end method

.method public static final throwSQLiteException(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Error code: "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ", message: "

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance p1, Landroid/database/SQLException;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public static final toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    if-lt v0, v1, :cond_3

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_4

    .line 14
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    new-instance p0, Ljava/io/ObjectInputStream;

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    new-array v2, v1, [I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    move v4, v3

    .line 32
    :goto_0
    if-ge v4, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    aput v5, v2, v4

    .line 39
    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    new-array v4, v1, [I

    .line 50
    .line 51
    :goto_1
    if-ge v3, v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    aput v5, v4, v3

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {v4, v2}, Landroidx/work/impl/utils/Api28Impl;->createNetworkRequestCompat$work_runtime_release([I[I)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 63
    .line 64
    .line 65
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    goto :goto_3

    .line 75
    :goto_2
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 76
    :catchall_2
    move-exception v2

    .line 77
    :try_start_4
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    :goto_3
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 82
    :catchall_3
    move-exception v1

    .line 83
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_3
    :goto_4
    new-instance p0, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Landroid/net/NetworkRequest;)V

    .line 91
    .line 92
    .line 93
    return-object p0
.end method


# virtual methods
.method public beginCollection(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/sqlite/SQLite;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/sqlite/SQLite;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public abstract bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
.end method

.method public abstract calculateInnerMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method public abstract calculateSlideOffset(I)F
.end method

.method public abstract createQuery()Ljava/lang/String;
.end method

.method public abstract encodeBoolean(Z)V
.end method

.method public abstract encodeByte(B)V
.end method

.method public abstract encodeChar(C)V
.end method

.method public abstract encodeDouble(D)V
.end method

.method public abstract encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
.end method

.method public abstract encodeFloat(F)V
.end method

.method public encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public encodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Encoder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/sqlite/SQLite;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lkotlinx/serialization/internal/ListLikeDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/sqlite/SQLite;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public abstract encodeInt(I)V
.end method

.method public abstract encodeLong(J)V
.end method

.method public encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/sqlite/SQLite;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlinx/serialization/internal/StringSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Lkotlinx/serialization/encoding/Encoder;->encodeNull()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-interface {p0, v0, p3}, Lkotlinx/serialization/encoding/Encoder;->encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/sqlite/SQLite;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p3, p4}, Landroidx/sqlite/SQLite;->encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public abstract encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
.end method

.method public abstract encodeShort(S)V
.end method

.method public abstract encodeString(Ljava/lang/String;)V
.end method

.method public encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/sqlite/SQLite;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p3}, Landroidx/sqlite/SQLite;->encodeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract getCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method public abstract getExpandedOffset()I
.end method

.method public abstract getHiddenOffset()I
.end method

.method public abstract getMaxViewPositionHorizontal()I
.end method

.method public abstract getMinViewPositionHorizontal()I
.end method

.method public abstract getOuterEdge(Landroid/view/View;)I
.end method

.method public abstract getParentInnerEdge(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I
.end method

.method public abstract getSheetEdge()I
.end method

.method public handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/sqlite/SQLite;->createQuery()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    invoke-virtual {p0, v0, p2}, Landroidx/sqlite/SQLite;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    invoke-static {v0, p0}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :catchall_1
    move-exception p1

    .line 34
    invoke-static {v0, p0}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public abstract isExpandingOutwards(F)Z
.end method

.method public abstract isReleasedCloseToInnerEdge(Landroid/view/View;)Z
.end method

.method public abstract isSwipeSignificant(FF)Z
.end method

.method public abstract shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
.end method

.method public abstract shouldHide(Landroid/view/View;F)Z
.end method

.method public abstract updateCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;I)V
.end method

.method public abstract updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
.end method
