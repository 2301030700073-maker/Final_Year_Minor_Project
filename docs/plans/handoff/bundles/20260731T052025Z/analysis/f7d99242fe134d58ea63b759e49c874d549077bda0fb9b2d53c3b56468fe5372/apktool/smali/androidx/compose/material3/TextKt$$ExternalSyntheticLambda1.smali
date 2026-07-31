.class public final synthetic Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;)V
    .locals 0

    .line 1
    const/16 p1, 0xe

    .line 2
    .line 3
    iput p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;->$r8$classId:I

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
    .locals 9

    .line 1
    iget p0, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const-wide v0, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/16 v2, 0x20

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast p1, Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 27
    .line 28
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    :cond_0
    move-object p0, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-eqz p0, :cond_0

    .line 39
    .line 40
    iget-object v0, v0, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/util/List;

    .line 49
    .line 50
    :goto_0
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    move-object v6, p1

    .line 57
    check-cast v6, Ljava/lang/String;

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 63
    .line 64
    invoke-direct {p1, p0, v6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    check-cast p1, Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 78
    .line 79
    iget-object v0, v0, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 82
    .line 83
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    :cond_3
    move-object p0, v6

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    if-eqz p0, :cond_3

    .line 94
    .line 95
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Landroidx/compose/ui/text/SpanStyle;

    .line 100
    .line 101
    :goto_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    :cond_5
    move-object v2, v6

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    if-eqz v2, :cond_5

    .line 114
    .line 115
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Landroidx/compose/ui/text/SpanStyle;

    .line 120
    .line 121
    :goto_2
    const/4 v4, 0x2

    .line 122
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_8

    .line 131
    .line 132
    :cond_7
    move-object v4, v6

    .line 133
    goto :goto_3

    .line 134
    :cond_8
    if-eqz v4, :cond_7

    .line 135
    .line 136
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Landroidx/compose/ui/text/SpanStyle;

    .line 141
    .line 142
    :goto_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_9

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_9
    if-eqz p1, :cond_a

    .line 154
    .line 155
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    move-object v6, p1

    .line 160
    check-cast v6, Landroidx/compose/ui/text/SpanStyle;

    .line 161
    .line 162
    :cond_a
    :goto_4
    new-instance p1, Landroidx/compose/ui/text/TextLinkStyles;

    .line 163
    .line 164
    invoke-direct {p1, p0, v2, v4, v6}, Landroidx/compose/ui/text/TextLinkStyles;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)V

    .line 165
    .line 166
    .line 167
    return-object p1

    .line 168
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    .line 169
    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v0, "["

    .line 173
    .line 174
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget v0, p1, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v0, ", "

    .line 183
    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget p1, p1, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    .line 188
    .line 189
    const/16 v0, 0x29

    .line 190
    .line 191
    invoke-static {p0, p1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 197
    .line 198
    instance-of p0, p1, Landroidx/compose/ui/text/ParagraphStyle;

    .line 199
    .line 200
    xor-int/2addr p0, v4

    .line 201
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    return-object p0

    .line 206
    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 207
    .line 208
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->emptyLambda:Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 209
    .line 210
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 211
    .line 212
    return-object p0

    .line 213
    :pswitch_4
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 214
    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/util/List;

    .line 217
    .line 218
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    :goto_5
    if-ge v5, v1, :cond_b

    .line 223
    .line 224
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 229
    .line 230
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .line 232
    .line 233
    add-int/lit8 v5, v5, 0x1

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :catchall_0
    move-exception v0

    .line 237
    move-object p1, v0

    .line 238
    goto :goto_6

    .line 239
    :cond_b
    monitor-exit p0

    .line 240
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 241
    .line 242
    return-object p0

    .line 243
    :goto_6
    monitor-exit p0

    .line 244
    throw p1

    .line 245
    :pswitch_5
    return-object p1

    .line 246
    :pswitch_6
    check-cast p1, Ljava/util/Map;

    .line 247
    .line 248
    new-instance p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 249
    .line 250
    invoke-direct {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;-><init>(Ljava/util/Map;)V

    .line 251
    .line 252
    .line 253
    return-object p0

    .line 254
    :pswitch_7
    sget-object p0, Landroidx/compose/ui/text/input/TextFieldValue;->Saver:Landroidx/compose/ui/platform/WeakCache;

    .line 255
    .line 256
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 257
    .line 258
    instance-of v0, p1, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 259
    .line 260
    if-eqz v0, :cond_d

    .line 261
    .line 262
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 263
    .line 264
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    if-eqz v0, :cond_c

    .line 269
    .line 270
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    iget-object p0, p0, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 280
    .line 281
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    :cond_c
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->getPolicy()Landroidx/compose/runtime/NeverEqualPolicy;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    new-instance p1, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 293
    .line 294
    invoke-direct {p1, v6, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 295
    .line 296
    .line 297
    move-object v6, p1

    .line 298
    goto :goto_7

    .line 299
    :cond_d
    const-string p0, "Failed requirement."

    .line 300
    .line 301
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    :goto_7
    return-object v6

    .line 305
    :pswitch_8
    check-cast p1, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;

    .line 306
    .line 307
    iget-object p0, p1, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;->onNextFrameEnd:Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 308
    .line 309
    if-eqz p0, :cond_e

    .line 310
    .line 311
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->invoke()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    :cond_e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 315
    .line 316
    return-object p0

    .line 317
    :pswitch_9
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 318
    .line 319
    sget-object p0, Landroidx/compose/runtime/HostDefaultProviderKt;->LocalHostDefaultProvider:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 320
    .line 321
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    check-cast p0, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;

    .line 331
    .line 332
    iget-object p0, p0, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;->view:Landroid/view/View;

    .line 333
    .line 334
    :goto_8
    if-eqz p0, :cond_11

    .line 335
    .line 336
    const p1, 0x7f09047e

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    if-eqz p1, :cond_f

    .line 344
    .line 345
    move-object v6, p1

    .line 346
    goto :goto_9

    .line 347
    :cond_f
    invoke-static {p0}, Landroidx/work/OperationKt;->getParentOrViewTreeDisjointParent(Landroid/view/View;)Landroid/view/ViewParent;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    instance-of p1, p0, Landroid/view/View;

    .line 352
    .line 353
    if-eqz p1, :cond_10

    .line 354
    .line 355
    check-cast p0, Landroid/view/View;

    .line 356
    .line 357
    goto :goto_8

    .line 358
    :cond_10
    move-object p0, v6

    .line 359
    goto :goto_8

    .line 360
    :cond_11
    :goto_9
    return-object v6

    .line 361
    :pswitch_a
    check-cast p1, Ljava/lang/Float;

    .line 362
    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    new-instance p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 367
    .line 368
    new-instance v0, Landroidx/compose/animation/core/Animatable;

    .line 369
    .line 370
    sget-object v1, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 371
    .line 372
    const/16 v2, 0xc

    .line 373
    .line 374
    invoke-direct {v0, p1, v1, v6, v2}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    .line 375
    .line 376
    .line 377
    invoke-direct {p0, v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;-><init>(Landroidx/compose/animation/core/Animatable;)V

    .line 378
    .line 379
    .line 380
    return-object p0

    .line 381
    :pswitch_b
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 382
    .line 383
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 384
    .line 385
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 386
    .line 387
    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 388
    .line 389
    .line 390
    move-result-wide v1

    .line 391
    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 396
    .line 397
    .line 398
    :try_start_1
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast v0, Landroidx/camera/view/PreviewView$1;

    .line 401
    .line 402
    iget-object v0, v0, Landroidx/camera/view/PreviewView$1;->this$0:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v0, Landroidx/core/view/MenuHostHelper;

    .line 405
    .line 406
    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    const v4, -0x800001

    .line 411
    .line 412
    .line 413
    const/4 v5, 0x0

    .line 414
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 415
    .line 416
    .line 417
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 418
    .line 419
    .line 420
    const/4 v8, 0x1

    .line 421
    invoke-interface/range {v3 .. v8}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    .line 426
    .line 427
    invoke-static {p0, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 428
    .line 429
    .line 430
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 431
    .line 432
    return-object p0

    .line 433
    :catchall_1
    move-exception v0

    .line 434
    move-object p1, v0

    .line 435
    invoke-static {p0, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 436
    .line 437
    .line 438
    throw p1

    .line 439
    :pswitch_c
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    .line 440
    .line 441
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    check-cast p1, Landroidx/compose/material3/internal/ParentSemanticsNode;

    .line 445
    .line 446
    iput-boolean v5, p1, Landroidx/compose/material3/internal/ParentSemanticsNode;->semanticsConsumed:Z

    .line 447
    .line 448
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 449
    .line 450
    .line 451
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 452
    .line 453
    return-object p0

    .line 454
    :pswitch_d
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 455
    .line 456
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 457
    .line 458
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsContainer:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 459
    .line 460
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 461
    .line 462
    const/4 v1, 0x5

    .line 463
    aget-object v0, v0, v1

    .line 464
    .line 465
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 466
    .line 467
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 471
    .line 472
    return-object p0

    .line 473
    :pswitch_e
    check-cast p1, Landroidx/compose/material3/FadeInFadeOutAnimationItem;

    .line 474
    .line 475
    iget-object p0, p1, Landroidx/compose/material3/FadeInFadeOutAnimationItem;->key:Ljava/lang/Object;

    .line 476
    .line 477
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result p0

    .line 481
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 482
    .line 483
    .line 484
    move-result-object p0

    .line 485
    return-object p0

    .line 486
    :pswitch_f
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 487
    .line 488
    invoke-static {p1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 489
    .line 490
    .line 491
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 492
    .line 493
    return-object p0

    .line 494
    :pswitch_10
    check-cast p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 495
    .line 496
    const/16 p0, 0x1770

    .line 497
    .line 498
    iput p0, p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 499
    .line 500
    const/high16 v0, 0x42b40000    # 90.0f

    .line 501
    .line 502
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    const/16 v1, 0x12c

    .line 507
    .line 508
    invoke-virtual {p1, v1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    sget-object v2, Landroidx/compose/material3/tokens/MotionTokens;->EasingEmphasizedDecelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 513
    .line 514
    iput-object v2, v1, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    .line 515
    .line 516
    const/16 v1, 0x5dc

    .line 517
    .line 518
    invoke-virtual {p1, v1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 519
    .line 520
    .line 521
    const/high16 v0, 0x43340000    # 180.0f

    .line 522
    .line 523
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    const/16 v1, 0x708

    .line 528
    .line 529
    invoke-virtual {p1, v1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 530
    .line 531
    .line 532
    const/16 v1, 0xbb8

    .line 533
    .line 534
    invoke-virtual {p1, v1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 535
    .line 536
    .line 537
    const/high16 v0, 0x43870000    # 270.0f

    .line 538
    .line 539
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    const/16 v1, 0xce4

    .line 544
    .line 545
    invoke-virtual {p1, v1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 546
    .line 547
    .line 548
    const/16 v1, 0x1194

    .line 549
    .line 550
    invoke-virtual {p1, v1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 551
    .line 552
    .line 553
    const/high16 v0, 0x43b40000    # 360.0f

    .line 554
    .line 555
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    const/16 v1, 0x12c0

    .line 560
    .line 561
    invoke-virtual {p1, v1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 562
    .line 563
    .line 564
    invoke-virtual {p1, p0, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 565
    .line 566
    .line 567
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 568
    .line 569
    return-object p0

    .line 570
    :pswitch_11
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 571
    .line 572
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 573
    .line 574
    return-object p0

    .line 575
    :pswitch_12
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 576
    .line 577
    const/4 p0, 0x4

    .line 578
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 579
    .line 580
    .line 581
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 582
    .line 583
    return-object p0

    .line 584
    :pswitch_13
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 585
    .line 586
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 587
    .line 588
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsDialog:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 589
    .line 590
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 591
    .line 592
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    return-object v0

    .line 596
    :pswitch_14
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 597
    .line 598
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 599
    .line 600
    .line 601
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 602
    .line 603
    return-object p0

    .line 604
    :pswitch_15
    check-cast p1, Landroidx/compose/material3/SheetValue;

    .line 605
    .line 606
    sget p0, Landroidx/compose/material3/ModalBottomSheetKt;->$r8$clinit:I

    .line 607
    .line 608
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 609
    .line 610
    return-object p0

    .line 611
    :pswitch_16
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 612
    .line 613
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 614
    .line 615
    .line 616
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 617
    .line 618
    return-object p0

    .line 619
    :pswitch_17
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 620
    .line 621
    invoke-static {p1, v5}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 622
    .line 623
    .line 624
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 625
    .line 626
    return-object p0

    .line 627
    :pswitch_18
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 628
    .line 629
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 630
    .line 631
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 632
    .line 633
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 634
    .line 635
    .line 636
    move-result p0

    .line 637
    int-to-long v3, p0

    .line 638
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 639
    .line 640
    .line 641
    move-result p0

    .line 642
    int-to-long p0, p0

    .line 643
    shl-long v2, v3, v2

    .line 644
    .line 645
    and-long/2addr p0, v0

    .line 646
    or-long/2addr p0, v2

    .line 647
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 648
    .line 649
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 650
    .line 651
    .line 652
    return-object v0

    .line 653
    :pswitch_19
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 654
    .line 655
    iget-wide v3, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 656
    .line 657
    const-wide v5, 0x7fffffff7fffffffL

    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    and-long/2addr v5, v3

    .line 663
    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    cmp-long p0, v5, v7

    .line 669
    .line 670
    if-eqz p0, :cond_12

    .line 671
    .line 672
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 673
    .line 674
    shr-long v2, v3, v2

    .line 675
    .line 676
    long-to-int v2, v2

    .line 677
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    iget-wide v3, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 682
    .line 683
    and-long/2addr v0, v3

    .line 684
    long-to-int p1, v0

    .line 685
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 686
    .line 687
    .line 688
    move-result p1

    .line 689
    invoke-direct {p0, v2, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 690
    .line 691
    .line 692
    goto :goto_a

    .line 693
    :cond_12
    sget-object p0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedAnimationVector2D:Landroidx/compose/animation/core/AnimationVector2D;

    .line 694
    .line 695
    :goto_a
    return-object p0

    .line 696
    :pswitch_1a
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    .line 697
    .line 698
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 699
    .line 700
    return-object p0

    .line 701
    :pswitch_1b
    check-cast p1, Landroidx/compose/ui/text/input/ImeAction;

    .line 702
    .line 703
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 704
    .line 705
    return-object p0

    .line 706
    :pswitch_1c
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    .line 707
    .line 708
    sget-object p0, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 709
    .line 710
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 711
    .line 712
    return-object p0

    .line 713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
