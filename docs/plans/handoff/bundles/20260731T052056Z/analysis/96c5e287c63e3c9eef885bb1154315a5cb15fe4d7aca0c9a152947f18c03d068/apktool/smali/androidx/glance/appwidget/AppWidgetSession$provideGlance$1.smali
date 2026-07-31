.class public final Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/glance/appwidget/AppWidgetSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetSession;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;->$context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;->this$0:Landroidx/glance/appwidget/AppWidgetSession;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroidx/glance/appwidget/AppWidgetSession;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;->$r8$classId:I

    .line 13
    iput-object p1, p0, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;->this$0:Landroidx/glance/appwidget/AppWidgetSession;

    iput-object p2, p0, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x30

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x3

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v7, p2

    .line 20
    .line 21
    check-cast v7, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    and-int/2addr v6, v7

    .line 28
    if-ne v6, v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_1
    :goto_0
    const v6, 0x702cf9dc

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 53
    .line 54
    if-ne v6, v7, :cond_2

    .line 55
    .line 56
    new-instance v6, Landroidx/compose/ui/unit/DpSize;

    .line 57
    .line 58
    const-wide/16 v8, 0x0

    .line 59
    .line 60
    invoke-direct {v6, v8, v9}, Landroidx/compose/ui/unit/DpSize;-><init>(J)V

    .line 61
    .line 62
    .line 63
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    move-object v11, v6

    .line 71
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 74
    .line 75
    .line 76
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    const v8, 0x702d0a3f

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 82
    .line 83
    .line 84
    iget-object v9, v0, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;->this$0:Landroidx/glance/appwidget/AppWidgetSession;

    .line 85
    .line 86
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    iget-object v10, v0, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;->$context:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    or-int/2addr v0, v8

    .line 97
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    or-int/2addr v0, v8

    .line 102
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const/4 v12, 0x0

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    if-ne v8, v7, :cond_4

    .line 110
    .line 111
    :cond_3
    new-instance v8, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 112
    .line 113
    const/16 v13, 0x9

    .line 114
    .line 115
    invoke-direct/range {v8 .. v13}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v6, v8}, Landroidx/compose/runtime/Updater;->produceState(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/MutableState;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    const v0, -0x6a792d13

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 146
    .line 147
    .line 148
    const v0, 0x702da53e

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-ne v0, v7, :cond_5

    .line 159
    .line 160
    iget-object v0, v9, Landroidx/glance/appwidget/AppWidgetSession;->widget:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 161
    .line 162
    iget-object v6, v9, Landroidx/glance/appwidget/AppWidgetSession;->id:Landroidx/glance/appwidget/AppWidgetId;

    .line 163
    .line 164
    new-instance v14, Landroidx/glance/appwidget/GlanceAppWidget$update$4;

    .line 165
    .line 166
    invoke-direct {v14, v0, v10, v6, v12}, Landroidx/glance/appwidget/GlanceAppWidget$update$4;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetId;Lkotlin/coroutines/Continuation;)V

    .line 167
    .line 168
    .line 169
    new-instance v13, Lkotlinx/coroutines/flow/ChannelFlowBuilder;

    .line 170
    .line 171
    sget-object v17, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 172
    .line 173
    const/16 v18, 0x0

    .line 174
    .line 175
    sget-object v15, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 176
    .line 177
    const/16 v16, -0x2

    .line 178
    .line 179
    invoke-direct/range {v13 .. v18}, Lkotlinx/coroutines/flow/ChannelFlowBuilder;-><init>(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    move-object v0, v13

    .line 186
    :cond_5
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v12, v1, v2, v5}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/runtime/MutableState;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 200
    .line 201
    const v2, 0x702db35e

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 205
    .line 206
    .line 207
    if-nez v0, :cond_6

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Landroidx/compose/ui/unit/DpSize;

    .line 218
    .line 219
    iget-wide v5, v2, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    .line 220
    .line 221
    invoke-static {v5, v6, v0, v1, v3}, Landroidx/work/Operation$State;->ForEachSize-eVKgIn8(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 222
    .line 223
    .line 224
    move-object v12, v4

    .line 225
    :goto_1
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 226
    .line 227
    .line 228
    if-nez v12, :cond_7

    .line 229
    .line 230
    invoke-static {v3, v1}, Lkotlin/text/UStringsKt;->IgnoreResult(ILandroidx/compose/runtime/GapComposer;)V

    .line 231
    .line 232
    .line 233
    :cond_7
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_8
    const v0, -0x6a75c3a0

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 241
    .line 242
    .line 243
    invoke-static {v3, v1}, Lkotlin/text/UStringsKt;->IgnoreResult(ILandroidx/compose/runtime/GapComposer;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 247
    .line 248
    .line 249
    :goto_2
    const v0, 0x702ddd43

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    if-nez v0, :cond_9

    .line 264
    .line 265
    if-ne v2, v7, :cond_a

    .line 266
    .line 267
    :cond_9
    new-instance v2, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 268
    .line 269
    const/16 v0, 0x12

    .line 270
    .line 271
    invoke-direct {v2, v0, v9}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(ILjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :cond_a
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 278
    .line 279
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 280
    .line 281
    .line 282
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;)V

    .line 283
    .line 284
    .line 285
    :goto_3
    return-object v4

    .line 286
    :pswitch_0
    move-object/from16 v1, p1

    .line 287
    .line 288
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 289
    .line 290
    move-object/from16 v7, p2

    .line 291
    .line 292
    check-cast v7, Ljava/lang/Number;

    .line 293
    .line 294
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    and-int/2addr v7, v6

    .line 299
    if-ne v7, v5, :cond_c

    .line 300
    .line 301
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-nez v7, :cond_b

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 309
    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_c
    :goto_4
    sget-object v7, Landroidx/glance/CompositionLocalsKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 313
    .line 314
    iget-object v8, v0, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;->$context:Landroid/content/Context;

    .line 315
    .line 316
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    sget-object v9, Landroidx/glance/CompositionLocalsKt;->LocalGlanceId:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 321
    .line 322
    iget-object v0, v0, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;->this$0:Landroidx/glance/appwidget/AppWidgetSession;

    .line 323
    .line 324
    iget-object v10, v0, Landroidx/glance/appwidget/AppWidgetSession;->id:Landroidx/glance/appwidget/AppWidgetId;

    .line 325
    .line 326
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    sget-object v10, Landroidx/glance/appwidget/CompositionLocalsKt;->LocalAppWidgetOptions:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 331
    .line 332
    iget-object v11, v0, Landroidx/glance/appwidget/AppWidgetSession;->options$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 333
    .line 334
    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    check-cast v11, Landroid/os/Bundle;

    .line 339
    .line 340
    if-nez v11, :cond_d

    .line 341
    .line 342
    sget-object v11, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 343
    .line 344
    :cond_d
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    sget-object v11, Landroidx/glance/CompositionLocalsKt;->LocalState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 349
    .line 350
    iget-object v12, v0, Landroidx/glance/appwidget/AppWidgetSession;->glanceState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 351
    .line 352
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v12

    .line 356
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    const/4 v12, 0x4

    .line 361
    new-array v12, v12, [Landroidx/compose/runtime/ProvidedValue;

    .line 362
    .line 363
    aput-object v7, v12, v3

    .line 364
    .line 365
    const/4 v3, 0x1

    .line 366
    aput-object v9, v12, v3

    .line 367
    .line 368
    aput-object v10, v12, v5

    .line 369
    .line 370
    aput-object v11, v12, v6

    .line 371
    .line 372
    new-instance v3, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;

    .line 373
    .line 374
    invoke-direct {v3, v0, v8}, Landroidx/glance/appwidget/AppWidgetSession$provideGlance$1;-><init>(Landroidx/glance/appwidget/AppWidgetSession;Landroid/content/Context;)V

    .line 375
    .line 376
    .line 377
    const v0, 0x64aba82f

    .line 378
    .line 379
    .line 380
    invoke-static {v1, v0, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->composableLambda(Landroidx/compose/runtime/GapComposer;ILkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v12, v0, v1, v2}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 385
    .line 386
    .line 387
    :goto_5
    return-object v4

    .line 388
    nop

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
