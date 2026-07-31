.class public final synthetic Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/platform/AndroidUriHandler;)V
    .locals 0

    .line 1
    const/16 p1, 0xf

    .line 2
    .line 3
    iput p1, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/NavBackStackEntry;Z)V
    .locals 0

    .line 14
    const/16 p3, 0x1c

    iput p3, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x7

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroidx/navigation/compose/DialogNavigator;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 19
    .line 20
    invoke-virtual {v0, p0, v5}, Landroidx/navigation/compose/DialogNavigator;->popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Landroidx/navigation/NavController$NavControllerNavigatorState;->backStackLock:Lokio/AsyncTimeout$Companion;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, v0, Landroidx/navigation/NavController$NavControllerNavigatorState;->_backStack:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 41
    .line 42
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Iterable;

    .line 47
    .line 48
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    move-object v6, v5

    .line 68
    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 69
    .line 70
    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_0

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    monitor-exit v1

    .line 90
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p0

    .line 93
    :goto_2
    monitor-exit v1

    .line 94
    throw p0

    .line 95
    :pswitch_1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Landroid/content/Context;

    .line 98
    .line 99
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const-string p0, "GlanceAppWidgetManager"

    .line 107
    .line 108
    const-string v1, ".preferences_pb"

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    new-instance v1, Ljava/io/File;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v2, "datastore/"

    .line 125
    .line 126
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v1

    .line 134
    :pswitch_2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 137
    .line 138
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 139
    .line 140
    iget-object v0, v0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;->composer:Landroidx/compose/runtime/GapComposer;

    .line 141
    .line 142
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->slotTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 143
    .line 144
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    move v3, v5

    .line 149
    :goto_3
    :try_start_1
    iget v6, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->groupsSize:I

    .line 150
    .line 151
    if-ge v3, v6, :cond_b

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_5

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->node(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    if-eq v6, p0, :cond_4

    .line 164
    .line 165
    instance-of v7, v6, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 166
    .line 167
    if-eqz v7, :cond_2

    .line 168
    .line 169
    check-cast v6, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_2
    move-object v6, v4

    .line 173
    :goto_4
    if-eqz v6, :cond_3

    .line 174
    .line 175
    iget-object v6, v6, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_3
    move-object v6, v4

    .line 179
    :goto_5
    if-ne v6, p0, :cond_5

    .line 180
    .line 181
    :cond_4
    new-instance p0, Landroidx/compose/runtime/tooling/ObjectLocation;

    .line 182
    .line 183
    invoke-direct {p0, v3, v4}, Landroidx/compose/runtime/tooling/ObjectLocation;-><init>(ILjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 187
    .line 188
    .line 189
    move-object v4, p0

    .line 190
    goto :goto_b

    .line 191
    :catchall_1
    move-exception p0

    .line 192
    goto/16 :goto_d

    .line 193
    .line 194
    :cond_5
    :try_start_2
    iget-object v6, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 195
    .line 196
    invoke-static {v6, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$slotAnchor([II)I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    add-int/lit8 v8, v3, 0x1

    .line 201
    .line 202
    iget v9, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 203
    .line 204
    if-ge v8, v9, :cond_6

    .line 205
    .line 206
    mul-int/lit8 v9, v8, 0x5

    .line 207
    .line 208
    add-int/lit8 v9, v9, 0x4

    .line 209
    .line 210
    aget v6, v6, v9

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_6
    iget v6, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 214
    .line 215
    :goto_6
    sub-int/2addr v6, v7

    .line 216
    move v7, v5

    .line 217
    :goto_7
    if-ge v7, v6, :cond_c

    .line 218
    .line 219
    invoke-virtual {v2, v3, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupGet(II)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    if-eq v9, p0, :cond_a

    .line 224
    .line 225
    instance-of v10, v9, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 226
    .line 227
    if-eqz v10, :cond_7

    .line 228
    .line 229
    check-cast v9, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_7
    move-object v9, v4

    .line 233
    :goto_8
    if-eqz v9, :cond_8

    .line 234
    .line 235
    iget-object v9, v9, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_8
    move-object v9, v4

    .line 239
    :goto_9
    if-ne v9, p0, :cond_9

    .line 240
    .line 241
    goto :goto_a

    .line 242
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_a
    :goto_a
    new-instance v4, Landroidx/compose/runtime/tooling/ObjectLocation;

    .line 246
    .line 247
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-direct {v4, v3, p0}, Landroidx/compose/runtime/tooling/ObjectLocation;-><init>(ILjava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 252
    .line 253
    .line 254
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 255
    .line 256
    .line 257
    goto :goto_b

    .line 258
    :cond_c
    move v3, v8

    .line 259
    goto :goto_3

    .line 260
    :goto_b
    if-eqz v4, :cond_d

    .line 261
    .line 262
    iget p0, v4, Landroidx/compose/runtime/tooling/ObjectLocation;->group:I

    .line 263
    .line 264
    iget-object v2, v4, Landroidx/compose/runtime/tooling/ObjectLocation;->dataOffset:Ljava/lang/Integer;

    .line 265
    .line 266
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    :try_start_3
    invoke-static {v1, p0, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->traceForGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;ILjava/lang/Integer;)Ljava/util/ArrayList;

    .line 271
    .line 272
    .line 273
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 274
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->parentStackTrace$runtime()Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    goto :goto_c

    .line 286
    :catchall_2
    move-exception p0

    .line 287
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 288
    .line 289
    .line 290
    throw p0

    .line 291
    :cond_d
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 292
    .line 293
    :goto_c
    new-instance v1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 294
    .line 295
    iget-boolean v0, v0, Landroidx/compose/runtime/GapComposer;->sourceMarkersEnabled:Z

    .line 296
    .line 297
    invoke-direct {v1, p0, v0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    .line 298
    .line 299
    .line 300
    return-object v1

    .line 301
    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 302
    .line 303
    .line 304
    throw p0

    .line 305
    :pswitch_3
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, Landroidx/core/view/MenuHostHelper;

    .line 308
    .line 309
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda1;

    .line 312
    .line 313
    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v0, Landroidx/compose/runtime/internal/AtomicInt;

    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_e

    .line 322
    .line 323
    goto :goto_e

    .line 324
    :cond_e
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    :goto_e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 328
    .line 329
    return-object p0

    .line 330
    :pswitch_4
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 333
    .line 334
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast p0, Landroidx/compose/runtime/MovableContentStateReference;

    .line 337
    .line 338
    iget-object v1, p0, Landroidx/compose/runtime/MovableContentStateReference;->content:Landroidx/compose/runtime/MovableContent;

    .line 339
    .line 340
    iget-object v2, p0, Landroidx/compose/runtime/MovableContentStateReference;->locals:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 341
    .line 342
    iget-object p0, p0, Landroidx/compose/runtime/MovableContentStateReference;->parameter:Ljava/lang/Object;

    .line 343
    .line 344
    invoke-virtual {v0, v1, v2, p0, v6}, Landroidx/compose/runtime/GapComposer;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Ljava/lang/Object;Z)V

    .line 345
    .line 346
    .line 347
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 348
    .line 349
    return-object p0

    .line 350
    :pswitch_5
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 353
    .line 354
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 357
    .line 358
    new-instance v1, Landroidx/compose/material3/internal/BasicTooltipKt$anchorSemantics$1$1$1;

    .line 359
    .line 360
    invoke-direct {v1, p0, v4, v5}, Landroidx/compose/material3/internal/BasicTooltipKt$anchorSemantics$1$1$1;-><init>(Landroidx/compose/material3/TooltipStateImpl;Lkotlin/coroutines/Continuation;I)V

    .line 361
    .line 362
    .line 363
    invoke-static {v0, v4, v4, v1, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 364
    .line 365
    .line 366
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 367
    .line 368
    return-object p0

    .line 369
    :pswitch_6
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v0, Landroidx/compose/material3/SheetState;

    .line 372
    .line 373
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 376
    .line 377
    iget-object v1, v0, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 378
    .line 379
    iget-object v1, v1, Landroidx/compose/material3/internal/AnchoredDraggableState;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    .line 380
    .line 381
    sget-object v5, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    .line 382
    .line 383
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    check-cast v1, Ljava/lang/Boolean;

    .line 388
    .line 389
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-eqz v1, :cond_f

    .line 394
    .line 395
    new-instance v1, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;

    .line 396
    .line 397
    invoke-direct {v1, v0, v4, v2}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;I)V

    .line 398
    .line 399
    .line 400
    invoke-static {p0, v4, v4, v1, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 401
    .line 402
    .line 403
    :cond_f
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 404
    .line 405
    return-object p0

    .line 406
    :pswitch_7
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 409
    .line 410
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 413
    .line 414
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    .line 419
    .line 420
    iget-wide v7, p0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 421
    .line 422
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    if-eqz p0, :cond_17

    .line 432
    .line 433
    iget-wide v11, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 434
    .line 435
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTransformedText$foundation()Landroidx/compose/ui/text/AnnotatedString;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    if-eqz p0, :cond_17

    .line 440
    .line 441
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 444
    .line 445
    .line 446
    move-result p0

    .line 447
    if-nez p0, :cond_10

    .line 448
    .line 449
    goto/16 :goto_12

    .line 450
    .line 451
    :cond_10
    iget-object p0, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 452
    .line 453
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object p0

    .line 457
    check-cast p0, Landroidx/compose/foundation/text/Handle;

    .line 458
    .line 459
    const/4 v2, -0x1

    .line 460
    if-nez p0, :cond_11

    .line 461
    .line 462
    move p0, v2

    .line 463
    goto :goto_f

    .line 464
    :cond_11
    sget-object v13, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 465
    .line 466
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 467
    .line 468
    .line 469
    move-result p0

    .line 470
    aget p0, v13, p0

    .line 471
    .line 472
    :goto_f
    if-eq p0, v2, :cond_17

    .line 473
    .line 474
    const-wide v13, 0xffffffffL

    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    const/16 v2, 0x20

    .line 480
    .line 481
    if-eq p0, v6, :cond_13

    .line 482
    .line 483
    if-eq p0, v1, :cond_13

    .line 484
    .line 485
    if-ne p0, v3, :cond_12

    .line 486
    .line 487
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 488
    .line 489
    .line 490
    move-result-object p0

    .line 491
    iget-wide v3, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 492
    .line 493
    sget p0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 494
    .line 495
    and-long/2addr v3, v13

    .line 496
    :goto_10
    long-to-int p0, v3

    .line 497
    goto :goto_11

    .line 498
    :cond_12
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_13

    .line 502
    .line 503
    :cond_13
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 504
    .line 505
    .line 506
    move-result-object p0

    .line 507
    iget-wide v3, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 508
    .line 509
    sget p0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 510
    .line 511
    shr-long/2addr v3, v2

    .line 512
    goto :goto_10

    .line 513
    :goto_11
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 514
    .line 515
    if-eqz v3, :cond_17

    .line 516
    .line 517
    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    if-nez v3, :cond_14

    .line 522
    .line 523
    goto :goto_12

    .line 524
    :cond_14
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 525
    .line 526
    if-eqz v4, :cond_17

    .line 527
    .line 528
    iget-object v4, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 529
    .line 530
    iget-object v4, v4, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 531
    .line 532
    if-nez v4, :cond_15

    .line 533
    .line 534
    goto :goto_12

    .line 535
    :cond_15
    iget-object v0, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 536
    .line 537
    invoke-interface {v0, p0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 538
    .line 539
    .line 540
    move-result p0

    .line 541
    iget-object v0, v4, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 542
    .line 543
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    invoke-static {p0, v5, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 548
    .line 549
    .line 550
    move-result p0

    .line 551
    invoke-virtual {v3, v11, v12}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->translateDecorationToInnerCoordinates-MK-Hz9U$foundation(J)J

    .line 552
    .line 553
    .line 554
    move-result-wide v4

    .line 555
    shr-long/2addr v4, v2

    .line 556
    long-to-int v0, v4

    .line 557
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    iget-object v3, v3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 562
    .line 563
    iget-object v4, v3, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 564
    .line 565
    invoke-virtual {v4, p0}, Landroidx/compose/ui/text/MultiParagraph;->getLineForOffset(I)I

    .line 566
    .line 567
    .line 568
    move-result p0

    .line 569
    invoke-virtual {v3, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    .line 570
    .line 571
    .line 572
    move-result v5

    .line 573
    invoke-virtual {v3, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    invoke-static {v0, v6, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 586
    .line 587
    .line 588
    move-result v3

    .line 589
    const-wide/16 v5, 0x0

    .line 590
    .line 591
    invoke-static {v7, v8, v5, v6}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 592
    .line 593
    .line 594
    move-result v5

    .line 595
    if-nez v5, :cond_16

    .line 596
    .line 597
    sub-float/2addr v0, v3

    .line 598
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    shr-long v5, v7, v2

    .line 603
    .line 604
    long-to-int v5, v5

    .line 605
    div-int/2addr v5, v1

    .line 606
    int-to-float v1, v5

    .line 607
    cmpl-float v0, v0, v1

    .line 608
    .line 609
    if-lez v0, :cond_16

    .line 610
    .line 611
    goto :goto_12

    .line 612
    :cond_16
    invoke-virtual {v4, p0}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    invoke-virtual {v4, p0}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    .line 617
    .line 618
    .line 619
    move-result p0

    .line 620
    sub-float/2addr p0, v0

    .line 621
    const/high16 v1, 0x40000000    # 2.0f

    .line 622
    .line 623
    div-float/2addr p0, v1

    .line 624
    add-float/2addr p0, v0

    .line 625
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    int-to-long v0, v0

    .line 630
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 631
    .line 632
    .line 633
    move-result p0

    .line 634
    int-to-long v3, p0

    .line 635
    shl-long/2addr v0, v2

    .line 636
    and-long/2addr v3, v13

    .line 637
    or-long v9, v0, v3

    .line 638
    .line 639
    :cond_17
    :goto_12
    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    .line 640
    .line 641
    invoke-direct {v4, v9, v10}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 642
    .line 643
    .line 644
    :goto_13
    return-object v4

    .line 645
    :pswitch_8
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 646
    .line 647
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 648
    .line 649
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 650
    .line 651
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 652
    .line 653
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 654
    .line 655
    new-instance v2, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;

    .line 656
    .line 657
    invoke-direct {v2, v6, v4, p0}, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 658
    .line 659
    .line 660
    invoke-static {v0, v4, v1, v2, v6}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 661
    .line 662
    .line 663
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 664
    .line 665
    return-object p0

    .line 666
    :pswitch_9
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v0, Landroid/content/Context;

    .line 669
    .line 670
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast p0, Landroid/view/textclassifier/TextClassification;

    .line 673
    .line 674
    invoke-static {v0, p0}, Landroidx/compose/foundation/text/contextmenu/internal/TextClassificationHelperApi28;->sendLegacyIntent(Landroid/content/Context;Landroid/view/textclassifier/TextClassification;)V

    .line 675
    .line 676
    .line 677
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 678
    .line 679
    return-object p0

    .line 680
    :pswitch_a
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 683
    .line 684
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 687
    .line 688
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->onClick:Lkotlin/jvm/functions/Function1;

    .line 689
    .line 690
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 694
    .line 695
    return-object p0

    .line 696
    :pswitch_b
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 697
    .line 698
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 699
    .line 700
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 703
    .line 704
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object p0

    .line 708
    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 709
    .line 710
    invoke-interface {v0, p0}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;->position-tuRUvjQ(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    .line 711
    .line 712
    .line 713
    move-result-wide v0

    .line 714
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    .line 715
    .line 716
    .line 717
    move-result-wide v0

    .line 718
    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    .line 719
    .line 720
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 721
    .line 722
    .line 723
    return-object p0

    .line 724
    :pswitch_c
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 725
    .line 726
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 727
    .line 728
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 729
    .line 730
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 731
    .line 732
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object p0

    .line 736
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 737
    .line 738
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 739
    .line 740
    return-object p0

    .line 741
    :pswitch_d
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 744
    .line 745
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 746
    .line 747
    check-cast p0, Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 748
    .line 749
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 750
    .line 751
    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation;

    .line 752
    .line 753
    instance-of v1, v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 754
    .line 755
    if-eqz v1, :cond_18

    .line 756
    .line 757
    :try_start_4
    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 758
    .line 759
    iget-object v0, v0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 760
    .line 761
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 762
    .line 763
    .line 764
    :try_start_5
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidUriHandler;->context:Landroid/content/Context;

    .line 765
    .line 766
    new-instance v1, Landroid/content/Intent;

    .line 767
    .line 768
    const-string v2, "android.intent.action.VIEW"

    .line 769
    .line 770
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 778
    .line 779
    .line 780
    goto :goto_14

    .line 781
    :catch_0
    move-exception p0

    .line 782
    :try_start_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 783
    .line 784
    const-string v2, "Can\'t open "

    .line 785
    .line 786
    const/16 v3, 0x2e

    .line 787
    .line 788
    invoke-static {v3, v2, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 793
    .line 794
    .line 795
    throw v1
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    .line 796
    :catch_1
    :cond_18
    :goto_14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 797
    .line 798
    return-object p0

    .line 799
    :pswitch_e
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    .line 802
    .line 803
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 804
    .line 805
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    .line 806
    .line 807
    if-eqz v0, :cond_1c

    .line 808
    .line 809
    iget-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->annotators:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 810
    .line 811
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    .line 812
    .line 813
    .line 814
    move-result v2

    .line 815
    iget-object v3, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 816
    .line 817
    if-eqz v2, :cond_19

    .line 818
    .line 819
    goto :goto_16

    .line 820
    :cond_19
    new-instance v2, Landroidx/compose/foundation/text/TextAnnotatorScope;

    .line 821
    .line 822
    invoke-direct {v2, v3}, Landroidx/compose/foundation/text/TextAnnotatorScope;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 826
    .line 827
    .line 828
    move-result v3

    .line 829
    :goto_15
    if-ge v5, v3, :cond_1a

    .line 830
    .line 831
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v4

    .line 835
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 836
    .line 837
    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    add-int/lit8 v5, v5, 0x1

    .line 841
    .line 842
    goto :goto_15

    .line 843
    :cond_1a
    iget-object v3, v2, Landroidx/compose/foundation/text/TextAnnotatorScope;->styledText:Landroidx/compose/ui/text/AnnotatedString;

    .line 844
    .line 845
    :goto_16
    iput-object v3, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 846
    .line 847
    if-nez v3, :cond_1b

    .line 848
    .line 849
    goto :goto_17

    .line 850
    :cond_1b
    move-object p0, v3

    .line 851
    :cond_1c
    :goto_17
    return-object p0

    .line 852
    :pswitch_f
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 853
    .line 854
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 855
    .line 856
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 859
    .line 860
    iget-wide v1, v0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 861
    .line 862
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    check-cast v3, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 867
    .line 868
    iget-wide v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 869
    .line 870
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    .line 871
    .line 872
    .line 873
    move-result v1

    .line 874
    if-eqz v1, :cond_1d

    .line 875
    .line 876
    iget-object v1, v0, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    .line 877
    .line 878
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v2

    .line 882
    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 883
    .line 884
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    .line 885
    .line 886
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v1

    .line 890
    if-nez v1, :cond_1e

    .line 891
    .line 892
    :cond_1d
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 893
    .line 894
    .line 895
    :cond_1e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 896
    .line 897
    return-object p0

    .line 898
    :pswitch_10
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 899
    .line 900
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 901
    .line 902
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 903
    .line 904
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 905
    .line 906
    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 907
    .line 908
    sget-object v2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 909
    .line 910
    invoke-direct {v1, v0, v2, p0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;Landroidx/compose/runtime/saveable/SaveableStateHolder;)V

    .line 911
    .line 912
    .line 913
    return-object v1

    .line 914
    :pswitch_11
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 915
    .line 916
    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 917
    .line 918
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 919
    .line 920
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 921
    .line 922
    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v0

    .line 926
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 927
    .line 928
    new-instance v1, Lde/cketti/changelog/XmlParser;

    .line 929
    .line 930
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 931
    .line 932
    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 933
    .line 934
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v2

    .line 938
    check-cast v2, Lkotlin/ranges/IntRange;

    .line 939
    .line 940
    invoke-direct {v1, v2, v0}, Lde/cketti/changelog/XmlParser;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V

    .line 941
    .line 942
    .line 943
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 944
    .line 945
    invoke-direct {v2, p0, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Lde/cketti/changelog/XmlParser;)V

    .line 946
    .line 947
    .line 948
    return-object v2

    .line 949
    :pswitch_12
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 950
    .line 951
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 952
    .line 953
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 954
    .line 955
    check-cast p0, Landroidx/compose/foundation/FocusableNode;

    .line 956
    .line 957
    sget-object v1, Landroidx/compose/ui/layout/PinnableContainerKt;->LocalPinnableContainer:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 958
    .line 959
    invoke-static {p0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object p0

    .line 963
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 964
    .line 965
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 966
    .line 967
    return-object p0

    .line 968
    :pswitch_13
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 969
    .line 970
    check-cast v0, Landroidx/compose/foundation/BackgroundNode;

    .line 971
    .line 972
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 973
    .line 974
    check-cast p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 975
    .line 976
    iget-object v1, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 977
    .line 978
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 979
    .line 980
    iget-object v2, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 981
    .line 982
    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 983
    .line 984
    .line 985
    move-result-wide v2

    .line 986
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 987
    .line 988
    .line 989
    move-result-object v4

    .line 990
    invoke-interface {v1, v2, v3, v4, p0}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;

    .line 991
    .line 992
    .line 993
    move-result-object p0

    .line 994
    iput-object p0, v0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/ColorKt;

    .line 995
    .line 996
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 997
    .line 998
    return-object p0

    .line 999
    :pswitch_14
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1000
    .line 1001
    check-cast v0, Lkotlinx/coroutines/channels/Channel;

    .line 1002
    .line 1003
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1004
    .line 1005
    invoke-interface {v0, p0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1009
    .line 1010
    return-object p0

    .line 1011
    :pswitch_15
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1012
    .line 1013
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 1014
    .line 1015
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1016
    .line 1017
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;

    .line 1018
    .line 1019
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 1020
    .line 1021
    .line 1022
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1023
    .line 1024
    return-object p0

    .line 1025
    :pswitch_16
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1026
    .line 1027
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    .line 1028
    .line 1029
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1030
    .line 1031
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;

    .line 1032
    .line 1033
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->manager:Landroid/hardware/camera2/CameraManager;

    .line 1034
    .line 1035
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 1036
    .line 1037
    .line 1038
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1039
    .line 1040
    return-object p0

    .line 1041
    :pswitch_17
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1042
    .line 1043
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 1044
    .line 1045
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1046
    .line 1047
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;

    .line 1048
    .line 1049
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 1050
    .line 1051
    .line 1052
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1053
    .line 1054
    return-object p0

    .line 1055
    :pswitch_18
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1056
    .line 1057
    check-cast v0, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 1058
    .line 1059
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1060
    .line 1061
    check-cast p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 1062
    .line 1063
    invoke-virtual {v0, p0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1067
    .line 1068
    return-object p0

    .line 1069
    :pswitch_19
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1070
    .line 1071
    check-cast v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    .line 1072
    .line 1073
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1074
    .line 1075
    check-cast p0, Ljava/util/List;

    .line 1076
    .line 1077
    sget-object v1, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_STREAM_SPEC_OPTION:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 1078
    .line 1079
    iget-object v0, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 1080
    .line 1081
    invoke-static {v0, p0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->areStreamUseCasesAvailableForSurfaceConfigs(Landroidx/camera/camera2/pipe/CameraMetadata;Ljava/util/List;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result p0

    .line 1085
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1086
    .line 1087
    .line 1088
    move-result-object p0

    .line 1089
    return-object p0

    .line 1090
    :pswitch_1a
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1091
    .line 1092
    check-cast v0, Landroidx/activity/compose/ComposePredictiveBackHandler;

    .line 1093
    .line 1094
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1095
    .line 1096
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 1097
    .line 1098
    iput-object p0, v0, Landroidx/activity/compose/ComposePredictiveBackHandler;->currentOnBack:Lkotlin/jvm/functions/Function2;

    .line 1099
    .line 1100
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1101
    .line 1102
    return-object p0

    .line 1103
    :pswitch_1b
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1104
    .line 1105
    check-cast v0, Landroidx/activity/compose/ComposeBackHandler;

    .line 1106
    .line 1107
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1108
    .line 1109
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 1110
    .line 1111
    iput-object p0, v0, Landroidx/activity/compose/ComposeBackHandler;->currentOnBackCompleted:Lkotlin/jvm/functions/Function0;

    .line 1112
    .line 1113
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1114
    .line 1115
    return-object p0

    .line 1116
    :pswitch_1c
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1117
    .line 1118
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 1119
    .line 1120
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1121
    .line 1122
    check-cast p0, Landroidx/compose/runtime/CompositionImpl;

    .line 1123
    .line 1124
    iget-object v3, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 1125
    .line 1126
    iget-object v0, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 1127
    .line 1128
    array-length v4, v0

    .line 1129
    sub-int/2addr v4, v1

    .line 1130
    if-ltz v4, :cond_22

    .line 1131
    .line 1132
    move v1, v5

    .line 1133
    :goto_18
    aget-wide v6, v0, v1

    .line 1134
    .line 1135
    not-long v8, v6

    .line 1136
    shl-long/2addr v8, v2

    .line 1137
    and-long/2addr v8, v6

    .line 1138
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    and-long/2addr v8, v10

    .line 1144
    cmp-long v8, v8, v10

    .line 1145
    .line 1146
    if-eqz v8, :cond_21

    .line 1147
    .line 1148
    sub-int v8, v1, v4

    .line 1149
    .line 1150
    not-int v8, v8

    .line 1151
    ushr-int/lit8 v8, v8, 0x1f

    .line 1152
    .line 1153
    const/16 v9, 0x8

    .line 1154
    .line 1155
    rsub-int/lit8 v8, v8, 0x8

    .line 1156
    .line 1157
    move v10, v5

    .line 1158
    :goto_19
    if-ge v10, v8, :cond_20

    .line 1159
    .line 1160
    const-wide/16 v11, 0xff

    .line 1161
    .line 1162
    and-long/2addr v11, v6

    .line 1163
    const-wide/16 v13, 0x80

    .line 1164
    .line 1165
    cmp-long v11, v11, v13

    .line 1166
    .line 1167
    if-gez v11, :cond_1f

    .line 1168
    .line 1169
    shl-int/lit8 v11, v1, 0x3

    .line 1170
    .line 1171
    add-int/2addr v11, v10

    .line 1172
    aget-object v11, v3, v11

    .line 1173
    .line 1174
    invoke-virtual {p0, v11}, Landroidx/compose/runtime/CompositionImpl;->recordWriteOf(Ljava/lang/Object;)V

    .line 1175
    .line 1176
    .line 1177
    :cond_1f
    shr-long/2addr v6, v9

    .line 1178
    add-int/lit8 v10, v10, 0x1

    .line 1179
    .line 1180
    goto :goto_19

    .line 1181
    :cond_20
    if-ne v8, v9, :cond_22

    .line 1182
    .line 1183
    :cond_21
    if-eq v1, v4, :cond_22

    .line 1184
    .line 1185
    add-int/lit8 v1, v1, 0x1

    .line 1186
    .line 1187
    goto :goto_18

    .line 1188
    :cond_22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1189
    .line 1190
    return-object p0

    .line 1191
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
