.class public final synthetic Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lkotlinx/coroutines/Job;Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;Z)V
    .locals 0

    .line 15
    const/4 p4, 0x2

    iput p4, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    iget-object v6, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v7, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p0, p0, Lnet/newpipe/app/ComposeActivity$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast p0, Landroid/content/Context;

    .line 19
    .line 20
    check-cast v6, Lorg/koin/core/logger/Level;

    .line 21
    .line 22
    check-cast v7, Lokhttp3/ConnectionPool;

    .line 23
    .line 24
    check-cast p1, Lorg/koin/core/KoinApplication;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    .line 30
    .line 31
    iget-object v1, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lorg/koin/core/logger/Logger;

    .line 34
    .line 35
    iget-object v1, v1, Lorg/koin/core/logger/Logger;->level:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lorg/koin/core/logger/Level;

    .line 38
    .line 39
    sget-object v2, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-gtz v1, :cond_0

    .line 46
    .line 47
    iget-object v1, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lorg/koin/core/logger/Logger;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const-string v8, "[init] declare Android Context"

    .line 55
    .line 56
    invoke-virtual {v1, v2, v8}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    new-instance v1, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/16 v2, 0xa

    .line 62
    .line 63
    invoke-direct {v1, p0, v2}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    new-instance p0, Lorg/koin/core/module/Module;

    .line 67
    .line 68
    invoke-direct {p0}, Lorg/koin/core/module/Module;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0, v5}, Lorg/koin/core/Koin;->loadModules(Ljava/util/List;Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance p0, Lorg/koin/core/logger/EmptyLogger;

    .line 85
    .line 86
    invoke-direct {p0, v5}, Lorg/koin/core/logger/EmptyLogger;-><init>(I)V

    .line 87
    .line 88
    .line 89
    iput-object v6, p0, Lorg/koin/core/logger/Logger;->level:Ljava/lang/Object;

    .line 90
    .line 91
    iput-object p0, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 92
    .line 93
    new-array p0, v5, [Lokhttp3/ConnectionPool;

    .line 94
    .line 95
    aput-object v7, p0, v4

    .line 96
    .line 97
    aget-object p0, p0, v4

    .line 98
    .line 99
    if-eqz p0, :cond_1

    .line 100
    .line 101
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 104
    .line 105
    if-eqz p0, :cond_1

    .line 106
    .line 107
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_1
    return-object v3

    .line 111
    :pswitch_0
    check-cast p0, Ljava/util/List;

    .line 112
    .line 113
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 114
    .line 115
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 116
    .line 117
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    new-instance v0, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    const/4 v2, 0x6

    .line 125
    invoke-direct {v0, v6, v7, v2}, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 129
    .line 130
    const v8, -0x36c75cda

    .line 131
    .line 132
    .line 133
    invoke-direct {v4, v8, v5, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v4}, Landroidx/compose/ui/Modifier$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 137
    .line 138
    .line 139
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 140
    .line 141
    invoke-direct {v0, v2}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    new-instance v4, Landroidx/compose/runtime/Latch$await$2$2;

    .line 149
    .line 150
    invoke-direct {v4, v0, p0, v1}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Lnet/newpipe/app/screen/about/AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$3;

    .line 154
    .line 155
    const/4 v1, 0x2

    .line 156
    invoke-direct {v0, v1, p0}, Lnet/newpipe/app/screen/about/AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$3;-><init>(ILjava/util/List;)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Lnet/newpipe/app/screen/about/LicensePageKt$LicensePageContent$lambda$9$0$$inlined$items$default$4;

    .line 160
    .line 161
    invoke-direct {v1, p0, v6, v7}, Lnet/newpipe/app/screen/about/LicensePageKt$LicensePageContent$lambda$9$0$$inlined$items$default$4;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 162
    .line 163
    .line 164
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 165
    .line 166
    const v6, 0x2fd4df92

    .line 167
    .line 168
    .line 169
    invoke-direct {p0, v6, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Lcom/grack/nanojson/JsonParser;

    .line 173
    .line 174
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListInterval;

    .line 175
    .line 176
    invoke-direct {v1, v4, v0, p0}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v2, v1}, Lcom/grack/nanojson/JsonParser;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 180
    .line 181
    .line 182
    return-object v3

    .line 183
    :pswitch_1
    check-cast p0, Landroidx/navigationevent/compose/NavigationEventState;

    .line 184
    .line 185
    check-cast v6, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    .line 186
    .line 187
    check-cast v7, Lokhttp3/Dispatcher;

    .line 188
    .line 189
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 190
    .line 191
    iget-object p1, p0, Landroidx/navigationevent/compose/NavigationEventState;->sourceHandler:Landroidx/navigationevent/NavigationEventHandler;

    .line 192
    .line 193
    if-nez p1, :cond_2

    .line 194
    .line 195
    iput-object v6, p0, Landroidx/navigationevent/compose/NavigationEventState;->sourceHandler:Landroidx/navigationevent/NavigationEventHandler;

    .line 196
    .line 197
    invoke-static {v7, v6}, Lokhttp3/Dispatcher;->addHandler$default(Lokhttp3/Dispatcher;Landroidx/navigationevent/NavigationEventHandler;)V

    .line 198
    .line 199
    .line 200
    new-instance v2, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;

    .line 201
    .line 202
    invoke-direct {v2, v6, p0, v1}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_2
    const-string p1, "\' is already registered with a NavigationEventHandler \'"

    .line 207
    .line 208
    const-string v0, "\'."

    .line 209
    .line 210
    const-string v1, "NavigationEventState \'"

    .line 211
    .line 212
    invoke-static {v1, p0, p1, v6, v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :goto_0
    return-object v2

    .line 216
    :pswitch_2
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 217
    .line 218
    check-cast v7, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    .line 219
    .line 220
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 221
    .line 222
    iget-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->registries:Landroidx/collection/MutableScatterMap;

    .line 223
    .line 224
    invoke-virtual {p1, v6}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_3

    .line 229
    .line 230
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->savedStates:Ljava/util/Map;

    .line 231
    .line 232
    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v6, v7}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    new-instance v2, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 239
    .line 240
    invoke-direct {v2, v5, p0, v6, v7}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_3
    const-string p0, "Key "

    .line 245
    .line 246
    const-string p1, " was used multiple times "

    .line 247
    .line 248
    invoke-static {v6, p1, p0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :goto_1
    return-object v2

    .line 252
    :pswitch_3
    check-cast p0, Landroidx/compose/ui/unit/Density;

    .line 253
    .line 254
    check-cast v6, Landroidx/compose/ui/graphics/Shape;

    .line 255
    .line 256
    check-cast v7, Landroidx/compose/runtime/State;

    .line 257
    .line 258
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 259
    .line 260
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 265
    .line 266
    iget v0, v0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 267
    .line 268
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 269
    .line 270
    .line 271
    move-result p0

    .line 272
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShadowElevation(F)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v6}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    .line 279
    .line 280
    .line 281
    return-object v3

    .line 282
    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 283
    .line 284
    check-cast v6, Ljava/util/ArrayList;

    .line 285
    .line 286
    check-cast v7, Ljava/util/List;

    .line 287
    .line 288
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 289
    .line 290
    iput-boolean v5, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 291
    .line 292
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    move v1, v4

    .line 297
    :goto_2
    if-ge v1, v0, :cond_4

    .line 298
    .line 299
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 304
    .line 305
    invoke-virtual {v2, p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 306
    .line 307
    .line 308
    add-int/lit8 v1, v1, 0x1

    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_4
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    move v1, v4

    .line 316
    :goto_3
    if-ge v1, v0, :cond_5

    .line 317
    .line 318
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 323
    .line 324
    invoke-virtual {v2, p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 325
    .line 326
    .line 327
    add-int/lit8 v1, v1, 0x1

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_5
    iput-boolean v4, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 331
    .line 332
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    return-object v3

    .line 336
    :pswitch_5
    check-cast p0, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 337
    .line 338
    check-cast v6, Lkotlinx/coroutines/Job;

    .line 339
    .line 340
    check-cast v7, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 341
    .line 342
    check-cast p1, Ljava/lang/Float;

    .line 343
    .line 344
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 349
    .line 350
    if-eqz v0, :cond_6

    .line 351
    .line 352
    const/high16 v0, 0x3f800000    # 1.0f

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_6
    const/high16 v0, -0x40800000    # -1.0f

    .line 356
    .line 357
    :goto_4
    mul-float v1, v0, p1

    .line 358
    .line 359
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 360
    .line 361
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    .line 362
    .line 363
    .line 364
    move-result-wide v8

    .line 365
    invoke-virtual {p0, v8, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 366
    .line 367
    .line 368
    move-result-wide v8

    .line 369
    iget-object v1, v7, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 370
    .line 371
    iget-object v4, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 372
    .line 373
    invoke-virtual {v1, v4, v8, v9, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 374
    .line 375
    .line 376
    move-result-wide v4

    .line 377
    invoke-virtual {p0, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 378
    .line 379
    .line 380
    move-result-wide v4

    .line 381
    invoke-virtual {p0, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    .line 382
    .line 383
    .line 384
    move-result p0

    .line 385
    mul-float/2addr p0, v0

    .line 386
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    cmpg-float v0, v0, v1

    .line 395
    .line 396
    if-gez v0, :cond_7

    .line 397
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const-string v1, "Scroll animation cancelled because scroll was not consumed ("

    .line 401
    .line 402
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const-string p0, " < "

    .line 409
    .line 410
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const/16 p0, 0x29

    .line 417
    .line 418
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 426
    .line 427
    invoke-direct {p1, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 431
    .line 432
    .line 433
    invoke-interface {v6, p1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 434
    .line 435
    .line 436
    :cond_7
    return-object v3

    .line 437
    :pswitch_6
    check-cast p0, Lnet/newpipe/app/ComposeActivity;

    .line 438
    .line 439
    check-cast v7, Lnet/newpipe/app/theme/Service;

    .line 440
    .line 441
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 442
    .line 443
    sget v0, Lnet/newpipe/app/ComposeActivity;->$r8$clinit:I

    .line 444
    .line 445
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 449
    .line 450
    .line 451
    move-result-object p0

    .line 452
    new-instance p1, Lcoil3/memory/MemoryCacheService;

    .line 453
    .line 454
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 455
    .line 456
    .line 457
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 458
    .line 459
    const/16 v1, 0x23

    .line 460
    .line 461
    if-lt v0, v1, :cond_8

    .line 462
    .line 463
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 464
    .line 465
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    .line 466
    .line 467
    .line 468
    iput-object v0, p1, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 469
    .line 470
    goto :goto_5

    .line 471
    :cond_8
    const/16 v1, 0x1e

    .line 472
    .line 473
    if-lt v0, v1, :cond_9

    .line 474
    .line 475
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 476
    .line 477
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    .line 478
    .line 479
    .line 480
    iput-object v0, p1, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 481
    .line 482
    goto :goto_5

    .line 483
    :cond_9
    const/16 v1, 0x1a

    .line 484
    .line 485
    if-lt v0, v1, :cond_a

    .line 486
    .line 487
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 488
    .line 489
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;)V

    .line 490
    .line 491
    .line 492
    iput-object v0, p1, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 493
    .line 494
    goto :goto_5

    .line 495
    :cond_a
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 496
    .line 497
    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;)V

    .line 498
    .line 499
    .line 500
    iput-object v0, p1, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 501
    .line 502
    :goto_5
    invoke-virtual {v7}, Lnet/newpipe/app/theme/Service;->isSchemeColorDensityLight()Z

    .line 503
    .line 504
    .line 505
    move-result p0

    .line 506
    invoke-virtual {p1, p0}, Lcoil3/memory/MemoryCacheService;->setAppearanceLightStatusBars(Z)V

    .line 507
    .line 508
    .line 509
    new-instance p0, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;

    .line 510
    .line 511
    invoke-direct {p0, p1, v4}, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;I)V

    .line 512
    .line 513
    .line 514
    return-object p0

    .line 515
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
