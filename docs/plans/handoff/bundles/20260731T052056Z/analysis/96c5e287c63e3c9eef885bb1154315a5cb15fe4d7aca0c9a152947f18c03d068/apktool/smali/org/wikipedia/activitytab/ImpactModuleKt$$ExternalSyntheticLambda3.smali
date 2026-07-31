.class public final synthetic Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 12
    iput p2, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p3, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p1, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 13
    iput p4, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p2, p0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    iget v7, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->f$1:I

    .line 12
    .line 13
    iget-object v0, v0, Lorg/wikipedia/activitytab/ImpactModuleKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    move-object/from16 v2, p2

    .line 25
    .line 26
    check-cast v2, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v0, v7, v1, v2}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->ReadingPatternsItem(Ljava/lang/String;ILandroidx/compose/runtime/GapComposer;I)V

    .line 36
    .line 37
    .line 38
    return-object v6

    .line 39
    :pswitch_0
    check-cast v0, Landroidx/glance/GlanceModifier;

    .line 40
    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 44
    .line 45
    move-object/from16 v2, p2

    .line 46
    .line 47
    check-cast v2, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v0, v7, v1, v2}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->ReadingChallengeWidgetLoading(Landroidx/glance/GlanceModifier;ILandroidx/compose/runtime/GapComposer;I)V

    .line 57
    .line 58
    .line 59
    return-object v6

    .line 60
    :pswitch_1
    check-cast v0, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 61
    .line 62
    move-object/from16 v12, p1

    .line 63
    .line 64
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 65
    .line 66
    move-object/from16 v1, p2

    .line 67
    .line 68
    check-cast v1, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    and-int/lit8 v2, v1, 0x3

    .line 75
    .line 76
    if-eq v2, v4, :cond_0

    .line 77
    .line 78
    move v3, v5

    .line 79
    :cond_0
    and-int/2addr v1, v5

    .line 80
    invoke-virtual {v12, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    new-instance v8, Landroidx/glance/AndroidResourceImageProvider;

    .line 87
    .line 88
    invoke-direct {v8, v7}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    aget v0, v1, v0

    .line 101
    .line 102
    if-eq v0, v5, :cond_4

    .line 103
    .line 104
    if-eq v0, v4, :cond_3

    .line 105
    .line 106
    const/4 v1, 0x3

    .line 107
    if-eq v0, v1, :cond_2

    .line 108
    .line 109
    const/4 v1, 0x4

    .line 110
    if-ne v0, v1, :cond_1

    .line 111
    .line 112
    const/high16 v0, 0x42c80000    # 100.0f

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 116
    .line 117
    .line 118
    const/4 v6, 0x0

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    const/high16 v0, 0x42a00000    # 80.0f

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    const/high16 v0, 0x42700000    # 60.0f

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    const/high16 v0, 0x42200000    # 40.0f

    .line 127
    .line 128
    :goto_0
    invoke-static {v0}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    const/16 v13, 0x30

    .line 133
    .line 134
    const/16 v14, 0x18

    .line 135
    .line 136
    const/4 v10, 0x0

    .line 137
    const/4 v11, 0x0

    .line 138
    invoke-static/range {v8 .. v14}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 143
    .line 144
    .line 145
    :goto_1
    return-object v6

    .line 146
    :pswitch_2
    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 147
    .line 148
    move-object/from16 v1, p1

    .line 149
    .line 150
    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 151
    .line 152
    move-object/from16 v2, p2

    .line 153
    .line 154
    check-cast v2, Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-interface {v0, v1, v3, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    return-object v6

    .line 170
    :pswitch_3
    check-cast v0, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    .line 171
    .line 172
    move-object/from16 v1, p1

    .line 173
    .line 174
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 175
    .line 176
    move-object/from16 v2, p2

    .line 177
    .line 178
    check-cast v2, Ljava/lang/Integer;

    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    and-int/lit8 v8, v2, 0x3

    .line 185
    .line 186
    if-eq v8, v4, :cond_6

    .line 187
    .line 188
    move v4, v5

    .line 189
    goto :goto_2

    .line 190
    :cond_6
    move v4, v3

    .line 191
    :goto_2
    and-int/2addr v2, v5

    .line 192
    invoke-virtual {v1, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_7

    .line 197
    .line 198
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;->intervalContent:Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->getIntervals()Lokhttp3/internal/http/StatusLine;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0, v7}, Lokhttp3/internal/http/StatusLine;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iget v2, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 209
    .line 210
    sub-int/2addr v7, v2

    .line 211
    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    .line 212
    .line 213
    check-cast v0, Landroidx/compose/foundation/pager/PagerIntervalContent;

    .line 214
    .line 215
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerIntervalContent;->item:Lkotlin/jvm/functions/Function4;

    .line 216
    .line 217
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    sget-object v4, Landroidx/compose/foundation/pager/PagerScopeImpl;->INSTANCE:Landroidx/compose/foundation/pager/PagerScopeImpl;

    .line 226
    .line 227
    invoke-interface {v0, v4, v2, v1, v3}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 232
    .line 233
    .line 234
    :goto_3
    return-object v6

    .line 235
    :pswitch_4
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;

    .line 236
    .line 237
    move-object/from16 v1, p1

    .line 238
    .line 239
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 240
    .line 241
    move-object/from16 v8, p2

    .line 242
    .line 243
    check-cast v8, Ljava/lang/Integer;

    .line 244
    .line 245
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    and-int/lit8 v9, v8, 0x3

    .line 250
    .line 251
    if-eq v9, v4, :cond_8

    .line 252
    .line 253
    move v3, v5

    .line 254
    :cond_8
    and-int/lit8 v4, v8, 0x1

    .line 255
    .line 256
    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_9

    .line 261
    .line 262
    iget-object v0, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;

    .line 263
    .line 264
    iget-object v0, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;->intervals:Lokhttp3/internal/http/StatusLine;

    .line 265
    .line 266
    invoke-virtual {v0, v7}, Lokhttp3/internal/http/StatusLine;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iget v3, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 271
    .line 272
    sub-int/2addr v7, v3

    .line 273
    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    .line 274
    .line 275
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridInterval;

    .line 276
    .line 277
    iget-object v0, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridInterval;->item:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 278
    .line 279
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    sget-object v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;

    .line 288
    .line 289
    invoke-virtual {v0, v4, v3, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 294
    .line 295
    .line 296
    :goto_4
    return-object v6

    .line 297
    :pswitch_5
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 298
    .line 299
    move-object/from16 v1, p1

    .line 300
    .line 301
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 302
    .line 303
    move-object/from16 v8, p2

    .line 304
    .line 305
    check-cast v8, Ljava/lang/Integer;

    .line 306
    .line 307
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    and-int/lit8 v9, v8, 0x3

    .line 312
    .line 313
    if-eq v9, v4, :cond_a

    .line 314
    .line 315
    move v3, v5

    .line 316
    :cond_a
    and-int/lit8 v4, v8, 0x1

    .line 317
    .line 318
    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_b

    .line 323
    .line 324
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 325
    .line 326
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lokhttp3/internal/http/StatusLine;

    .line 327
    .line 328
    invoke-virtual {v0, v7}, Lokhttp3/internal/http/StatusLine;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    iget v3, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 333
    .line 334
    sub-int/2addr v7, v3

    .line 335
    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    .line 336
    .line 337
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;

    .line 338
    .line 339
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;->item:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 340
    .line 341
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    sget-object v4, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 350
    .line 351
    invoke-virtual {v0, v4, v3, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 356
    .line 357
    .line 358
    :goto_5
    return-object v6

    .line 359
    :pswitch_6
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 360
    .line 361
    move-object/from16 v1, p1

    .line 362
    .line 363
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 364
    .line 365
    move-object/from16 v2, p2

    .line 366
    .line 367
    check-cast v2, Ljava/lang/Integer;

    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    and-int/lit8 v8, v2, 0x3

    .line 374
    .line 375
    if-eq v8, v4, :cond_c

    .line 376
    .line 377
    move v4, v5

    .line 378
    goto :goto_6

    .line 379
    :cond_c
    move v4, v3

    .line 380
    :goto_6
    and-int/2addr v2, v5

    .line 381
    invoke-virtual {v1, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    if-eqz v2, :cond_d

    .line 386
    .line 387
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 388
    .line 389
    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Lokhttp3/internal/http/StatusLine;

    .line 390
    .line 391
    invoke-virtual {v2, v7}, Lokhttp3/internal/http/StatusLine;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    iget v4, v2, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 396
    .line 397
    sub-int/2addr v7, v4

    .line 398
    iget-object v2, v2, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    .line 399
    .line 400
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListInterval;

    .line 401
    .line 402
    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListInterval;->item:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 403
    .line 404
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 405
    .line 406
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    invoke-virtual {v2, v0, v4, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 419
    .line 420
    .line 421
    :goto_7
    return-object v6

    .line 422
    :pswitch_7
    check-cast v0, Ljava/text/NumberFormat;

    .line 423
    .line 424
    move-object/from16 v14, p1

    .line 425
    .line 426
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 427
    .line 428
    move-object/from16 v1, p2

    .line 429
    .line 430
    check-cast v1, Ljava/lang/Integer;

    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    and-int/lit8 v2, v1, 0x3

    .line 437
    .line 438
    if-eq v2, v4, :cond_e

    .line 439
    .line 440
    move v2, v5

    .line 441
    goto :goto_8

    .line 442
    :cond_e
    move v2, v3

    .line 443
    :goto_8
    and-int/2addr v1, v5

    .line 444
    invoke-virtual {v14, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    if-eqz v1, :cond_10

    .line 449
    .line 450
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 451
    .line 452
    const/high16 v2, 0x41800000    # 16.0f

    .line 453
    .line 454
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 459
    .line 460
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 461
    .line 462
    invoke-static {v8, v9, v14, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    iget-wide v9, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 467
    .line 468
    const/16 v11, 0x20

    .line 469
    .line 470
    ushr-long v11, v9, v11

    .line 471
    .line 472
    xor-long/2addr v9, v11

    .line 473
    long-to-int v9, v9

    .line 474
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 475
    .line 476
    .line 477
    move-result-object v10

    .line 478
    invoke-static {v14, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 483
    .line 484
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 488
    .line 489
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 490
    .line 491
    .line 492
    iget-boolean v12, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 493
    .line 494
    if-eqz v12, :cond_f

    .line 495
    .line 496
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 497
    .line 498
    .line 499
    goto :goto_9

    .line 500
    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 501
    .line 502
    .line 503
    :goto_9
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 504
    .line 505
    invoke-static {v14, v8, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 506
    .line 507
    .line 508
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 509
    .line 510
    invoke-static {v14, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 511
    .line 512
    .line 513
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 518
    .line 519
    invoke-static {v14, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 520
    .line 521
    .line 522
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 523
    .line 524
    invoke-static {v14, v8}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 525
    .line 526
    .line 527
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 528
    .line 529
    invoke-static {v14, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 530
    .line 531
    .line 532
    const v4, 0x7f0801d3

    .line 533
    .line 534
    .line 535
    invoke-static {v4, v3, v14}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 536
    .line 537
    .line 538
    move-result-object v9

    .line 539
    const v3, 0x7f120074

    .line 540
    .line 541
    .line 542
    invoke-static {v3, v14}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v10

    .line 546
    const v15, 0x30040

    .line 547
    .line 548
    .line 549
    const/16 v16, 0x19

    .line 550
    .line 551
    const/4 v8, 0x0

    .line 552
    const/4 v11, 0x0

    .line 553
    const/4 v12, 0x0

    .line 554
    const/4 v13, 0x1

    .line 555
    invoke-static/range {v8 .. v16}, Lorg/wikipedia/activitytab/ImpactModuleKt;->CommonCardHeader(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/runtime/GapComposer;II)V

    .line 556
    .line 557
    .line 558
    const/4 v12, 0x0

    .line 559
    const/16 v13, 0xd

    .line 560
    .line 561
    const/4 v9, 0x0

    .line 562
    const/4 v11, 0x0

    .line 563
    move-object v8, v1

    .line 564
    move v10, v2

    .line 565
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 566
    .line 567
    .line 568
    move-result-object v9

    .line 569
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 581
    .line 582
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 587
    .line 588
    iget-object v0, v0, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 589
    .line 590
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 591
    .line 592
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 597
    .line 598
    iget-wide v10, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 599
    .line 600
    sget-object v15, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 601
    .line 602
    const/16 v30, 0x0

    .line 603
    .line 604
    const v31, 0x1ffb8

    .line 605
    .line 606
    .line 607
    const/4 v12, 0x0

    .line 608
    move-object/from16 v28, v14

    .line 609
    .line 610
    const-wide/16 v13, 0x0

    .line 611
    .line 612
    const/16 v16, 0x0

    .line 613
    .line 614
    const-wide/16 v17, 0x0

    .line 615
    .line 616
    const/16 v19, 0x0

    .line 617
    .line 618
    const-wide/16 v20, 0x0

    .line 619
    .line 620
    const/16 v22, 0x0

    .line 621
    .line 622
    const/16 v23, 0x0

    .line 623
    .line 624
    const/16 v24, 0x0

    .line 625
    .line 626
    const/16 v25, 0x0

    .line 627
    .line 628
    const/16 v26, 0x0

    .line 629
    .line 630
    const v29, 0x180030

    .line 631
    .line 632
    .line 633
    move-object/from16 v27, v0

    .line 634
    .line 635
    invoke-static/range {v8 .. v31}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 636
    .line 637
    .line 638
    move-object/from16 v14, v28

    .line 639
    .line 640
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 641
    .line 642
    .line 643
    goto :goto_a

    .line 644
    :cond_10
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 645
    .line 646
    .line 647
    :goto_a
    return-object v6

    .line 648
    nop

    .line 649
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
