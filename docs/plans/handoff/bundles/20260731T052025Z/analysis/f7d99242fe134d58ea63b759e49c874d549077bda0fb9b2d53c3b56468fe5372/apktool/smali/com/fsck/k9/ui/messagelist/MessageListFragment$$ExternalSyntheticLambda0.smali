.class public final synthetic Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V
    .locals 0

    .line 1
    const/4 p2, 0x6

    .line 2
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;IB)V
    .locals 0

    .line 10
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 9
    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v0, p1

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 19
    .line 20
    move-object/from16 v1, p2

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    and-int/lit8 v8, v1, 0x3

    .line 29
    .line 30
    if-eq v8, v3, :cond_0

    .line 31
    .line 32
    move v8, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v8, v7

    .line 35
    :goto_0
    and-int/2addr v1, v4

    .line 36
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v1, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->featureThemeProvider$delegate:Lkotlin/Lazy;

    .line 45
    .line 46
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 51
    .line 52
    new-instance v4, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {v4, v5, v3, v7}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;IB)V

    .line 55
    .line 56
    .line 57
    const v3, -0x57a09ec3    # -1.2400072E-14f

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v1, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 65
    .line 66
    invoke-virtual {v1, v3, v0, v2}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-object v6

    .line 74
    :pswitch_0
    move-object/from16 v0, p1

    .line 75
    .line 76
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 77
    .line 78
    move-object/from16 v1, p2

    .line 79
    .line 80
    check-cast v1, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v5, v0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->SortCriteriaMenuList(Landroidx/compose/runtime/Composer;I)V

    .line 90
    .line 91
    .line 92
    return-object v6

    .line 93
    :pswitch_1
    move-object/from16 v0, p1

    .line 94
    .line 95
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 96
    .line 97
    move-object/from16 v1, p2

    .line 98
    .line 99
    check-cast v1, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    and-int/lit8 v8, v1, 0x3

    .line 106
    .line 107
    if-eq v8, v3, :cond_2

    .line 108
    .line 109
    move v3, v4

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    move v3, v7

    .line 112
    :goto_2
    and-int/2addr v1, v4

    .line 113
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 114
    .line 115
    invoke-virtual {v0, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    iget-object v1, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->featureThemeProvider$delegate:Lkotlin/Lazy;

    .line 122
    .line 123
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 128
    .line 129
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    invoke-direct {v3, v5, v7, v7}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;IB)V

    .line 132
    .line 133
    .line 134
    const v4, -0x4eec1b31

    .line 135
    .line 136
    .line 137
    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v1, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 142
    .line 143
    invoke-virtual {v1, v3, v0, v2}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 148
    .line 149
    .line 150
    :goto_3
    return-object v6

    .line 151
    :pswitch_2
    iget-object v0, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionModeCallback:Lcom/google/zxing/BinaryBitmap;

    .line 152
    .line 153
    move-object/from16 v1, p1

    .line 154
    .line 155
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;

    .line 156
    .line 157
    move-object/from16 v2, p2

    .line 158
    .line 159
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    instance-of v3, v2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ScrollToMessage;

    .line 168
    .line 169
    if-eqz v3, :cond_4

    .line 170
    .line 171
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ScrollToMessage;

    .line 172
    .line 173
    iget-object v0, v2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ScrollToMessage;->message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;->_scrollEvents:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 179
    .line 180
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/ui/component/ScrollEvent$ScrollToMessage;

    .line 181
    .line 182
    invoke-direct {v2, v0, v4}, Lnet/thunderbird/feature/mail/message/list/ui/component/ScrollEvent$ScrollToMessage;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Z)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    goto/16 :goto_7

    .line 189
    .line 190
    :cond_4
    instance-of v1, v2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$UpdateToolbarActionMode;

    .line 191
    .line 192
    const/4 v3, 0x0

    .line 193
    const-string v8, "fragmentListener"

    .line 194
    .line 195
    if-eqz v1, :cond_9

    .line 196
    .line 197
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$UpdateToolbarActionMode;

    .line 198
    .line 199
    iget-object v1, v2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$UpdateToolbarActionMode;->title:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v10, "[MessageList] UpdateToolbarActionMode called with title: "

    .line 208
    .line 209
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v10, ", state = "

    .line 216
    .line 217
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 228
    .line 229
    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-object v7, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 233
    .line 234
    if-nez v7, :cond_7

    .line 235
    .line 236
    iget-object v7, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 237
    .line 238
    if-eqz v7, :cond_6

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iget-object v3, v7, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 244
    .line 245
    if-eqz v3, :cond_5

    .line 246
    .line 247
    invoke-interface {v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->collapseSearchView$1()V

    .line 248
    .line 249
    .line 250
    :cond_5
    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AppCompatDelegate;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    iput-object v3, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 259
    .line 260
    if-eqz v3, :cond_7

    .line 261
    .line 262
    invoke-virtual {v3}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_6
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v3

    .line 270
    :cond_7
    :goto_4
    iget-object v3, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 271
    .line 272
    if-eqz v3, :cond_14

    .line 273
    .line 274
    invoke-virtual {v3, v1}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    iget-boolean v1, v2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$UpdateToolbarActionMode;->isAllSelected:Z

    .line 278
    .line 279
    xor-int/2addr v1, v4

    .line 280
    iget-object v0, v0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v0, Landroid/view/MenuItem;

    .line 283
    .line 284
    if-eqz v0, :cond_8

    .line 285
    .line 286
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    .line 288
    .line 289
    :cond_8
    invoke-virtual {v3}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_7

    .line 293
    .line 294
    :cond_9
    instance-of v0, v2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$ResetToolbarActionMode;

    .line 295
    .line 296
    if-eqz v0, :cond_a

    .line 297
    .line 298
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getStateSnapshot()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v2, "[MessageList] ResetToolbarActionMode called with state = "

    .line 305
    .line 306
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 317
    .line 318
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->resetActionMode$1()V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_7

    .line 325
    .line 326
    :cond_a
    instance-of v0, v2, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$OpenMessage;

    .line 327
    .line 328
    if-eqz v0, :cond_d

    .line 329
    .line 330
    move-object v0, v2

    .line 331
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$OpenMessage;

    .line 332
    .line 333
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$OpenMessage;->message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 334
    .line 335
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->messageReference:Ljava/lang/String;

    .line 336
    .line 337
    invoke-static {v0}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-eqz v0, :cond_c

    .line 342
    .line 343
    iget-object v1, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 344
    .line 345
    if-eqz v1, :cond_b

    .line 346
    .line 347
    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->openMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_7

    .line 351
    .line 352
    :cond_b
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v3

    .line 356
    :cond_c
    const-string v0, "The message reference should not be null when opening a message. Message: "

    .line 357
    .line 358
    invoke-static {v2, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    move-object v6, v3

    .line 362
    goto/16 :goto_7

    .line 363
    .line 364
    :cond_d
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$TriggerOnFooterClicked;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect$TriggerOnFooterClicked;

    .line 365
    .line 366
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_14

    .line 371
    .line 372
    iget-object v0, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 373
    .line 374
    if-nez v0, :cond_e

    .line 375
    .line 376
    goto/16 :goto_7

    .line 377
    .line 378
    :cond_e
    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 379
    .line 380
    iget-object v2, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 381
    .line 382
    if-nez v2, :cond_f

    .line 383
    .line 384
    goto/16 :goto_7

    .line 385
    .line 386
    :cond_f
    iget-boolean v8, v2, Lcom/fsck/k9/activity/FolderInfoHolder;->moreMessages:Z

    .line 387
    .line 388
    if-eqz v8, :cond_10

    .line 389
    .line 390
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    iget-boolean v8, v8, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 395
    .line 396
    if-nez v8, :cond_10

    .line 397
    .line 398
    iget-wide v12, v2, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 399
    .line 400
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 411
    .line 412
    .line 413
    move-result-object v11

    .line 414
    iget-object v10, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 415
    .line 416
    new-instance v9, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;

    .line 417
    .line 418
    const/4 v14, 0x0

    .line 419
    invoke-direct/range {v9 .. v14}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JI)V

    .line 420
    .line 421
    .line 422
    const-string v0, "loadMoreMessages"

    .line 423
    .line 424
    invoke-virtual {v10, v0, v9}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 425
    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_10
    iget-boolean v8, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->isRemoteSearch:Z

    .line 429
    .line 430
    if-eqz v8, :cond_14

    .line 431
    .line 432
    iget-object v8, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 433
    .line 434
    if-nez v8, :cond_11

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :cond_11
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 438
    .line 439
    .line 440
    move-result v9

    .line 441
    if-eqz v9, :cond_12

    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_12
    iget v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->remoteSearchNumResults:I

    .line 445
    .line 446
    if-gt v4, v0, :cond_13

    .line 447
    .line 448
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    if-ge v0, v4, :cond_13

    .line 453
    .line 454
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    invoke-interface {v8, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    iput-object v3, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 463
    .line 464
    invoke-interface {v8, v7, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    :goto_5
    move-object v15, v8

    .line 469
    goto :goto_6

    .line 470
    :cond_13
    iput-object v3, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->extraSearchResults:Ljava/util/List;

    .line 471
    .line 472
    invoke-virtual {v5, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->updateFooterText(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    goto :goto_5

    .line 476
    :goto_6
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getMessagingController$1()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    iget-wide v13, v2, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 481
    .line 482
    iget-object v11, v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activityListener:Lcom/fsck/k9/ui/messagelist/MessageListFragment$MessageListActivityListener;

    .line 483
    .line 484
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->getAccountDtoOrThrow(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 497
    .line 498
    .line 499
    move-result-object v12

    .line 500
    iget-object v10, v0, Lcom/fsck/k9/controller/MessagingControllerWrapper;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 501
    .line 502
    iget-object v0, v10, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 503
    .line 504
    new-instance v9, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;

    .line 505
    .line 506
    invoke-direct/range {v9 .. v15}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;-><init>(Lcom/fsck/k9/controller/MessagingController;Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;)V

    .line 507
    .line 508
    .line 509
    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 510
    .line 511
    .line 512
    :cond_14
    :goto_7
    return-object v6

    .line 513
    :pswitch_3
    move-object/from16 v0, p1

    .line 514
    .line 515
    check-cast v0, Ljava/lang/Long;

    .line 516
    .line 517
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 518
    .line 519
    .line 520
    move-result-wide v0

    .line 521
    move-object/from16 v2, p2

    .line 522
    .line 523
    check-cast v2, Ljava/util/List;

    .line 524
    .line 525
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    sget-object v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;

    .line 529
    .line 530
    invoke-virtual {v5, v2, v0, v1, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->copyOrMove(Ljava/util/List;JLcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;)V

    .line 531
    .line 532
    .line 533
    return-object v6

    .line 534
    :pswitch_4
    move-object/from16 v1, p1

    .line 535
    .line 536
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 537
    .line 538
    move-object/from16 v2, p2

    .line 539
    .line 540
    check-cast v2, Ljava/lang/Integer;

    .line 541
    .line 542
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    and-int/lit8 v5, v2, 0x3

    .line 547
    .line 548
    if-eq v5, v3, :cond_15

    .line 549
    .line 550
    move v3, v4

    .line 551
    goto :goto_8

    .line 552
    :cond_15
    move v3, v7

    .line 553
    :goto_8
    and-int/2addr v2, v4

    .line 554
    move-object v13, v1

    .line 555
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 556
    .line 557
    invoke-virtual {v13, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    if-eqz v1, :cond_1a

    .line 562
    .line 563
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 564
    .line 565
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->messageListScreenRenderer$delegate:Lkotlin/Lazy;

    .line 566
    .line 567
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    move-object v12, v1

    .line 572
    check-cast v12, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenRenderer;

    .line 573
    .line 574
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 583
    .line 584
    if-nez v1, :cond_16

    .line 585
    .line 586
    if-ne v2, v3, :cond_17

    .line 587
    .line 588
    :cond_16
    new-instance v14, Landroidx/room/InvalidationTracker$implementation$1;

    .line 589
    .line 590
    const/16 v20, 0x0

    .line 591
    .line 592
    const/16 v21, 0xd

    .line 593
    .line 594
    const/4 v15, 0x1

    .line 595
    const-class v17, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 596
    .line 597
    const-string v18, "filterInAppNotificationEvents"

    .line 598
    .line 599
    const-string v19, "filterInAppNotificationEvents(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Z"

    .line 600
    .line 601
    move-object/from16 v16, v0

    .line 602
    .line 603
    invoke-direct/range {v14 .. v21}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    move-object v2, v14

    .line 610
    :cond_17
    check-cast v2, Lkotlin/reflect/KFunction;

    .line 611
    .line 612
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getViewModel()Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 613
    .line 614
    .line 615
    move-result-object v10

    .line 616
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    if-nez v1, :cond_18

    .line 625
    .line 626
    if-ne v4, v3, :cond_19

    .line 627
    .line 628
    :cond_18
    new-instance v4, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;

    .line 629
    .line 630
    const/4 v1, 0x4

    .line 631
    invoke-direct {v4, v0, v1, v7}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;IB)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    :cond_19
    move-object v8, v4

    .line 638
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 639
    .line 640
    move-object v11, v2

    .line 641
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 642
    .line 643
    const/4 v14, 0x0

    .line 644
    const/4 v9, 0x0

    .line 645
    invoke-static/range {v8 .. v14}, Lkotlin/uuid/UuidKt;->Render$default(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenRenderer;Landroidx/compose/runtime/Composer;I)V

    .line 646
    .line 647
    .line 648
    goto :goto_9

    .line 649
    :cond_1a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 650
    .line 651
    .line 652
    :goto_9
    return-object v6

    .line 653
    :pswitch_5
    move-object/from16 v0, p1

    .line 654
    .line 655
    check-cast v0, Ljava/lang/Long;

    .line 656
    .line 657
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 658
    .line 659
    .line 660
    move-result-wide v0

    .line 661
    move-object/from16 v2, p2

    .line 662
    .line 663
    check-cast v2, Ljava/util/List;

    .line 664
    .line 665
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    sget-object v3, Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;

    .line 669
    .line 670
    invoke-virtual {v5, v2, v0, v1, v3}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->copyOrMove(Ljava/util/List;JLcom/fsck/k9/ui/messagelist/MessageListFragment$FolderOperation;)V

    .line 671
    .line 672
    .line 673
    return-object v6

    .line 674
    :pswitch_6
    move-object/from16 v0, p1

    .line 675
    .line 676
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 677
    .line 678
    move-object/from16 v1, p2

    .line 679
    .line 680
    check-cast v1, Ljava/lang/Integer;

    .line 681
    .line 682
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 683
    .line 684
    .line 685
    move-result v1

    .line 686
    and-int/lit8 v2, v1, 0x3

    .line 687
    .line 688
    if-eq v2, v3, :cond_1b

    .line 689
    .line 690
    move v2, v4

    .line 691
    goto :goto_a

    .line 692
    :cond_1b
    move v2, v7

    .line 693
    :goto_a
    and-int/2addr v1, v4

    .line 694
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 695
    .line 696
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 697
    .line 698
    .line 699
    move-result v1

    .line 700
    if-eqz v1, :cond_1c

    .line 701
    .line 702
    invoke-virtual {v5, v0, v7}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->SortCriteriaMenuList(Landroidx/compose/runtime/Composer;I)V

    .line 703
    .line 704
    .line 705
    goto :goto_b

    .line 706
    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 707
    .line 708
    .line 709
    :goto_b
    return-object v6

    .line 710
    nop

    .line 711
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
