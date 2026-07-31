.class public final Landroidx/glance/GlanceThemeKt$GlanceTheme$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $colors:Ljava/lang/Object;

.field public final synthetic $content:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Lkotlin/Function;)V
    .locals 0

    .line 14
    iput p2, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$r8$classId:I

    iput-object p3, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$colors:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$content:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$colors:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$content:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;Lcom/airbnb/lottie/RenderMode;Lcom/airbnb/lottie/AsyncUpdates;I)V
    .locals 0

    .line 1
    const/4 p3, 0x7

    .line 2
    iput p3, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$colors:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$content:Ljava/lang/Object;

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


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v5, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$content:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;->$colors:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 16
    .line 17
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 18
    .line 19
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    .line 20
    .line 21
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    .line 28
    .line 29
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    move v2, v3

    .line 36
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    check-cast p2, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    check-cast p0, Lcom/airbnb/lottie/LottieComposition;

    .line 49
    .line 50
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 51
    .line 52
    const p2, 0x180031

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-static {p0, v5, p1, p2}, Lkotlin/text/RegexKt;->LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 60
    .line 61
    .line 62
    return-object v4

    .line 63
    :pswitch_1
    move-object v10, p1

    .line 64
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 65
    .line 66
    check-cast p2, Ljava/lang/Number;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    and-int/lit8 p1, p1, 0x3

    .line 73
    .line 74
    if-ne p1, v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_2
    :goto_0
    check-cast p0, Ljava/util/ArrayList;

    .line 88
    .line 89
    move-object v8, v5

    .line 90
    check-cast v8, Landroidx/glance/layout/Alignment;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_8

    .line 101
    .line 102
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    add-int/lit8 p2, v2, 0x1

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    if-ltz v2, :cond_7

    .line 110
    .line 111
    check-cast p1, Lkotlin/Pair;

    .line 112
    .line 113
    iget-object v1, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v1, Ljava/lang/Long;

    .line 116
    .line 117
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Lkotlin/jvm/functions/Function3;

    .line 120
    .line 121
    const-wide/high16 v5, -0x8000000000000000L

    .line 122
    .line 123
    if-nez v1, :cond_3

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v11

    .line 130
    cmp-long v3, v11, v5

    .line 131
    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    move-object v1, v0

    .line 136
    :goto_2
    if-eqz v1, :cond_5

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    goto :goto_3

    .line 143
    :cond_5
    const-wide/high16 v11, -0x4000000000000000L    # -2.0

    .line 144
    .line 145
    int-to-long v1, v2

    .line 146
    sub-long v1, v11, v1

    .line 147
    .line 148
    :goto_3
    cmp-long v3, v1, v5

    .line 149
    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    new-instance v0, Landroidx/glance/layout/SpacerKt$Spacer$3;

    .line 153
    .line 154
    const/16 v3, 0x9

    .line 155
    .line 156
    invoke-direct {v0, v3, p1}, Landroidx/glance/layout/SpacerKt$Spacer$3;-><init>(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    const p1, -0x9c27446

    .line 160
    .line 161
    .line 162
    invoke-static {v10, p1, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->composableLambda(Landroidx/compose/runtime/GapComposer;ILkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    const/16 v11, 0x180

    .line 167
    .line 168
    move-wide v6, v1

    .line 169
    invoke-static/range {v6 .. v11}, Lkotlin/ResultKt;->LazyListItem(JLandroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 170
    .line 171
    .line 172
    move v2, p2

    .line 173
    goto :goto_1

    .line 174
    :cond_6
    const-string p0, "Implicit list item ids exhausted."

    .line 175
    .line 176
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    move-object v4, v0

    .line 180
    goto :goto_4

    .line 181
    :cond_7
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_8
    :goto_4
    return-object v4

    .line 186
    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 187
    .line 188
    check-cast p2, Ljava/lang/Number;

    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 191
    .line 192
    .line 193
    check-cast p0, Landroidx/glance/GlanceModifier;

    .line 194
    .line 195
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 196
    .line 197
    invoke-static {p0, v5, p1, v3}, Lkotlin/ResultKt;->LazyColumn-EiNPFjs(Landroidx/glance/GlanceModifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 198
    .line 199
    .line 200
    return-object v4

    .line 201
    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 202
    .line 203
    check-cast p2, Ljava/lang/Number;

    .line 204
    .line 205
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 206
    .line 207
    .line 208
    check-cast p0, Landroidx/compose/ui/Modifier;

    .line 209
    .line 210
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 211
    .line 212
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    invoke-static {p2, p1, p0, v5}, Lcoil3/util/UtilsKt;->DialogLayout(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)V

    .line 217
    .line 218
    .line 219
    return-object v4

    .line 220
    :pswitch_4
    check-cast p1, Landroidx/compose/ui/graphics/Canvas;

    .line 221
    .line 222
    check-cast p2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 223
    .line 224
    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 225
    .line 226
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_9

    .line 233
    .line 234
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlockCanvas:Landroidx/compose/ui/graphics/Canvas;

    .line 235
    .line 236
    iput-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlockParentLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 237
    .line 238
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 243
    .line 244
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    sget-object p2, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 249
    .line 250
    sget-object p2, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE$3:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 251
    .line 252
    check-cast v5, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    .line 253
    .line 254
    iget-object p1, p1, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/preference/PreferenceManager;

    .line 255
    .line 256
    invoke-virtual {p1, p0, p2, v5}, Landroidx/preference/PreferenceManager;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 257
    .line 258
    .line 259
    iput-boolean v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_9
    iput-boolean v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    .line 263
    .line 264
    :goto_5
    return-object v4

    .line 265
    :pswitch_5
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 266
    .line 267
    check-cast p2, Ljava/lang/Number;

    .line 268
    .line 269
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    and-int/lit8 v0, p2, 0x3

    .line 274
    .line 275
    if-eq v0, v1, :cond_a

    .line 276
    .line 277
    move v0, v3

    .line 278
    goto :goto_6

    .line 279
    :cond_a
    move v0, v2

    .line 280
    :goto_6
    and-int/2addr p2, v3

    .line 281
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-eqz p2, :cond_10

    .line 286
    .line 287
    check-cast p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 288
    .line 289
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->activeState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 290
    .line 291
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    check-cast p0, Ljava/lang/Boolean;

    .line 296
    .line 297
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 298
    .line 299
    .line 300
    move-result p2

    .line 301
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 302
    .line 303
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReusableGroup(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 307
    .line 308
    .line 309
    move-result p0

    .line 310
    if-eqz p2, :cond_b

    .line 311
    .line 312
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-interface {v5, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_b
    iget p2, p1, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 321
    .line 322
    if-nez p2, :cond_c

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_c
    const-string p2, "No nodes can be emitted before calling deactivateToEndGroup"

    .line 326
    .line 327
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    :goto_7
    iget-boolean p2, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 331
    .line 332
    if-nez p2, :cond_e

    .line 333
    .line 334
    if-nez p0, :cond_d

    .line 335
    .line 336
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipReaderToGroupEnd()V

    .line 337
    .line 338
    .line 339
    goto :goto_8

    .line 340
    :cond_d
    iget-object p0, p1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 341
    .line 342
    iget p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 343
    .line 344
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 345
    .line 346
    iget-object v0, p1, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 352
    .line 353
    .line 354
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 355
    .line 356
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 357
    .line 358
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 361
    .line 362
    .line 363
    iget-object v0, p1, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-static {p2, p0, v0}, Landroidx/compose/runtime/Updater;->removeRange(IILjava/util/List;)V

    .line 366
    .line 367
    .line 368
    iget-object p0, p1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 369
    .line 370
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->skipToGroupEnd()V

    .line 371
    .line 372
    .line 373
    :cond_e
    :goto_8
    iget-boolean p0, p1, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 374
    .line 375
    if-eqz p0, :cond_f

    .line 376
    .line 377
    iget-object p0, p1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 378
    .line 379
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 380
    .line 381
    iget p2, p1, Landroidx/compose/runtime/GapComposer;->reusingGroup:I

    .line 382
    .line 383
    if-ne p0, p2, :cond_f

    .line 384
    .line 385
    const/4 p0, -0x1

    .line 386
    iput p0, p1, Landroidx/compose/runtime/GapComposer;->reusingGroup:I

    .line 387
    .line 388
    iput-boolean v2, p1, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 389
    .line 390
    :cond_f
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 391
    .line 392
    .line 393
    goto :goto_9

    .line 394
    :cond_10
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 395
    .line 396
    .line 397
    :goto_9
    return-object v4

    .line 398
    :pswitch_6
    check-cast p1, Ljava/lang/Number;

    .line 399
    .line 400
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 401
    .line 402
    .line 403
    move-result p1

    .line 404
    check-cast p2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 405
    .line 406
    check-cast v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 407
    .line 408
    check-cast p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 409
    .line 410
    iget-object p0, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->children:Landroidx/collection/MutableIntSet;

    .line 411
    .line 412
    iget v0, p2, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 413
    .line 414
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntSet;->contains(I)Z

    .line 415
    .line 416
    .line 417
    move-result p0

    .line 418
    if-nez p0, :cond_11

    .line 419
    .line 420
    invoke-virtual {v5, p1, p2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->updateBuffersOnAppeared(ILandroidx/compose/ui/semantics/SemanticsNode;)V

    .line 421
    .line 422
    .line 423
    iget-object p0, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 424
    .line 425
    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    :cond_11
    return-object v4

    .line 429
    :pswitch_7
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 430
    .line 431
    check-cast p2, Ljava/lang/Number;

    .line 432
    .line 433
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 434
    .line 435
    .line 436
    check-cast p0, Landroidx/glance/color/DynamicThemeColorProviders;

    .line 437
    .line 438
    check-cast v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 439
    .line 440
    const/16 p2, 0x31

    .line 441
    .line 442
    invoke-static {p0, v5, p1, p2}, Lkotlin/ExceptionsKt;->GlanceTheme(Landroidx/glance/color/DynamicThemeColorProviders;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 443
    .line 444
    .line 445
    return-object v4

    .line 446
    nop

    .line 447
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
