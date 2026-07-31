.class public final synthetic Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object v7, v0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v8, v0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, v0, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 21
    .line 22
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 23
    .line 24
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    instance-of v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 32
    .line 33
    iget-object v1, v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->accountId:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    xor-int/2addr v0, v4

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v8, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :goto_0
    return-object v6

    .line 60
    :pswitch_0
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 61
    .line 62
    check-cast v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 63
    .line 64
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 65
    .line 66
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v15, v1

    .line 71
    check-cast v15, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 72
    .line 73
    iget-object v10, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->id:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v11, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->title:Lkotlin/jvm/functions/Function0;

    .line 76
    .line 77
    iget-object v12, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->description:Lkotlin/jvm/functions/Function0;

    .line 78
    .line 79
    iget-object v13, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->icon:Lkotlin/jvm/functions/Function0;

    .line 80
    .line 81
    iget-boolean v14, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->displayValueAsSecondaryText:Z

    .line 82
    .line 83
    iget-object v1, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->options:Lkotlinx/collections/immutable/ImmutableList;

    .line 84
    .line 85
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v9, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 92
    .line 93
    move-object/from16 v16, v1

    .line 94
    .line 95
    invoke-direct/range {v9 .. v16}, Lnet/thunderbird/core/ui/setting/SettingValue$Select;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    return-object v6

    .line 102
    :pswitch_1
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    check-cast v8, Lnet/thunderbird/core/ui/setting/SettingValue$Color;

    .line 105
    .line 106
    check-cast v7, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 107
    .line 108
    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    iget-object v10, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Color;->id:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v11, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Color;->title:Lkotlin/jvm/functions/Function0;

    .line 115
    .line 116
    iget-object v12, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Color;->description:Lkotlin/jvm/functions/Function0;

    .line 117
    .line 118
    iget-object v13, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Color;->icon:Lkotlin/jvm/functions/Function0;

    .line 119
    .line 120
    iget-object v15, v8, Lnet/thunderbird/core/ui/setting/SettingValue$Color;->colors:Lkotlinx/collections/immutable/ImmutableList;

    .line 121
    .line 122
    new-instance v9, Lnet/thunderbird/core/ui/setting/SettingValue$Color;

    .line 123
    .line 124
    invoke-direct/range {v9 .. v15}, Lnet/thunderbird/core/ui/setting/SettingValue$Color;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlinx/collections/immutable/ImmutableList;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    return-object v6

    .line 131
    :pswitch_2
    check-cast v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;

    .line 132
    .line 133
    check-cast v8, Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 134
    .line 135
    check-cast v7, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 136
    .line 137
    sget-object v1, Lcom/fsck/k9/ui/messageview/MessageContainerView;->supportedDownloadUriSchemes:Ljava/util/Set;

    .line 138
    .line 139
    invoke-interface {v0}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getEncrypted()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iget-object v1, v8, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .line 144
    .line 145
    if-eqz v0, :cond_1

    .line 146
    .line 147
    if-eqz v1, :cond_2

    .line 148
    .line 149
    check-cast v1, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 150
    .line 151
    invoke-virtual {v1, v7}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onViewAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_1
    if-eqz v1, :cond_2

    .line 156
    .line 157
    check-cast v1, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 158
    .line 159
    invoke-virtual {v1, v7}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onSaveAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 160
    .line 161
    .line 162
    :cond_2
    :goto_1
    return-object v6

    .line 163
    :pswitch_3
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 164
    .line 165
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 166
    .line 167
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 168
    .line 169
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_3

    .line 180
    .line 181
    const-string v1, "special-folders"

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_3
    const-string v1, "display-options"

    .line 185
    .line 186
    :goto_2
    new-instance v2, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 187
    .line 188
    const/16 v3, 0xa

    .line 189
    .line 190
    invoke-direct {v2, v7, v3}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1, v2}, Landroidx/navigation/NavHostController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 194
    .line 195
    .line 196
    return-object v6

    .line 197
    :pswitch_4
    check-cast v0, Landroid/app/Activity;

    .line 198
    .line 199
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 200
    .line 201
    move-object v14, v7

    .line 202
    check-cast v14, Ljava/lang/String;

    .line 203
    .line 204
    new-instance v9, Lapp/k9mail/feature/account/server/settings/ui/common/ClientCertificateInputKt$$ExternalSyntheticLambda2;

    .line 205
    .line 206
    invoke-direct {v9, v8}, Lapp/k9mail/feature/account/server/settings/ui/common/ClientCertificateInputKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 207
    .line 208
    .line 209
    const/4 v12, 0x0

    .line 210
    const/4 v13, -0x1

    .line 211
    const/4 v10, 0x0

    .line 212
    const/4 v11, 0x0

    .line 213
    move-object v8, v0

    .line 214
    invoke-static/range {v8 .. v14}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-object v6

    .line 218
    :pswitch_5
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 219
    .line 220
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 221
    .line 222
    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 226
    .line 227
    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-object v6

    .line 231
    :pswitch_6
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 232
    .line 233
    check-cast v8, Landroid/net/ConnectivityManager;

    .line 234
    .line 235
    check-cast v7, Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 236
    .line 237
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 238
    .line 239
    if-eqz v0, :cond_4

    .line 240
    .line 241
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sget-object v1, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 246
    .line 247
    const-string v2, "NetworkRequestConstraintController unregister callback"

    .line 248
    .line 249
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8, v7}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 253
    .line 254
    .line 255
    :cond_4
    return-object v6

    .line 256
    :pswitch_7
    check-cast v0, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    .line 257
    .line 258
    check-cast v8, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 259
    .line 260
    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 261
    .line 262
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->cancel()V

    .line 263
    .line 264
    .line 265
    iget-object v0, v8, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 266
    .line 267
    move-object v1, v0

    .line 268
    check-cast v1, Landroidx/compose/runtime/internal/AtomicInt;

    .line 269
    .line 270
    iget v2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 271
    .line 272
    :cond_5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    ushr-int/lit8 v3, v0, 0x1b

    .line 277
    .line 278
    and-int/lit8 v3, v3, 0xf

    .line 279
    .line 280
    if-ne v3, v2, :cond_6

    .line 281
    .line 282
    add-int/lit8 v3, v0, -0x1

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_6
    move v3, v0

    .line 286
    :goto_3
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_5

    .line 291
    .line 292
    return-object v6

    .line 293
    :pswitch_8
    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 294
    .line 295
    check-cast v8, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 296
    .line 297
    check-cast v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;

    .line 298
    .line 299
    if-eqz v0, :cond_7

    .line 300
    .line 301
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    iget v1, v8, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    .line 306
    .line 307
    sub-int/2addr v0, v1

    .line 308
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->advanceBy(I)V

    .line 309
    .line 310
    .line 311
    :cond_7
    iget v0, v8, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    .line 312
    .line 313
    invoke-static {v8, v5, v0, v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->buildTrace(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    check-cast v1, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 322
    .line 323
    if-eqz v1, :cond_8

    .line 324
    .line 325
    iget-object v1, v1, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->groupOffset:Ljava/lang/Integer;

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_8
    move-object v1, v5

    .line 329
    :goto_4
    invoke-interface {v7, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;->buildStackTrace(Ljava/lang/Integer;)Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    if-eqz v1, :cond_a

    .line 334
    .line 335
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-eqz v3, :cond_9

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_9
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 347
    .line 348
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->drop(ILjava/util/List;)Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    iget v3, v3, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->groupKey:I

    .line 353
    .line 354
    new-instance v4, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 355
    .line 356
    invoke-direct {v4, v3, v5, v1}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;-><init>(ILkotlin/math/MathKt;Ljava/lang/Integer;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    :cond_a
    :goto_5
    new-instance v1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 368
    .line 369
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-interface {v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;->getSourceInformationEnabled()Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    invoke-direct {v1, v0, v2}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    .line 378
    .line 379
    .line 380
    return-object v1

    .line 381
    :pswitch_9
    check-cast v0, Landroidx/compose/material3/TooltipStateImpl;

    .line 382
    .line 383
    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    .line 384
    .line 385
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 386
    .line 387
    invoke-virtual {v0}, Landroidx/compose/material3/TooltipStateImpl;->isVisible()Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_b

    .line 392
    .line 393
    new-instance v1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 394
    .line 395
    const/4 v2, 0x7

    .line 396
    invoke-direct {v1, v0, v5, v2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 397
    .line 398
    .line 399
    invoke-static {v8, v5, v5, v1, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 400
    .line 401
    .line 402
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 403
    .line 404
    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    :cond_b
    return-object v6

    .line 408
    :pswitch_a
    check-cast v0, Landroidx/compose/material3/SheetState;

    .line 409
    .line 410
    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    .line 411
    .line 412
    check-cast v7, Landroidx/compose/material3/SheetState;

    .line 413
    .line 414
    iget-object v0, v0, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 415
    .line 416
    iget-object v0, v0, Landroidx/compose/material3/internal/AnchoredDraggableState;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    .line 417
    .line 418
    sget-object v1, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    .line 419
    .line 420
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    check-cast v0, Ljava/lang/Boolean;

    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_c

    .line 431
    .line 432
    new-instance v0, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;

    .line 433
    .line 434
    const/4 v1, 0x6

    .line 435
    invoke-direct {v0, v7, v5, v1}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;I)V

    .line 436
    .line 437
    .line 438
    invoke-static {v8, v5, v5, v0, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 439
    .line 440
    .line 441
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 442
    .line 443
    return-object v0

    .line 444
    :pswitch_b
    check-cast v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 445
    .line 446
    check-cast v8, Landroidx/compose/ui/node/NodeCoordinator;

    .line 447
    .line 448
    check-cast v7, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    .line 449
    .line 450
    invoke-static {v0, v8, v7}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;)Landroidx/compose/ui/geometry/Rect;

    .line 451
    .line 452
    .line 453
    move-result-object v10

    .line 454
    if-eqz v10, :cond_e

    .line 455
    .line 456
    iget-object v9, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->responder:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 457
    .line 458
    iget-wide v0, v9, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 459
    .line 460
    const-wide/16 v2, -0x1

    .line 461
    .line 462
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_d

    .line 467
    .line 468
    const-string v0, "Expected BringIntoViewRequester to not be used before parents are placed."

    .line 469
    .line 470
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    :cond_d
    invoke-virtual {v9}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getViewportSizeOrZero-YbymL2g$foundation()J

    .line 474
    .line 475
    .line 476
    move-result-wide v11

    .line 477
    const-wide/16 v13, 0x0

    .line 478
    .line 479
    invoke-virtual/range {v9 .. v14}, Landroidx/compose/foundation/gestures/ContentInViewNode;->relocationOffset-fbGrOKE(Landroidx/compose/ui/geometry/Rect;JJ)J

    .line 480
    .line 481
    .line 482
    move-result-wide v0

    .line 483
    const-wide v2, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    xor-long/2addr v0, v2

    .line 489
    invoke-virtual {v10, v0, v1}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    :cond_e
    return-object v5

    .line 494
    :pswitch_c
    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 495
    .line 496
    check-cast v8, Landroidx/compose/foundation/lazy/LazyListState;

    .line 497
    .line 498
    check-cast v7, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 499
    .line 500
    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 505
    .line 506
    new-instance v1, Lde/cketti/changelog/XmlParser;

    .line 507
    .line 508
    iget-object v2, v8, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 509
    .line 510
    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 511
    .line 512
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    check-cast v2, Lkotlin/ranges/IntRange;

    .line 517
    .line 518
    invoke-direct {v1, v2, v0}, Lde/cketti/changelog/XmlParser;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V

    .line 519
    .line 520
    .line 521
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 522
    .line 523
    invoke-direct {v2, v8, v0, v7, v1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Lde/cketti/changelog/XmlParser;)V

    .line 524
    .line 525
    .line 526
    return-object v2

    .line 527
    :pswitch_d
    move-object v9, v0

    .line 528
    check-cast v9, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 529
    .line 530
    check-cast v8, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 531
    .line 532
    check-cast v7, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 533
    .line 534
    iget-object v0, v9, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 535
    .line 536
    :goto_6
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 537
    .line 538
    iget v3, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 539
    .line 540
    if-eqz v3, :cond_11

    .line 541
    .line 542
    if-eqz v3, :cond_10

    .line 543
    .line 544
    add-int/lit8 v3, v3, -0x1

    .line 545
    .line 546
    iget-object v1, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 547
    .line 548
    aget-object v1, v1, v3

    .line 549
    .line 550
    check-cast v1, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 551
    .line 552
    iget-object v1, v1, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->currentBounds:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;

    .line 553
    .line 554
    invoke-virtual {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->invoke()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    move-object v10, v1

    .line 559
    check-cast v10, Landroidx/compose/ui/geometry/Rect;

    .line 560
    .line 561
    if-nez v10, :cond_f

    .line 562
    .line 563
    move v1, v4

    .line 564
    goto :goto_7

    .line 565
    :cond_f
    const-wide/16 v13, 0x0

    .line 566
    .line 567
    const/4 v15, 0x3

    .line 568
    const-wide/16 v11, 0x0

    .line 569
    .line 570
    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    :goto_7
    if-eqz v1, :cond_11

    .line 575
    .line 576
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 577
    .line 578
    iget v3, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 579
    .line 580
    sub-int/2addr v3, v4

    .line 581
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    check-cast v1, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 586
    .line 587
    iget-object v1, v1, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 588
    .line 589
    invoke-virtual {v1, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    goto :goto_6

    .line 593
    :cond_10
    const-string v0, "MutableVector is empty."

    .line 594
    .line 595
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    goto :goto_8

    .line 599
    :cond_11
    iget-boolean v0, v9, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 600
    .line 601
    if-eqz v0, :cond_12

    .line 602
    .line 603
    iget-object v0, v9, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedRect:Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;

    .line 604
    .line 605
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    move-object v10, v0

    .line 610
    check-cast v10, Landroidx/compose/ui/geometry/Rect;

    .line 611
    .line 612
    if-eqz v10, :cond_12

    .line 613
    .line 614
    const-wide/16 v13, 0x0

    .line 615
    .line 616
    const/4 v15, 0x3

    .line 617
    const-wide/16 v11, 0x0

    .line 618
    .line 619
    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-ne v0, v4, :cond_12

    .line 624
    .line 625
    iput-boolean v2, v9, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 626
    .line 627
    :cond_12
    const-wide/16 v0, 0x0

    .line 628
    .line 629
    invoke-static {v9, v7, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->access$calculateScrollDelta-I_oMVgE(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;J)F

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    iput v0, v8, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 634
    .line 635
    move-object v5, v6

    .line 636
    :goto_8
    return-object v5

    .line 637
    :pswitch_e
    check-cast v0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 638
    .line 639
    move-object v9, v8

    .line 640
    check-cast v9, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    .line 641
    .line 642
    move-object v13, v7

    .line 643
    check-cast v13, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 644
    .line 645
    iget-object v1, v0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->validatingBuilder$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 646
    .line 647
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    check-cast v1, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    .line 652
    .line 653
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    if-eqz v1, :cond_13

    .line 658
    .line 659
    iget-object v1, v0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->sessionConfig$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 660
    .line 661
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    check-cast v1, Landroidx/camera/core/impl/SessionConfig;

    .line 666
    .line 667
    move-object v11, v1

    .line 668
    goto :goto_9

    .line 669
    :cond_13
    move-object v11, v5

    .line 670
    :goto_9
    if-nez v11, :cond_14

    .line 671
    .line 672
    :goto_a
    move v10, v2

    .line 673
    goto :goto_b

    .line 674
    :cond_14
    iget v1, v11, Landroidx/camera/core/impl/SessionConfig;->mSessionType:I

    .line 675
    .line 676
    if-ne v1, v4, :cond_15

    .line 677
    .line 678
    move v10, v4

    .line 679
    goto :goto_b

    .line 680
    :cond_15
    if-nez v1, :cond_16

    .line 681
    .line 682
    goto :goto_a

    .line 683
    :cond_16
    if-eqz v1, :cond_17

    .line 684
    .line 685
    if-eq v1, v4, :cond_17

    .line 686
    .line 687
    move v10, v1

    .line 688
    :goto_b
    iget-object v1, v0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->surfaceToStreamUseCaseMap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 689
    .line 690
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    move-object v15, v1

    .line 695
    check-cast v15, Ljava/util/Map;

    .line 696
    .line 697
    iget-object v0, v0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->surfaceToStreamUseHintMap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 698
    .line 699
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    move-object/from16 v16, v0

    .line 704
    .line 705
    check-cast v16, Ljava/util/Map;

    .line 706
    .line 707
    const/4 v12, 0x0

    .line 708
    const/4 v14, 0x0

    .line 709
    invoke-virtual/range {v9 .. v16}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->create-79VDu0o(ILandroidx/camera/core/impl/SessionConfig;ZLandroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    .line 710
    .line 711
    .line 712
    move-result-object v5

    .line 713
    goto :goto_c

    .line 714
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 715
    .line 716
    const-string v2, "Custom operating mode "

    .line 717
    .line 718
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    const-string v1, " conflicts with standard modes"

    .line 725
    .line 726
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    const-string v1, "CXCP"

    .line 734
    .line 735
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .line 737
    .line 738
    const-string v0, "kotlin.Unit"

    .line 739
    .line 740
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    :goto_c
    return-object v5

    .line 744
    :pswitch_f
    check-cast v0, Lokhttp3/CertificatePinner;

    .line 745
    .line 746
    check-cast v8, Lokhttp3/Handshake;

    .line 747
    .line 748
    check-cast v7, Lokhttp3/Address;

    .line 749
    .line 750
    iget-object v0, v0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lkotlin/uuid/UuidKt;

    .line 751
    .line 752
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v8}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    iget-object v2, v7, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 760
    .line 761
    iget-object v2, v2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 762
    .line 763
    invoke-virtual {v0, v2, v1}, Lkotlin/uuid/UuidKt;->clean(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    return-object v0

    .line 768
    nop

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
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
