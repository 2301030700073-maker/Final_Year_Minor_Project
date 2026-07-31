.class public final synthetic Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x2

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    iget-object p0, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lapp/k9mail/K9App;

    .line 16
    .line 17
    check-cast p1, Lorg/koin/core/scope/Scope;

    .line 18
    .line 19
    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_0
    check-cast p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 29
    .line 30
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 31
    .line 32
    check-cast p2, Landroidx/compose/ui/unit/IntSize;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getTargetState()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-wide v2, 0xffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/16 v0, 0x20

    .line 47
    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    new-instance p0, Landroidx/compose/animation/core/KeyframesSpec;

    .line 51
    .line 52
    new-instance v4, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 53
    .line 54
    invoke-direct {v4}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-wide v5, p2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 58
    .line 59
    shr-long/2addr v5, v0

    .line 60
    long-to-int p2, v5

    .line 61
    iget-wide v5, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 62
    .line 63
    and-long/2addr v5, v2

    .line 64
    long-to-int p1, v5

    .line 65
    int-to-long v5, p2

    .line 66
    shl-long/2addr v5, v0

    .line 67
    int-to-long p1, p1

    .line 68
    and-long/2addr p1, v2

    .line 69
    or-long/2addr p1, v5

    .line 70
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 71
    .line 72
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 73
    .line 74
    .line 75
    iget p1, v4, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 76
    .line 77
    div-int/2addr p1, v1

    .line 78
    invoke-virtual {v4, p1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v4}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    new-instance p0, Landroidx/compose/animation/core/KeyframesSpec;

    .line 86
    .line 87
    new-instance p2, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 88
    .line 89
    invoke-direct {p2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-wide v4, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 93
    .line 94
    shr-long v6, v4, v0

    .line 95
    .line 96
    long-to-int p1, v6

    .line 97
    and-long/2addr v4, v2

    .line 98
    long-to-int v4, v4

    .line 99
    int-to-long v5, p1

    .line 100
    shl-long/2addr v5, v0

    .line 101
    int-to-long v7, v4

    .line 102
    and-long/2addr v2, v7

    .line 103
    or-long/2addr v2, v5

    .line 104
    new-instance p1, Landroidx/compose/ui/unit/IntSize;

    .line 105
    .line 106
    invoke-direct {p1, v2, v3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 107
    .line 108
    .line 109
    iget v0, p2, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 110
    .line 111
    div-int/2addr v0, v1

    .line 112
    invoke-virtual {p2, v0, p1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, p2}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-object p0

    .line 119
    :pswitch_1
    check-cast p0, Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;

    .line 120
    .line 121
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 122
    .line 123
    check-cast p2, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    and-int/lit8 v0, p2, 0x3

    .line 130
    .line 131
    if-eq v0, v2, :cond_1

    .line 132
    .line 133
    move v4, v6

    .line 134
    :cond_1
    and-int/2addr p2, v6

    .line 135
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 136
    .line 137
    invoke-virtual {p1, p2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_2

    .line 142
    .line 143
    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 144
    .line 145
    const-string v0, "ins_snackbar_host"

    .line 146
    .line 147
    invoke-static {p2, v0}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    const/16 v0, 0x30

    .line 152
    .line 153
    invoke-static {p0, p2, p1, v0}, Landroidx/work/OperationKt;->SnackbarHost(Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 158
    .line 159
    .line 160
    :goto_1
    return-object v3

    .line 161
    :pswitch_2
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 162
    .line 163
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 164
    .line 165
    check-cast p2, Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    and-int/lit8 v0, p2, 0x3

    .line 172
    .line 173
    if-eq v0, v2, :cond_3

    .line 174
    .line 175
    move v0, v6

    .line 176
    goto :goto_2

    .line 177
    :cond_3
    move v0, v4

    .line 178
    :goto_2
    and-int/2addr p2, v6

    .line 179
    move-object v10, p1

    .line 180
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 181
    .line 182
    invoke-virtual {v10, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_8

    .line 187
    .line 188
    instance-of p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 189
    .line 190
    if-eqz p1, :cond_5

    .line 191
    .line 192
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 193
    .line 194
    iget-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 195
    .line 196
    iget-object p1, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 197
    .line 198
    sget-object p2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->REGULAR:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 199
    .line 200
    if-ne p1, p2, :cond_4

    .line 201
    .line 202
    iget-boolean p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->isInTopGroup:Z

    .line 203
    .line 204
    if-eqz p2, :cond_4

    .line 205
    .line 206
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->accountId:Ljava/lang/String;

    .line 207
    .line 208
    if-eqz p0, :cond_4

    .line 209
    .line 210
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->FavoriteFolder:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 211
    .line 212
    :goto_3
    move-object v7, p0

    .line 213
    goto :goto_5

    .line 214
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    packed-switch p0, :pswitch_data_1

    .line 219
    .line 220
    .line 221
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 222
    .line 223
    .line 224
    :goto_4
    move-object v3, v5

    .line 225
    goto :goto_6

    .line 226
    :pswitch_3
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Report:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :pswitch_4
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Archive:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :pswitch_5
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Drafts:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :pswitch_6
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Delete:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :pswitch_7
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Send:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :pswitch_8
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Outbox:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :pswitch_9
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Inbox:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :pswitch_a
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Folder:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_5
    instance-of p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;

    .line 251
    .line 252
    if-eqz p1, :cond_7

    .line 253
    .line 254
    sget-object p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/folder/FolderListItemKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 255
    .line 256
    aget p0, p0, v4

    .line 257
    .line 258
    if-ne p0, v6, :cond_6

    .line 259
    .line 260
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->AllInbox:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :goto_5
    const/4 v11, 0x0

    .line 264
    const/16 v12, 0xe

    .line 265
    .line 266
    const/4 v8, 0x0

    .line 267
    const/4 v9, 0x0

    .line 268
    invoke-static/range {v7 .. v12}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_6
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_7
    const-string p1, "Unknown display folder type: "

    .line 277
    .line 278
    invoke-static {p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 283
    .line 284
    .line 285
    :goto_6
    return-object v3

    .line 286
    :pswitch_b
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 287
    .line 288
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 289
    .line 290
    check-cast p2, Ljava/lang/Integer;

    .line 291
    .line 292
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    and-int/lit8 v0, p2, 0x3

    .line 297
    .line 298
    if-eq v0, v2, :cond_9

    .line 299
    .line 300
    move v0, v6

    .line 301
    goto :goto_7

    .line 302
    :cond_9
    move v0, v4

    .line 303
    :goto_7
    and-int/2addr p2, v6

    .line 304
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 305
    .line 306
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 307
    .line 308
    .line 309
    move-result p2

    .line 310
    if-eqz p2, :cond_a

    .line 311
    .line 312
    invoke-static {p0, v5, p1, v4}, Lorg/minidns/util/Hex;->AccountLabel(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 313
    .line 314
    .line 315
    goto :goto_8

    .line 316
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 317
    .line 318
    .line 319
    :goto_8
    return-object v3

    .line 320
    :pswitch_c
    check-cast p0, Landroidx/room/InvalidationTracker$implementation$1;

    .line 321
    .line 322
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 323
    .line 324
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ExitSelectionMode;

    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    sget-object p2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ResetToolbarActionMode;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ResetToolbarActionMode;

    .line 333
    .line 334
    invoke-virtual {p0, p2}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    iget-object p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 338
    .line 339
    iget-object p2, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 340
    .line 341
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;->messages:Lkotlinx/collections/immutable/ImmutableList;

    .line 342
    .line 343
    new-instance v0, Ljava/util/ArrayList;

    .line 344
    .line 345
    const/16 v1, 0xa

    .line 346
    .line 347
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    .line 353
    .line 354
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_b

    .line 363
    .line 364
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    move-object v2, v1

    .line 369
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 370
    .line 371
    const/4 v6, 0x0

    .line 372
    const v7, 0xdfff

    .line 373
    .line 374
    .line 375
    const/4 v3, 0x0

    .line 376
    const/4 v4, 0x0

    .line 377
    const/4 v5, 0x0

    .line 378
    invoke-static/range {v2 .. v7}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;ZZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_b
    invoke-static {v0}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 391
    .line 392
    invoke-direct {v0, p0, p2, p1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 393
    .line 394
    .line 395
    return-object v0

    .line 396
    :pswitch_d
    check-cast p0, Landroidx/room/InvalidationTracker$implementation$1;

    .line 397
    .line 398
    move-object v0, p1

    .line 399
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 400
    .line 401
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateLoadingProgress;

    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    iget-object p1, p2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateLoadingProgress;->messages:Ljava/util/List;

    .line 410
    .line 411
    iget v1, p2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateLoadingProgress;->progress:F

    .line 412
    .line 413
    const/high16 v2, 0x3f800000    # 1.0f

    .line 414
    .line 415
    cmpg-float v1, v1, v2

    .line 416
    .line 417
    if-nez v1, :cond_c

    .line 418
    .line 419
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$MessagesLoaded;

    .line 420
    .line 421
    invoke-direct {v1, p1}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$MessagesLoaded;-><init>(Ljava/util/List;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0, v1}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    :cond_c
    iget v1, p2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateLoadingProgress;->progress:F

    .line 428
    .line 429
    invoke-static {p1}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    const/16 v5, 0x1e

    .line 434
    .line 435
    const/4 v2, 0x0

    .line 436
    const/4 v3, 0x0

    .line 437
    invoke-static/range {v0 .. v5}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;FLnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;I)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    return-object p0

    .line 442
    :pswitch_e
    check-cast p0, Lkotlinx/datetime/internal/format/SignedFormatStructure;

    .line 443
    .line 444
    check-cast p2, Ljava/lang/Boolean;

    .line 445
    .line 446
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 447
    .line 448
    .line 449
    move-result p2

    .line 450
    iget-object p0, p0, Lkotlinx/datetime/internal/format/SignedFormatStructure;->fieldSigns:Ljava/util/Set;

    .line 451
    .line 452
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    if-eqz v0, :cond_e

    .line 461
    .line 462
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    check-cast v0, Lkotlinx/datetime/format/OffsetFields$sign$1;

    .line 467
    .line 468
    iget-object v1, v0, Lkotlinx/datetime/format/OffsetFields$sign$1;->isNegative:Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 469
    .line 470
    iget-object v1, v1, Lkotlinx/datetime/internal/format/PropertyAccessor;->property:Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 471
    .line 472
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 477
    .line 478
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    iget-object v0, v0, Lkotlinx/datetime/format/OffsetFields$sign$1;->isNegative:Lkotlinx/datetime/internal/format/PropertyAccessor;

    .line 483
    .line 484
    if-eq p2, v1, :cond_d

    .line 485
    .line 486
    move v1, v6

    .line 487
    goto :goto_b

    .line 488
    :cond_d
    move v1, v4

    .line 489
    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-virtual {v0, p1, v1}, Lkotlinx/datetime/internal/format/PropertyAccessor;->trySetWithoutReassigning(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    goto :goto_a

    .line 497
    :cond_e
    return-object v3

    .line 498
    :pswitch_f
    check-cast p0, Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 499
    .line 500
    check-cast p1, Ljava/lang/Integer;

    .line 501
    .line 502
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 507
    .line 508
    invoke-interface {p2}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContext:Lkotlin/coroutines/CoroutineContext;

    .line 513
    .line 514
    invoke-interface {p0, p1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 515
    .line 516
    .line 517
    move-result-object p0

    .line 518
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 519
    .line 520
    if-eq p1, v1, :cond_10

    .line 521
    .line 522
    if-eq p2, p0, :cond_f

    .line 523
    .line 524
    const/high16 v0, -0x80000000

    .line 525
    .line 526
    goto :goto_f

    .line 527
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 528
    .line 529
    goto :goto_f

    .line 530
    :cond_10
    move-object v2, p0

    .line 531
    check-cast v2, Lkotlinx/coroutines/Job;

    .line 532
    .line 533
    check-cast p2, Lkotlinx/coroutines/Job;

    .line 534
    .line 535
    :goto_c
    if-nez p2, :cond_11

    .line 536
    .line 537
    goto :goto_e

    .line 538
    :cond_11
    if-ne p2, v2, :cond_12

    .line 539
    .line 540
    goto :goto_d

    .line 541
    :cond_12
    instance-of p0, p2, Lkotlinx/coroutines/internal/ScopeCoroutine;

    .line 542
    .line 543
    if-nez p0, :cond_14

    .line 544
    .line 545
    :goto_d
    move-object v5, p2

    .line 546
    :goto_e
    if-ne v5, v2, :cond_13

    .line 547
    .line 548
    if-nez v2, :cond_f

    .line 549
    .line 550
    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 551
    .line 552
    .line 553
    move-result-object p0

    .line 554
    return-object p0

    .line 555
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 556
    .line 557
    new-instance p1, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    const-string p2, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    .line 560
    .line 561
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string p2, ", expected child of "

    .line 568
    .line 569
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string p2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    .line 576
    .line 577
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    throw p0

    .line 592
    :cond_14
    check-cast p2, Lkotlinx/coroutines/internal/ScopeCoroutine;

    .line 593
    .line 594
    invoke-virtual {p2}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    if-eqz p0, :cond_15

    .line 599
    .line 600
    invoke-interface {p0}, Lkotlinx/coroutines/ChildHandle;->getParent()Lkotlinx/coroutines/Job;

    .line 601
    .line 602
    .line 603
    move-result-object p0

    .line 604
    move-object p2, p0

    .line 605
    goto :goto_c

    .line 606
    :cond_15
    move-object p2, v5

    .line 607
    goto :goto_c

    .line 608
    :pswitch_10
    check-cast p0, Ljava/util/List;

    .line 609
    .line 610
    move-object v9, p1

    .line 611
    check-cast v9, Ljava/lang/CharSequence;

    .line 612
    .line 613
    check-cast p2, Ljava/lang/Integer;

    .line 614
    .line 615
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 616
    .line 617
    .line 618
    move-result p1

    .line 619
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    .line 621
    .line 622
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 623
    .line 624
    .line 625
    move-result p2

    .line 626
    if-ne p2, v6, :cond_18

    .line 627
    .line 628
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object p0

    .line 632
    check-cast p0, Ljava/lang/String;

    .line 633
    .line 634
    invoke-static {v9, p0, p1, v4, v1}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 635
    .line 636
    .line 637
    move-result p1

    .line 638
    if-gez p1, :cond_17

    .line 639
    .line 640
    :cond_16
    move-object p2, v5

    .line 641
    goto/16 :goto_14

    .line 642
    .line 643
    :cond_17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    new-instance p2, Lkotlin/Pair;

    .line 648
    .line 649
    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    goto/16 :goto_14

    .line 653
    .line 654
    :cond_18
    new-instance p2, Lkotlin/ranges/IntRange;

    .line 655
    .line 656
    if-gez p1, :cond_19

    .line 657
    .line 658
    move p1, v4

    .line 659
    :cond_19
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    invoke-direct {p2, p1, v0, v6}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 664
    .line 665
    .line 666
    instance-of v0, v9, Ljava/lang/String;

    .line 667
    .line 668
    iget v1, p2, Lkotlin/ranges/IntProgression;->step:I

    .line 669
    .line 670
    iget p2, p2, Lkotlin/ranges/IntProgression;->last:I

    .line 671
    .line 672
    if-eqz v0, :cond_1f

    .line 673
    .line 674
    if-lez v1, :cond_1a

    .line 675
    .line 676
    if-le p1, p2, :cond_1b

    .line 677
    .line 678
    :cond_1a
    if-gez v1, :cond_16

    .line 679
    .line 680
    if-gt p2, p1, :cond_16

    .line 681
    .line 682
    :cond_1b
    :goto_10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 687
    .line 688
    .line 689
    move-result v2

    .line 690
    if-eqz v2, :cond_1d

    .line 691
    .line 692
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    move-object v3, v2

    .line 697
    check-cast v3, Ljava/lang/String;

    .line 698
    .line 699
    move-object v6, v9

    .line 700
    check-cast v6, Ljava/lang/String;

    .line 701
    .line 702
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 703
    .line 704
    .line 705
    move-result v7

    .line 706
    invoke-virtual {v3, v4, v6, p1, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    if-eqz v3, :cond_1c

    .line 711
    .line 712
    goto :goto_11

    .line 713
    :cond_1d
    move-object v2, v5

    .line 714
    :goto_11
    check-cast v2, Ljava/lang/String;

    .line 715
    .line 716
    if-eqz v2, :cond_1e

    .line 717
    .line 718
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 719
    .line 720
    .line 721
    move-result-object p0

    .line 722
    new-instance p2, Lkotlin/Pair;

    .line 723
    .line 724
    invoke-direct {p2, p0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    goto :goto_14

    .line 728
    :cond_1e
    if-eq p1, p2, :cond_16

    .line 729
    .line 730
    add-int/2addr p1, v1

    .line 731
    goto :goto_10

    .line 732
    :cond_1f
    if-lez v1, :cond_20

    .line 733
    .line 734
    if-le p1, p2, :cond_21

    .line 735
    .line 736
    :cond_20
    if-gez v1, :cond_16

    .line 737
    .line 738
    if-gt p2, p1, :cond_16

    .line 739
    .line 740
    :cond_21
    move v10, p1

    .line 741
    :goto_12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    :cond_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-eqz v0, :cond_23

    .line 750
    .line 751
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    move-object v7, v0

    .line 756
    check-cast v7, Ljava/lang/String;

    .line 757
    .line 758
    const/4 v8, 0x0

    .line 759
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 760
    .line 761
    .line 762
    move-result v11

    .line 763
    const/4 v12, 0x0

    .line 764
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    if-eqz v2, :cond_22

    .line 769
    .line 770
    goto :goto_13

    .line 771
    :cond_23
    move-object v0, v5

    .line 772
    :goto_13
    check-cast v0, Ljava/lang/String;

    .line 773
    .line 774
    if-eqz v0, :cond_24

    .line 775
    .line 776
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 777
    .line 778
    .line 779
    move-result-object p0

    .line 780
    new-instance p2, Lkotlin/Pair;

    .line 781
    .line 782
    invoke-direct {p2, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 783
    .line 784
    .line 785
    goto :goto_14

    .line 786
    :cond_24
    if-eq v10, p2, :cond_16

    .line 787
    .line 788
    add-int/2addr v10, v1

    .line 789
    goto :goto_12

    .line 790
    :goto_14
    if-eqz p2, :cond_25

    .line 791
    .line 792
    iget-object p0, p2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 793
    .line 794
    iget-object p1, p2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 795
    .line 796
    check-cast p1, Ljava/lang/String;

    .line 797
    .line 798
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 799
    .line 800
    .line 801
    move-result p1

    .line 802
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 803
    .line 804
    .line 805
    move-result-object p1

    .line 806
    new-instance v5, Lkotlin/Pair;

    .line 807
    .line 808
    invoke-direct {v5, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 809
    .line 810
    .line 811
    :cond_25
    return-object v5

    .line 812
    :pswitch_11
    check-cast p0, [C

    .line 813
    .line 814
    check-cast p1, Ljava/lang/CharSequence;

    .line 815
    .line 816
    check-cast p2, Ljava/lang/Integer;

    .line 817
    .line 818
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 819
    .line 820
    .line 821
    move-result p2

    .line 822
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    invoke-static {p1, p0, p2, v4}, Lkotlin/text/StringsKt;->indexOfAny(Ljava/lang/CharSequence;[CIZ)I

    .line 826
    .line 827
    .line 828
    move-result p0

    .line 829
    if-gez p0, :cond_26

    .line 830
    .line 831
    goto :goto_15

    .line 832
    :cond_26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 833
    .line 834
    .line 835
    move-result-object p0

    .line 836
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 837
    .line 838
    .line 839
    move-result-object p1

    .line 840
    new-instance v5, Lkotlin/Pair;

    .line 841
    .line 842
    invoke-direct {v5, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 843
    .line 844
    .line 845
    :goto_15
    return-object v5

    .line 846
    nop

    .line 847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
