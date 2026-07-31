.class public final synthetic Landroidx/room/InvalidationTracker$implementation$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iput p7, p0, Landroidx/room/InvalidationTracker$implementation$1;->$r8$classId:I

    .line 2
    .line 3
    move-object v0, p4

    .line 4
    move-object p4, p2

    .line 5
    move p2, p6

    .line 6
    move-object p6, p5

    .line 7
    move-object p5, v0

    .line 8
    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/room/InvalidationTracker$implementation$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x7

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x1

    .line 9
    const/4 v7, 0x0

    .line 10
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast v0, Lorg/wikipedia/random/RandomActivity;

    .line 25
    .line 26
    sget v2, Lorg/wikipedia/random/RandomActivity;->$r8$clinit:I

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    if-eqz v9, :cond_0

    .line 36
    .line 37
    sget-object v2, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 38
    .line 39
    invoke-static {v1}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    const/4 v15, 0x0

    .line 44
    const/16 v16, 0xd6

    .line 45
    .line 46
    const-string v10, "click"

    .line 47
    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    const-string v13, "article_save"

    .line 51
    .line 52
    invoke-static/range {v9 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v2, v0, Lorg/wikipedia/random/RandomActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 56
    .line 57
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lorg/wikipedia/random/RandomViewModel;

    .line 62
    .line 63
    iget-object v2, v2, Lorg/wikipedia/random/RandomViewModel;->saveButtonState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-instance v3, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;

    .line 82
    .line 83
    invoke-direct {v3, v1, v0, v7}, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/random/RandomActivity;Lkotlin/coroutines/Continuation;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v7, v7, v3, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 91
    .line 92
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->RANDOM_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 93
    .line 94
    new-instance v3, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;

    .line 95
    .line 96
    invoke-direct {v3, v0, v1}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/random/RandomActivity;Lorg/wikipedia/page/PageTitle;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1, v6, v2, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-object v8

    .line 103
    :pswitch_0
    move-object/from16 v1, p1

    .line 104
    .line 105
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    check-cast v0, Lorg/wikipedia/random/RandomActivity;

    .line 111
    .line 112
    sget v2, Lorg/wikipedia/random/RandomActivity;->$r8$clinit:I

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    if-eqz v9, :cond_2

    .line 122
    .line 123
    sget-object v2, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 124
    .line 125
    invoke-static {v1}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    const/4 v15, 0x0

    .line 130
    const/16 v16, 0xd6

    .line 131
    .line 132
    const-string v10, "click"

    .line 133
    .line 134
    const/4 v11, 0x0

    .line 135
    const/4 v12, 0x0

    .line 136
    const-string v13, "article_open"

    .line 137
    .line 138
    invoke-static/range {v9 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 139
    .line 140
    .line 141
    :cond_2
    new-instance v2, Lorg/wikipedia/history/HistoryEntry;

    .line 142
    .line 143
    invoke-direct {v2, v4, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 144
    .line 145
    .line 146
    new-instance v3, Landroid/content/Intent;

    .line 147
    .line 148
    const-string v4, "org.wikipedia.load_in_new_tab"

    .line 149
    .line 150
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-class v4, Lorg/wikipedia/page/PageActivity;

    .line 154
    .line 155
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    const-string v4, "org.wikipedia.history.historyentry"

    .line 160
    .line 161
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const-string v3, "title"

    .line 166
    .line 167
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 175
    .line 176
    .line 177
    return-object v8

    .line 178
    :pswitch_1
    move-object/from16 v1, p1

    .line 179
    .line 180
    check-cast v1, Ljava/lang/Throwable;

    .line 181
    .line 182
    check-cast v0, Lkotlinx/coroutines/JobNode;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobNode;->invoke(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    return-object v8

    .line 188
    :pswitch_2
    move-object/from16 v1, p1

    .line 189
    .line 190
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 191
    .line 192
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 193
    .line 194
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->filters:Landroidx/collection/MutableObjectList;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    return-object v8

    .line 200
    :pswitch_3
    move-object/from16 v1, p1

    .line 201
    .line 202
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 203
    .line 204
    iget-wide v11, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 205
    .line 206
    move-object v10, v0

    .line 207
    check-cast v10, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;

    .line 208
    .line 209
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProviderKt;->LocalTextContextMenuDropdownProvider:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 213
    .line 214
    invoke-static {v10, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    move-object v13, v0

    .line 219
    check-cast v13, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    .line 220
    .line 221
    if-nez v13, :cond_3

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_3
    new-instance v14, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;

    .line 225
    .line 226
    invoke-direct {v14, v10, v11, v12}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;-><init>(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    new-instance v9, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 234
    .line 235
    const/4 v15, 0x0

    .line 236
    const/16 v16, 0x5

    .line 237
    .line 238
    invoke-direct/range {v9 .. v16}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 239
    .line 240
    .line 241
    invoke-static {v0, v7, v7, v9, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 242
    .line 243
    .line 244
    :goto_1
    return-object v8

    .line 245
    :pswitch_4
    move-object/from16 v1, p1

    .line 246
    .line 247
    check-cast v1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 248
    .line 249
    iget-object v1, v1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    .line 250
    .line 251
    check-cast v0, Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 252
    .line 253
    iget-object v5, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->preparedSelectionState:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 254
    .line 255
    iget-boolean v8, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->editable:Z

    .line 256
    .line 257
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-nez v9, :cond_8

    .line 262
    .line 263
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    invoke-static {v9}, Ljava/lang/Character;->isISOControl(I)Z

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    if-nez v9, :cond_8

    .line 272
    .line 273
    iget-object v9, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->keyCombiner:Landroidx/compose/foundation/text/DeadKeyCombiner;

    .line 274
    .line 275
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    const/high16 v11, -0x80000000

    .line 283
    .line 284
    and-int/2addr v11, v10

    .line 285
    if-eqz v11, :cond_4

    .line 286
    .line 287
    const v11, 0x7fffffff

    .line 288
    .line 289
    .line 290
    and-int/2addr v10, v11

    .line 291
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v10

    .line 295
    iput-object v10, v9, Landroidx/compose/foundation/text/DeadKeyCombiner;->deadKeyCode:Ljava/lang/Integer;

    .line 296
    .line 297
    move-object v9, v7

    .line 298
    goto :goto_2

    .line 299
    :cond_4
    iget-object v11, v9, Landroidx/compose/foundation/text/DeadKeyCombiner;->deadKeyCode:Ljava/lang/Integer;

    .line 300
    .line 301
    if-eqz v11, :cond_7

    .line 302
    .line 303
    iput-object v7, v9, Landroidx/compose/foundation/text/DeadKeyCombiner;->deadKeyCode:Ljava/lang/Integer;

    .line 304
    .line 305
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    invoke-static {v9, v10}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v11

    .line 317
    if-nez v9, :cond_5

    .line 318
    .line 319
    move-object v11, v7

    .line 320
    :cond_5
    if-eqz v11, :cond_6

    .line 321
    .line 322
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    :cond_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    goto :goto_2

    .line 331
    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v9

    .line 335
    :goto_2
    if-eqz v9, :cond_8

    .line 336
    .line 337
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    new-instance v10, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    new-instance v10, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 355
    .line 356
    invoke-direct {v10, v6, v9}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(ILjava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_3

    .line 360
    :cond_8
    move-object v10, v7

    .line 361
    :goto_3
    if-eqz v10, :cond_a

    .line 362
    .line 363
    if-eqz v8, :cond_9

    .line 364
    .line 365
    invoke-static {v10}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 370
    .line 371
    .line 372
    iput-object v7, v5, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 373
    .line 374
    move v2, v6

    .line 375
    goto :goto_5

    .line 376
    :cond_9
    :goto_4
    const/4 v2, 0x0

    .line 377
    goto :goto_5

    .line 378
    :cond_a
    invoke-static {v1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    if-ne v7, v3, :cond_9

    .line 383
    .line 384
    sget-object v3, Landroidx/compose/foundation/text/BasicTextKt;->platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    .line 385
    .line 386
    invoke-virtual {v3, v1}, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    if-eqz v1, :cond_9

    .line 391
    .line 392
    invoke-virtual {v1}, Landroidx/compose/foundation/text/KeyCommand;->getEditsText()Z

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    if-eqz v3, :cond_b

    .line 397
    .line 398
    if-nez v8, :cond_b

    .line 399
    .line 400
    goto :goto_4

    .line 401
    :cond_b
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 402
    .line 403
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 404
    .line 405
    .line 406
    iput-boolean v6, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 407
    .line 408
    new-instance v3, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 409
    .line 410
    invoke-direct {v3, v1, v0, v2, v4}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 411
    .line 412
    .line 413
    new-instance v1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 414
    .line 415
    iget-object v4, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 416
    .line 417
    iget-object v7, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 418
    .line 419
    iget-object v8, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 420
    .line 421
    invoke-virtual {v8}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    invoke-direct {v1, v4, v7, v8, v5}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v3, v1}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    iget-wide v7, v1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 432
    .line 433
    iget-wide v9, v4, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 434
    .line 435
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    iget-object v5, v1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 440
    .line 441
    if-eqz v3, :cond_c

    .line 442
    .line 443
    iget-object v3, v4, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 444
    .line 445
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    if-nez v3, :cond_d

    .line 450
    .line 451
    :cond_c
    iget-object v3, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 452
    .line 453
    iget-wide v7, v1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 454
    .line 455
    const/4 v1, 0x4

    .line 456
    invoke-static {v4, v5, v7, v8, v1}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    :cond_d
    iget-object v0, v0, Landroidx/compose/foundation/text/TextFieldKeyInput;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 464
    .line 465
    iput-boolean v6, v0, Landroidx/compose/foundation/text/UndoManager;->forceNextSnapshot:Z

    .line 466
    .line 467
    iget-boolean v2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 468
    .line 469
    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    return-object v0

    .line 474
    :pswitch_5
    move-object/from16 v1, p1

    .line 475
    .line 476
    check-cast v1, Ljava/lang/Boolean;

    .line 477
    .line 478
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    check-cast v0, Landroidx/compose/foundation/AbstractClickableNode;

    .line 483
    .line 484
    iget-object v9, v0, Landroidx/compose/foundation/AbstractClickableNode;->currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;

    .line 485
    .line 486
    if-eqz v1, :cond_e

    .line 487
    .line 488
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->initializeIndicationAndInteractionSourceIfNeeded()V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_a

    .line 492
    .line 493
    :cond_e
    iget-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 494
    .line 495
    if-eqz v1, :cond_13

    .line 496
    .line 497
    iget-object v1, v9, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 498
    .line 499
    iget-object v10, v9, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 500
    .line 501
    array-length v11, v10

    .line 502
    sub-int/2addr v11, v3

    .line 503
    if-ltz v11, :cond_12

    .line 504
    .line 505
    const/4 v12, 0x0

    .line 506
    :goto_6
    aget-wide v13, v10, v12

    .line 507
    .line 508
    not-long v2, v13

    .line 509
    shl-long/2addr v2, v4

    .line 510
    and-long/2addr v2, v13

    .line 511
    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    and-long v2, v2, v17

    .line 517
    .line 518
    cmp-long v2, v2, v17

    .line 519
    .line 520
    if-eqz v2, :cond_11

    .line 521
    .line 522
    sub-int v2, v12, v11

    .line 523
    .line 524
    not-int v2, v2

    .line 525
    ushr-int/lit8 v2, v2, 0x1f

    .line 526
    .line 527
    const/16 v3, 0x8

    .line 528
    .line 529
    rsub-int/lit8 v2, v2, 0x8

    .line 530
    .line 531
    const/4 v4, 0x0

    .line 532
    :goto_7
    if-ge v4, v2, :cond_10

    .line 533
    .line 534
    const-wide/16 v18, 0xff

    .line 535
    .line 536
    and-long v18, v13, v18

    .line 537
    .line 538
    const-wide/16 v20, 0x80

    .line 539
    .line 540
    cmp-long v18, v18, v20

    .line 541
    .line 542
    if-gez v18, :cond_f

    .line 543
    .line 544
    shl-int/lit8 v18, v12, 0x3

    .line 545
    .line 546
    add-int v18, v18, v4

    .line 547
    .line 548
    aget-object v18, v1, v18

    .line 549
    .line 550
    move-object/from16 v15, v18

    .line 551
    .line 552
    check-cast v15, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 553
    .line 554
    move/from16 p1, v3

    .line 555
    .line 556
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    move-object/from16 v18, v1

    .line 561
    .line 562
    new-instance v1, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;

    .line 563
    .line 564
    invoke-direct {v1, v0, v15, v7, v6}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;I)V

    .line 565
    .line 566
    .line 567
    invoke-static {v3, v7, v7, v1, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 568
    .line 569
    .line 570
    goto :goto_8

    .line 571
    :cond_f
    move-object/from16 v18, v1

    .line 572
    .line 573
    move/from16 p1, v3

    .line 574
    .line 575
    :goto_8
    shr-long v13, v13, p1

    .line 576
    .line 577
    add-int/lit8 v4, v4, 0x1

    .line 578
    .line 579
    move/from16 v3, p1

    .line 580
    .line 581
    move-object/from16 v1, v18

    .line 582
    .line 583
    goto :goto_7

    .line 584
    :cond_10
    move-object/from16 v18, v1

    .line 585
    .line 586
    move v1, v3

    .line 587
    if-ne v2, v1, :cond_12

    .line 588
    .line 589
    goto :goto_9

    .line 590
    :cond_11
    move-object/from16 v18, v1

    .line 591
    .line 592
    :goto_9
    if-eq v12, v11, :cond_12

    .line 593
    .line 594
    add-int/lit8 v12, v12, 0x1

    .line 595
    .line 596
    move-object/from16 v1, v18

    .line 597
    .line 598
    const/4 v3, 0x2

    .line 599
    const/4 v4, 0x7

    .line 600
    goto :goto_6

    .line 601
    :cond_12
    iget-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 602
    .line 603
    if-eqz v1, :cond_13

    .line 604
    .line 605
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    new-instance v3, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;

    .line 610
    .line 611
    const/4 v15, 0x2

    .line 612
    invoke-direct {v3, v0, v1, v7, v15}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;I)V

    .line 613
    .line 614
    .line 615
    invoke-static {v2, v7, v7, v3, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 616
    .line 617
    .line 618
    :cond_13
    invoke-virtual {v9}, Landroidx/collection/MutableLongObjectMap;->clear()V

    .line 619
    .line 620
    .line 621
    iput-object v7, v0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 622
    .line 623
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->onCancelKeyInput()V

    .line 624
    .line 625
    .line 626
    :goto_a
    return-object v8

    .line 627
    :pswitch_6
    move-object/from16 v1, p1

    .line 628
    .line 629
    check-cast v1, Ljava/util/Set;

    .line 630
    .line 631
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    check-cast v0, Landroidx/room/InvalidationTracker;

    .line 635
    .line 636
    iget-object v1, v0, Landroidx/room/InvalidationTracker;->observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 637
    .line 638
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 639
    .line 640
    .line 641
    :try_start_0
    iget-object v0, v0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/LinkedHashMap;

    .line 642
    .line 643
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    check-cast v0, Ljava/lang/Iterable;

    .line 648
    .line 649
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 650
    .line 651
    .line 652
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 654
    .line 655
    .line 656
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    if-nez v1, :cond_14

    .line 665
    .line 666
    return-object v8

    .line 667
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    check-cast v0, Landroidx/room/ObserverWrapper;

    .line 672
    .line 673
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 674
    .line 675
    .line 676
    throw v7

    .line 677
    :catchall_0
    move-exception v0

    .line 678
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 679
    .line 680
    .line 681
    throw v0

    .line 682
    nop

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
