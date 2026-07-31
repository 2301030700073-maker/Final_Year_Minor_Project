.class public final Landroidx/compose/material3/TooltipKt$animateTooltip$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $transition:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->$transition:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object p0, p0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->$transition:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    .line 16
    .line 17
    move-object/from16 v0, p2

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    move-object/from16 v5, p3

    .line 22
    .line 23
    check-cast v5, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    and-int/lit8 v6, v5, 0x11

    .line 30
    .line 31
    if-eq v6, v1, :cond_0

    .line 32
    .line 33
    move v1, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, v4

    .line 36
    :goto_0
    and-int/2addr v3, v5

    .line 37
    invoke-virtual {v0, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 44
    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-object v2

    .line 57
    :pswitch_0
    move-object v0, p1

    .line 58
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 59
    .line 60
    iget-wide v5, v0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 61
    .line 62
    move-object/from16 v0, p2

    .line 63
    .line 64
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 65
    .line 66
    move-object/from16 v5, p3

    .line 67
    .line 68
    check-cast v5, Ljava/lang/Number;

    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    and-int/lit8 v6, v5, 0x11

    .line 75
    .line 76
    if-eq v6, v1, :cond_2

    .line 77
    .line 78
    move v4, v3

    .line 79
    :cond_2
    and-int/lit8 v1, v5, 0x1

    .line 80
    .line 81
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    const/16 v1, 0x30

    .line 90
    .line 91
    sget-object v3, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

    .line 92
    .line 93
    invoke-virtual {v3, p0, v0, v1}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->IconBox(Landroid/graphics/drawable/Drawable;Landroidx/compose/runtime/GapComposer;I)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 98
    .line 99
    .line 100
    :goto_2
    return-object v2

    .line 101
    :pswitch_1
    move-object v0, p1

    .line 102
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 103
    .line 104
    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 105
    .line 106
    move-object/from16 v5, p2

    .line 107
    .line 108
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 109
    .line 110
    move-object/from16 v6, p3

    .line 111
    .line 112
    check-cast v6, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    and-int/lit8 v7, v6, 0x6

    .line 119
    .line 120
    if-nez v7, :cond_5

    .line 121
    .line 122
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_4

    .line 127
    .line 128
    const/4 v7, 0x4

    .line 129
    goto :goto_3

    .line 130
    :cond_4
    const/4 v7, 0x2

    .line 131
    :goto_3
    or-int/2addr v6, v7

    .line 132
    :cond_5
    and-int/lit8 v7, v6, 0x13

    .line 133
    .line 134
    const/16 v8, 0x12

    .line 135
    .line 136
    if-eq v7, v8, :cond_6

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    move v3, v4

    .line 140
    :goto_4
    and-int/lit8 v4, v6, 0x1

    .line 141
    .line 142
    invoke-virtual {v5, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 149
    .line 150
    iget p0, p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->leadingIcon:I

    .line 151
    .line 152
    shl-int/lit8 v3, v6, 0x3

    .line 153
    .line 154
    and-int/lit8 v3, v3, 0x70

    .line 155
    .line 156
    invoke-static {p0, v0, v1, v5, v3}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->IconBox-RPmYEkk(IJLandroidx/compose/runtime/GapComposer;I)V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_7
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 161
    .line 162
    .line 163
    :goto_5
    return-object v2

    .line 164
    :pswitch_2
    move-object v6, p1

    .line 165
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 166
    .line 167
    move-object/from16 v12, p2

    .line 168
    .line 169
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 170
    .line 171
    move-object/from16 v0, p3

    .line 172
    .line 173
    check-cast v0, Ljava/lang/Number;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 176
    .line 177
    .line 178
    const v0, -0x59518a75

    .line 179
    .line 180
    .line 181
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 182
    .line 183
    .line 184
    sget-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 185
    .line 186
    invoke-static {v0, v12}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    sget-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 191
    .line 192
    invoke-static {v0, v12}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    move-object v7, p0

    .line 197
    check-cast v7, Landroidx/compose/animation/core/Transition;

    .line 198
    .line 199
    sget-object v11, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 200
    .line 201
    iget-object p0, v7, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 202
    .line 203
    iget-object v1, v7, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 204
    .line 205
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    check-cast p0, Ljava/lang/Boolean;

    .line 210
    .line 211
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    const v2, -0x5c966d11

    .line 216
    .line 217
    .line 218
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 219
    .line 220
    .line 221
    const v3, 0x3f4ccccd    # 0.8f

    .line 222
    .line 223
    .line 224
    const/high16 v5, 0x3f800000    # 1.0f

    .line 225
    .line 226
    if-eqz p0, :cond_8

    .line 227
    .line 228
    move p0, v5

    .line 229
    goto :goto_6

    .line 230
    :cond_8
    move p0, v3

    .line 231
    :goto_6
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 232
    .line 233
    .line 234
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    check-cast p0, Ljava/lang/Boolean;

    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 249
    .line 250
    .line 251
    if-eqz p0, :cond_9

    .line 252
    .line 253
    move v3, v5

    .line 254
    :cond_9
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 255
    .line 256
    .line 257
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 262
    .line 263
    .line 264
    const p0, 0x170ecc34

    .line 265
    .line 266
    .line 267
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 271
    .line 272
    .line 273
    const/high16 v13, 0x30000

    .line 274
    .line 275
    invoke-static/range {v7 .. v13}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    iget-object v2, v7, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 280
    .line 281
    invoke-virtual {v2}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    check-cast v2, Ljava/lang/Boolean;

    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    const v3, 0x7b90285b

    .line 292
    .line 293
    .line 294
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 295
    .line 296
    .line 297
    const/4 v8, 0x0

    .line 298
    if-eqz v2, :cond_a

    .line 299
    .line 300
    move v2, v5

    .line 301
    goto :goto_7

    .line 302
    :cond_a
    move v2, v8

    .line 303
    :goto_7
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 304
    .line 305
    .line 306
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, Ljava/lang/Boolean;

    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 321
    .line 322
    .line 323
    if-eqz v1, :cond_b

    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_b
    move v5, v8

    .line 327
    :goto_8
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 328
    .line 329
    .line 330
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 335
    .line 336
    .line 337
    const v1, -0x10ca9e60

    .line 338
    .line 339
    .line 340
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 344
    .line 345
    .line 346
    move-object v10, v0

    .line 347
    move-object v8, v2

    .line 348
    invoke-static/range {v7 .. v13}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    move-object v1, v12

    .line 353
    iget-object v2, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 354
    .line 355
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    check-cast v2, Ljava/lang/Number;

    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 362
    .line 363
    .line 364
    move-result v7

    .line 365
    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 366
    .line 367
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object p0

    .line 371
    check-cast p0, Ljava/lang/Number;

    .line 372
    .line 373
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    iget-object p0, v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 378
    .line 379
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    check-cast p0, Ljava/lang/Number;

    .line 384
    .line 385
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 386
    .line 387
    .line 388
    move-result v9

    .line 389
    const/4 v11, 0x0

    .line 390
    const v12, 0x1fff8

    .line 391
    .line 392
    .line 393
    const/4 v10, 0x0

    .line 394
    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFLandroidx/compose/ui/graphics/Shape;I)Landroidx/compose/ui/Modifier;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 399
    .line 400
    .line 401
    return-object p0

    .line 402
    nop

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
