.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/16 v3, 0x12

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContentKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-static {v5}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->maxLineSpan:I

    .line 28
    .line 29
    invoke-static {p0}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    :goto_0
    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-static {v5}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    sget p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->maxLineSpan:I

    .line 52
    .line 53
    invoke-static {p0}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 54
    .line 55
    .line 56
    move-result-wide p0

    .line 57
    :goto_1
    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 58
    .line 59
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :pswitch_1
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    invoke-static {v5}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide p0

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    sget p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->maxLineSpan:I

    .line 76
    .line 77
    invoke-static {p0}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 78
    .line 79
    .line 80
    move-result-wide p0

    .line 81
    :goto_2
    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 82
    .line 83
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :pswitch_2
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    invoke-static {v5}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 95
    .line 96
    .line 97
    move-result-wide p0

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    sget p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->maxLineSpan:I

    .line 100
    .line 101
    invoke-static {p0}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 102
    .line 103
    .line 104
    move-result-wide p0

    .line 105
    :goto_3
    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 106
    .line 107
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :pswitch_3
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    if-eqz p0, :cond_4

    .line 117
    .line 118
    invoke-static {v5}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 119
    .line 120
    .line 121
    move-result-wide p0

    .line 122
    goto :goto_4

    .line 123
    :cond_4
    sget p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->maxLineSpan:I

    .line 124
    .line 125
    invoke-static {p0}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 126
    .line 127
    .line 128
    move-result-wide p0

    .line 129
    :goto_4
    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 130
    .line 131
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :pswitch_4
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    if-eqz p0, :cond_5

    .line 141
    .line 142
    invoke-static {v5}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 143
    .line 144
    .line 145
    move-result-wide p0

    .line 146
    goto :goto_5

    .line 147
    :cond_5
    sget p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->maxLineSpan:I

    .line 148
    .line 149
    invoke-static {p0}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 150
    .line 151
    .line 152
    move-result-wide p0

    .line 153
    :goto_5
    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 154
    .line 155
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 156
    .line 157
    .line 158
    return-object v0

    .line 159
    :pswitch_5
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    if-eqz p0, :cond_6

    .line 165
    .line 166
    invoke-static {v5}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide p0

    .line 170
    goto :goto_6

    .line 171
    :cond_6
    sget p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->maxLineSpan:I

    .line 172
    .line 173
    invoke-static {p0}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 174
    .line 175
    .line 176
    move-result-wide p0

    .line 177
    :goto_6
    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 178
    .line 179
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 180
    .line 181
    .line 182
    return-object v0

    .line 183
    :pswitch_6
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    if-eqz p0, :cond_7

    .line 189
    .line 190
    new-instance p0, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 191
    .line 192
    invoke-direct {p0, v1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 193
    .line 194
    .line 195
    invoke-static {p0}, Landroidx/compose/animation/EnterExitTransitionKt;->slideInHorizontally$default(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    const/4 p1, 0x0

    .line 200
    invoke-static {p1, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p0, v0}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 209
    .line 210
    const/16 v1, 0x14

    .line 211
    .line 212
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 213
    .line 214
    .line 215
    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->slideOutHorizontally$default(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {p1, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v0, p1}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {p0, p1}, Landroidx/compose/animation/CrossfadeKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    goto :goto_7

    .line 232
    :cond_7
    invoke-static {}, Landroidx/compose/animation/core/ArcSplineKt;->snap$default()Landroidx/compose/animation/core/SnapSpec;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    new-instance p1, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 237
    .line 238
    invoke-direct {p1, v3}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 239
    .line 240
    .line 241
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 242
    .line 243
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    .line 244
    .line 245
    invoke-direct {v0, v5, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 246
    .line 247
    .line 248
    new-instance p1, Landroidx/compose/animation/EnterTransitionImpl;

    .line 249
    .line 250
    new-instance v4, Landroidx/compose/animation/TransitionData;

    .line 251
    .line 252
    new-instance v6, Landroidx/compose/animation/Slide;

    .line 253
    .line 254
    invoke-direct {v6, v0, p0}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 255
    .line 256
    .line 257
    const/4 v9, 0x0

    .line 258
    const/16 v10, 0x7d

    .line 259
    .line 260
    const/4 v5, 0x0

    .line 261
    const/4 v7, 0x0

    .line 262
    const/4 v8, 0x0

    .line 263
    invoke-direct/range {v4 .. v10}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 264
    .line 265
    .line 266
    invoke-direct {p1, v4}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 267
    .line 268
    .line 269
    invoke-static {}, Landroidx/compose/animation/core/ArcSplineKt;->snap$default()Landroidx/compose/animation/core/SnapSpec;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    invoke-static {p0, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-virtual {p1, p0}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-static {}, Landroidx/compose/animation/core/ArcSplineKt;->snap$default()Landroidx/compose/animation/core/SnapSpec;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 286
    .line 287
    invoke-direct {v0, v3}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 288
    .line 289
    .line 290
    new-instance v1, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    .line 291
    .line 292
    invoke-direct {v1, v2, v0}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 293
    .line 294
    .line 295
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 296
    .line 297
    new-instance v3, Landroidx/compose/animation/TransitionData;

    .line 298
    .line 299
    new-instance v5, Landroidx/compose/animation/Slide;

    .line 300
    .line 301
    invoke-direct {v5, v1, p1}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 302
    .line 303
    .line 304
    const/16 v9, 0x7d

    .line 305
    .line 306
    const/4 v4, 0x0

    .line 307
    const/4 v6, 0x0

    .line 308
    invoke-direct/range {v3 .. v9}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 309
    .line 310
    .line 311
    invoke-direct {v0, v3}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 312
    .line 313
    .line 314
    invoke-static {}, Landroidx/compose/animation/core/ArcSplineKt;->snap$default()Landroidx/compose/animation/core/SnapSpec;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-static {p1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {v0, p1}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-static {p0, p1}, Landroidx/compose/animation/CrossfadeKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    :goto_7
    return-object p0

    .line 331
    :pswitch_7
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 332
    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    const/4 v0, 0x0

    .line 337
    if-eqz p0, :cond_9

    .line 338
    .line 339
    const/16 p0, 0x12c

    .line 340
    .line 341
    sget-object v3, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 342
    .line 343
    invoke-static {p0, v0, v3, v2}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-virtual {p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getTargetState()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    check-cast p1, Ljava/lang/Boolean;

    .line 352
    .line 353
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-eqz p1, :cond_8

    .line 358
    .line 359
    new-instance p1, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 360
    .line 361
    const/16 v2, 0x10

    .line 362
    .line 363
    invoke-direct {p1, v2}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 364
    .line 365
    .line 366
    sget-object v2, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 367
    .line 368
    new-instance v2, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    .line 369
    .line 370
    invoke-direct {v2, v0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 371
    .line 372
    .line 373
    new-instance p1, Landroidx/compose/animation/EnterTransitionImpl;

    .line 374
    .line 375
    new-instance v5, Landroidx/compose/animation/TransitionData;

    .line 376
    .line 377
    new-instance v7, Landroidx/compose/animation/Slide;

    .line 378
    .line 379
    invoke-direct {v7, v2, p0}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 380
    .line 381
    .line 382
    const/4 v10, 0x0

    .line 383
    const/16 v11, 0x7d

    .line 384
    .line 385
    const/4 v6, 0x0

    .line 386
    const/4 v8, 0x0

    .line 387
    const/4 v9, 0x0

    .line 388
    invoke-direct/range {v5 .. v11}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 389
    .line 390
    .line 391
    invoke-direct {p1, v5}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 392
    .line 393
    .line 394
    new-instance v0, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 395
    .line 396
    invoke-direct {v0, v1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 397
    .line 398
    .line 399
    new-instance v1, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    .line 400
    .line 401
    invoke-direct {v1, v4, v0}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 402
    .line 403
    .line 404
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 405
    .line 406
    new-instance v2, Landroidx/compose/animation/TransitionData;

    .line 407
    .line 408
    new-instance v4, Landroidx/compose/animation/Slide;

    .line 409
    .line 410
    invoke-direct {v4, v1, p0}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 411
    .line 412
    .line 413
    const/4 v7, 0x0

    .line 414
    const/16 v8, 0x7d

    .line 415
    .line 416
    const/4 v3, 0x0

    .line 417
    const/4 v5, 0x0

    .line 418
    invoke-direct/range {v2 .. v8}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 419
    .line 420
    .line 421
    invoke-direct {v0, v2}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 422
    .line 423
    .line 424
    invoke-static {p1, v0}, Landroidx/compose/animation/CrossfadeKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    goto/16 :goto_8

    .line 429
    .line 430
    :cond_8
    new-instance p1, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 431
    .line 432
    invoke-direct {p1, v1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 433
    .line 434
    .line 435
    sget-object v1, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 436
    .line 437
    new-instance v1, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    .line 438
    .line 439
    invoke-direct {v1, v0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 440
    .line 441
    .line 442
    new-instance p1, Landroidx/compose/animation/EnterTransitionImpl;

    .line 443
    .line 444
    new-instance v5, Landroidx/compose/animation/TransitionData;

    .line 445
    .line 446
    new-instance v7, Landroidx/compose/animation/Slide;

    .line 447
    .line 448
    invoke-direct {v7, v1, p0}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 449
    .line 450
    .line 451
    const/4 v10, 0x0

    .line 452
    const/16 v11, 0x7d

    .line 453
    .line 454
    const/4 v6, 0x0

    .line 455
    const/4 v8, 0x0

    .line 456
    const/4 v9, 0x0

    .line 457
    invoke-direct/range {v5 .. v11}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 458
    .line 459
    .line 460
    invoke-direct {p1, v5}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 461
    .line 462
    .line 463
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 464
    .line 465
    const/16 v1, 0x11

    .line 466
    .line 467
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 468
    .line 469
    .line 470
    new-instance v1, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    .line 471
    .line 472
    invoke-direct {v1, v4, v0}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 473
    .line 474
    .line 475
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 476
    .line 477
    new-instance v2, Landroidx/compose/animation/TransitionData;

    .line 478
    .line 479
    new-instance v4, Landroidx/compose/animation/Slide;

    .line 480
    .line 481
    invoke-direct {v4, v1, p0}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 482
    .line 483
    .line 484
    const/4 v7, 0x0

    .line 485
    const/16 v8, 0x7d

    .line 486
    .line 487
    const/4 v3, 0x0

    .line 488
    const/4 v5, 0x0

    .line 489
    invoke-direct/range {v2 .. v8}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 490
    .line 491
    .line 492
    invoke-direct {v0, v2}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 493
    .line 494
    .line 495
    invoke-static {p1, v0}, Landroidx/compose/animation/CrossfadeKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    goto :goto_8

    .line 500
    :cond_9
    invoke-static {}, Landroidx/compose/animation/core/ArcSplineKt;->snap$default()Landroidx/compose/animation/core/SnapSpec;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    new-instance p1, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 505
    .line 506
    invoke-direct {p1, v3}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 507
    .line 508
    .line 509
    sget-object v1, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 510
    .line 511
    new-instance v1, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    .line 512
    .line 513
    invoke-direct {v1, v0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 514
    .line 515
    .line 516
    new-instance p1, Landroidx/compose/animation/EnterTransitionImpl;

    .line 517
    .line 518
    new-instance v5, Landroidx/compose/animation/TransitionData;

    .line 519
    .line 520
    new-instance v7, Landroidx/compose/animation/Slide;

    .line 521
    .line 522
    invoke-direct {v7, v1, p0}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 523
    .line 524
    .line 525
    const/4 v10, 0x0

    .line 526
    const/16 v11, 0x7d

    .line 527
    .line 528
    const/4 v6, 0x0

    .line 529
    const/4 v8, 0x0

    .line 530
    const/4 v9, 0x0

    .line 531
    invoke-direct/range {v5 .. v11}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 532
    .line 533
    .line 534
    invoke-direct {p1, v5}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 535
    .line 536
    .line 537
    invoke-static {}, Landroidx/compose/animation/core/ArcSplineKt;->snap$default()Landroidx/compose/animation/core/SnapSpec;

    .line 538
    .line 539
    .line 540
    move-result-object p0

    .line 541
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 542
    .line 543
    invoke-direct {v0, v3}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 544
    .line 545
    .line 546
    new-instance v1, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    .line 547
    .line 548
    invoke-direct {v1, v4, v0}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 549
    .line 550
    .line 551
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 552
    .line 553
    new-instance v2, Landroidx/compose/animation/TransitionData;

    .line 554
    .line 555
    new-instance v4, Landroidx/compose/animation/Slide;

    .line 556
    .line 557
    invoke-direct {v4, v1, p0}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 558
    .line 559
    .line 560
    const/4 v7, 0x0

    .line 561
    const/16 v8, 0x7d

    .line 562
    .line 563
    const/4 v3, 0x0

    .line 564
    const/4 v5, 0x0

    .line 565
    invoke-direct/range {v2 .. v8}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 566
    .line 567
    .line 568
    invoke-direct {v0, v2}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 569
    .line 570
    .line 571
    invoke-static {p1, v0}, Landroidx/compose/animation/CrossfadeKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    .line 572
    .line 573
    .line 574
    move-result-object p0

    .line 575
    :goto_8
    return-object p0

    .line 576
    nop

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
