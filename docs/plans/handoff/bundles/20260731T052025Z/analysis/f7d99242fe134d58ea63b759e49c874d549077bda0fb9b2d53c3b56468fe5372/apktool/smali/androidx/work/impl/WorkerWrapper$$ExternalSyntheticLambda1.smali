.class public final synthetic Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p4, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$1:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p5, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x2fd4df92

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    iget-boolean v4, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$1:Z

    .line 9
    .line 10
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    iget-object v7, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v8, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v9, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v9, Lkotlinx/collections/immutable/ImmutableList;

    .line 23
    .line 24
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    check-cast v7, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 27
    .line 28
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance p0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/16 v0, 0x13

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 38
    .line 39
    .line 40
    move-object v0, v9

    .line 41
    check-cast v0, Lkotlin/collections/AbstractCollection;

    .line 42
    .line 43
    invoke-virtual {v0}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    new-instance v1, Landroidx/compose/runtime/Latch$await$2$2;

    .line 48
    .line 49
    const/16 v3, 0xd

    .line 50
    .line 51
    invoke-direct {v1, v3, p0, v9}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;

    .line 55
    .line 56
    const/4 v3, 0x6

    .line 57
    invoke-direct {p0, v3, v9}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;-><init>(ILjava/util/List;)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4;

    .line 61
    .line 62
    invoke-direct {v3, v9, v8, v7, v4}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Z)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 66
    .line 67
    invoke-direct {v4, v2, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0, v1, p0, v4}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 71
    .line 72
    .line 73
    return-object v5

    .line 74
    :pswitch_0
    move-object v10, v9

    .line 75
    check-cast v10, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 76
    .line 77
    move-object v9, v8

    .line 78
    check-cast v9, Lkotlinx/collections/immutable/PersistentMap;

    .line 79
    .line 80
    move-object v11, v7

    .line 81
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 82
    .line 83
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-interface {v10}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMessages()Lkotlinx/collections/immutable/ImmutableList;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    const/4 v4, 0x5

    .line 95
    invoke-direct {v0, v4}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 96
    .line 97
    .line 98
    move-object v4, v8

    .line 99
    check-cast v4, Lkotlin/collections/AbstractCollection;

    .line 100
    .line 101
    invoke-virtual {v4}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    new-instance v13, Landroidx/compose/runtime/Latch$await$2$2;

    .line 106
    .line 107
    const/16 v7, 0xb

    .line 108
    .line 109
    invoke-direct {v13, v7, v0, v8}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    .line 113
    .line 114
    const/16 v7, 0xe

    .line 115
    .line 116
    invoke-direct {v0, v7, v8}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    new-instance v7, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;

    .line 120
    .line 121
    iget-boolean v12, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$1:Z

    .line 122
    .line 123
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4;-><init>(Lkotlinx/collections/immutable/ImmutableList;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;Z)V

    .line 124
    .line 125
    .line 126
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 127
    .line 128
    invoke-direct {p0, v2, v7, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v4, v13, v0, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v10}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->footer:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;

    .line 139
    .line 140
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;->text:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-nez p0, :cond_0

    .line 147
    .line 148
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 149
    .line 150
    const/16 v0, 0x17

    .line 151
    .line 152
    invoke-direct {p0, v0, v10, v11}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 153
    .line 154
    .line 155
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 156
    .line 157
    const v2, 0x35a5a8fd

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, v2, p0, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 161
    .line 162
    .line 163
    invoke-static {p1, v1, v0, v3}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 164
    .line 165
    .line 166
    :cond_0
    return-object v5

    .line 167
    :pswitch_1
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 168
    .line 169
    check-cast v8, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 170
    .line 171
    check-cast v7, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 172
    .line 173
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 176
    .line 177
    .line 178
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 179
    .line 180
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-nez p1, :cond_1

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_1
    if-eqz v4, :cond_2

    .line 194
    .line 195
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getCenter-F1C5BW0()J

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    iget-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 200
    .line 201
    invoke-virtual {p1}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 202
    .line 203
    .line 204
    move-result-wide v2

    .line 205
    invoke-virtual {p1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 210
    .line 211
    .line 212
    :try_start_0
    iget-object v4, p1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v4, Landroidx/camera/view/PreviewView$1;

    .line 215
    .line 216
    const/high16 v6, -0x40800000    # -1.0f

    .line 217
    .line 218
    const/high16 v9, 0x3f800000    # 1.0f

    .line 219
    .line 220
    invoke-virtual {v4, v6, v9, v0, v1}, Landroidx/camera/view/PreviewView$1;->scale-0AR0LA0(FFJ)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v8, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawImage-gbVJVH8(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/BlendModeColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .line 225
    .line 226
    invoke-static {p1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    .line 231
    move-object p0, v0

    .line 232
    invoke-static {p1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    :cond_2
    invoke-virtual {p0, v8, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawImage-gbVJVH8(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/BlendModeColorFilter;)V

    .line 237
    .line 238
    .line 239
    :goto_0
    return-object v5

    .line 240
    :pswitch_2
    check-cast v9, Landroidx/work/ListenableWorker;

    .line 241
    .line 242
    check-cast v8, Ljava/lang/String;

    .line 243
    .line 244
    check-cast v7, Landroidx/work/impl/WorkerWrapper;

    .line 245
    .line 246
    check-cast p1, Ljava/lang/Throwable;

    .line 247
    .line 248
    instance-of p0, p1, Landroidx/work/impl/WorkerStoppedException;

    .line 249
    .line 250
    if-eqz p0, :cond_3

    .line 251
    .line 252
    check-cast p1, Landroidx/work/impl/WorkerStoppedException;

    .line 253
    .line 254
    iget p0, p1, Landroidx/work/impl/WorkerStoppedException;->reason:I

    .line 255
    .line 256
    iget-object p1, v9, Landroidx/work/ListenableWorker;->mStopReason:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 257
    .line 258
    const/16 v0, -0x100

    .line 259
    .line 260
    invoke-virtual {p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 261
    .line 262
    .line 263
    :cond_3
    if-eqz v4, :cond_7

    .line 264
    .line 265
    if-eqz v8, :cond_7

    .line 266
    .line 267
    iget-object p0, v7, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 268
    .line 269
    iget-object p0, p0, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 270
    .line 271
    iget-object p1, v7, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 272
    .line 273
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 281
    .line 282
    const/16 v0, 0x1d

    .line 283
    .line 284
    if-lt p0, v0, :cond_4

    .line 285
    .line 286
    invoke-static {v8}, Lorg/slf4j/helpers/Util;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->endAsyncSection(Ljava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_4
    invoke-static {v8}, Lorg/slf4j/helpers/Util;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    const-string v2, "asyncTraceEnd"

    .line 299
    .line 300
    :try_start_1
    sget-object v0, Lorg/slf4j/helpers/Util;->asyncTraceEndMethod:Ljava/lang/reflect/Method;

    .line 301
    .line 302
    const/4 v4, 0x2

    .line 303
    const/4 v7, 0x0

    .line 304
    if-nez v0, :cond_5

    .line 305
    .line 306
    const-class v0, Landroid/os/Trace;

    .line 307
    .line 308
    new-array v8, v3, [Ljava/lang/Class;

    .line 309
    .line 310
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 311
    .line 312
    aput-object v9, v8, v7

    .line 313
    .line 314
    const-class v9, Ljava/lang/String;

    .line 315
    .line 316
    aput-object v9, v8, v6

    .line 317
    .line 318
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 319
    .line 320
    aput-object v9, v8, v4

    .line 321
    .line 322
    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    sput-object v0, Lorg/slf4j/helpers/Util;->asyncTraceEndMethod:Ljava/lang/reflect/Method;

    .line 327
    .line 328
    goto :goto_1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    move-object p0, v0

    .line 331
    goto :goto_2

    .line 332
    :cond_5
    :goto_1
    sget-object v0, Lorg/slf4j/helpers/Util;->asyncTraceEndMethod:Ljava/lang/reflect/Method;

    .line 333
    .line 334
    if-eqz v0, :cond_6

    .line 335
    .line 336
    sget-wide v8, Lorg/slf4j/helpers/Util;->traceTagApp:J

    .line 337
    .line 338
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    new-array v3, v3, [Ljava/lang/Object;

    .line 347
    .line 348
    aput-object v8, v3, v7

    .line 349
    .line 350
    aput-object p0, v3, v6

    .line 351
    .line 352
    aput-object p1, v3, v4

    .line 353
    .line 354
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    goto :goto_3

    .line 358
    :cond_6
    const-string p0, "Required value was null."

    .line 359
    .line 360
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 361
    .line 362
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 366
    :goto_2
    invoke-static {p0, v2}, Lorg/slf4j/helpers/Util;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :cond_7
    :goto_3
    return-object v5

    .line 370
    nop

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
