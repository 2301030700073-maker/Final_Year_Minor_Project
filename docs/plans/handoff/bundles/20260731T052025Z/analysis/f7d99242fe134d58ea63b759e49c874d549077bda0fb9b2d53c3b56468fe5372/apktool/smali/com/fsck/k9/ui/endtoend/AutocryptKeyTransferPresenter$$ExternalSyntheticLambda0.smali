.class public final synthetic Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Lcom/fsck/k9/view/StatusIndicator$Status;->OK:Lcom/fsck/k9/view/StatusIndicator$Status;

    .line 8
    .line 9
    const-string v4, "transferProgressSending"

    .line 10
    .line 11
    const-string v5, "transferProgressGenerating"

    .line 12
    .line 13
    iget-object v0, v0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p1

    .line 19
    .line 20
    check-cast v1, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferResult;

    .line 21
    .line 22
    iget-object v6, v0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->view:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 23
    .line 24
    const-string v8, "transferSendButton"

    .line 25
    .line 26
    const-string v9, "transferMsgInfo"

    .line 27
    .line 28
    const-string v10, "transferLayoutGenerating"

    .line 29
    .line 30
    const-string v11, "transferLayoutSending"

    .line 31
    .line 32
    const-string v12, "transferLayoutFinish"

    .line 33
    .line 34
    const-string v13, "transferErrorSend"

    .line 35
    .line 36
    const-string v14, "transferButtonShowCode"

    .line 37
    .line 38
    const/16 v15, 0x8

    .line 39
    .line 40
    const/16 p0, 0x0

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    if-nez v1, :cond_7

    .line 44
    .line 45
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferSendButton:Landroid/view/View;

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferMsgInfo:Landroid/view/View;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutGenerating:Landroid/view/View;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutSending:Landroid/view/View;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutFinish:Landroid/view/View;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferErrorSend:Landroid/view/View;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferButtonShowCode:Landroid/view/View;

    .line 88
    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_0
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_1
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_2
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_3
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_4
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_5
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_6
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_7
    instance-of v7, v1, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferResult$Success;

    .line 125
    .line 126
    if-eqz v7, :cond_11

    .line 127
    .line 128
    check-cast v1, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferResult$Success;

    .line 129
    .line 130
    iget-object v1, v1, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferResult$Success;->showTransferCodePi:Landroid/app/PendingIntent;

    .line 131
    .line 132
    iput-object v1, v0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->showTransferCodePi:Landroid/app/PendingIntent;

    .line 133
    .line 134
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferProgressGenerating:Lcom/fsck/k9/view/StatusIndicator;

    .line 135
    .line 136
    if-eqz v0, :cond_10

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Lcom/fsck/k9/view/StatusIndicator;->setDisplayedChild(Lcom/fsck/k9/view/StatusIndicator$Status;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferProgressSending:Lcom/fsck/k9/view/StatusIndicator;

    .line 142
    .line 143
    if-eqz v0, :cond_f

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Lcom/fsck/k9/view/StatusIndicator;->setDisplayedChild(Lcom/fsck/k9/view/StatusIndicator$Status;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferSendButton:Landroid/view/View;

    .line 149
    .line 150
    if-eqz v0, :cond_e

    .line 151
    .line 152
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferMsgInfo:Landroid/view/View;

    .line 156
    .line 157
    if-eqz v0, :cond_d

    .line 158
    .line 159
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutGenerating:Landroid/view/View;

    .line 163
    .line 164
    if-eqz v0, :cond_c

    .line 165
    .line 166
    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutSending:Landroid/view/View;

    .line 171
    .line 172
    if-eqz v0, :cond_b

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutFinish:Landroid/view/View;

    .line 178
    .line 179
    if-eqz v0, :cond_a

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferErrorSend:Landroid/view/View;

    .line 185
    .line 186
    if-eqz v0, :cond_9

    .line 187
    .line 188
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferButtonShowCode:Landroid/view/View;

    .line 192
    .line 193
    if-eqz v0, :cond_8

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_8
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p0

    .line 204
    :cond_9
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p0

    .line 208
    :cond_a
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p0

    .line 212
    :cond_b
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    :cond_c
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0

    .line 220
    :cond_d
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p0

    .line 224
    :cond_e
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p0

    .line 228
    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p0

    .line 232
    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    :cond_11
    instance-of v0, v1, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferResult$Failure;

    .line 237
    .line 238
    if-eqz v0, :cond_1b

    .line 239
    .line 240
    check-cast v1, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferResult$Failure;

    .line 241
    .line 242
    iget-object v0, v1, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferResult$Failure;->exception:Ljava/lang/Exception;

    .line 243
    .line 244
    const-string v1, "Error sending setup message"

    .line 245
    .line 246
    const/4 v7, 0x0

    .line 247
    new-array v15, v7, [Ljava/lang/Object;

    .line 248
    .line 249
    invoke-static {v0, v1, v15}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferProgressGenerating:Lcom/fsck/k9/view/StatusIndicator;

    .line 253
    .line 254
    if-eqz v0, :cond_1a

    .line 255
    .line 256
    invoke-virtual {v0, v3}, Lcom/fsck/k9/view/StatusIndicator;->setDisplayedChild(Lcom/fsck/k9/view/StatusIndicator$Status;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferProgressSending:Lcom/fsck/k9/view/StatusIndicator;

    .line 260
    .line 261
    if-eqz v0, :cond_19

    .line 262
    .line 263
    sget-object v1, Lcom/fsck/k9/view/StatusIndicator$Status;->ERROR:Lcom/fsck/k9/view/StatusIndicator$Status;

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/StatusIndicator;->setDisplayedChild(Lcom/fsck/k9/view/StatusIndicator$Status;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v6}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    const/high16 v1, 0x7f150000

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    const v1, 0x1020002

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Landroid/view/ViewGroup;

    .line 286
    .line 287
    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 288
    .line 289
    .line 290
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferSendButton:Landroid/view/View;

    .line 291
    .line 292
    if-eqz v0, :cond_18

    .line 293
    .line 294
    const/16 v1, 0x8

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferMsgInfo:Landroid/view/View;

    .line 300
    .line 301
    if-eqz v0, :cond_17

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutGenerating:Landroid/view/View;

    .line 307
    .line 308
    if-eqz v0, :cond_16

    .line 309
    .line 310
    const/4 v7, 0x0

    .line 311
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 312
    .line 313
    .line 314
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutSending:Landroid/view/View;

    .line 315
    .line 316
    if-eqz v0, :cond_15

    .line 317
    .line 318
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferLayoutFinish:Landroid/view/View;

    .line 322
    .line 323
    if-eqz v0, :cond_14

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    .line 327
    .line 328
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferErrorSend:Landroid/view/View;

    .line 329
    .line 330
    if-eqz v0, :cond_13

    .line 331
    .line 332
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    iget-object v0, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferButtonShowCode:Landroid/view/View;

    .line 336
    .line 337
    if-eqz v0, :cond_12

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    goto :goto_0

    .line 343
    :cond_12
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw p0

    .line 347
    :cond_13
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw p0

    .line 351
    :cond_14
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw p0

    .line 355
    :cond_15
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw p0

    .line 359
    :cond_16
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw p0

    .line 363
    :cond_17
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw p0

    .line 367
    :cond_18
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw p0

    .line 371
    :cond_19
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw p0

    .line 375
    :cond_1a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw p0

    .line 379
    :cond_1b
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 380
    .line 381
    .line 382
    move-object/from16 v2, p0

    .line 383
    .line 384
    :goto_0
    return-object v2

    .line 385
    :pswitch_0
    move-object/from16 v1, p1

    .line 386
    .line 387
    check-cast v1, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessage;

    .line 388
    .line 389
    if-eqz v1, :cond_1f

    .line 390
    .line 391
    iget-object v6, v0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->view:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 392
    .line 393
    iget-object v7, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferProgressGenerating:Lcom/fsck/k9/view/StatusIndicator;

    .line 394
    .line 395
    const/4 v8, 0x0

    .line 396
    if-eqz v7, :cond_1e

    .line 397
    .line 398
    invoke-virtual {v7, v3}, Lcom/fsck/k9/view/StatusIndicator;->setDisplayedChild(Lcom/fsck/k9/view/StatusIndicator$Status;)V

    .line 399
    .line 400
    .line 401
    iget-object v3, v6, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->transferProgressSending:Lcom/fsck/k9/view/StatusIndicator;

    .line 402
    .line 403
    if-eqz v3, :cond_1d

    .line 404
    .line 405
    sget-object v4, Lcom/fsck/k9/view/StatusIndicator$Status;->PROGRESS:Lcom/fsck/k9/view/StatusIndicator$Status;

    .line 406
    .line 407
    invoke-virtual {v3, v4}, Lcom/fsck/k9/view/StatusIndicator;->setDisplayedChild(Lcom/fsck/k9/view/StatusIndicator$Status;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v6}, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->sceneGeneratingAndSending()V

    .line 411
    .line 412
    .line 413
    iget-object v3, v0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->viewModel:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;

    .line 414
    .line 415
    iget-object v4, v3, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;->autocryptSetupTransferLiveEvent:Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;

    .line 416
    .line 417
    iget-object v6, v0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 418
    .line 419
    if-eqz v6, :cond_1c

    .line 420
    .line 421
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    iget-object v0, v4, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;->eventScope:Lkotlinx/coroutines/CoroutineScope;

    .line 425
    .line 426
    new-instance v3, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 427
    .line 428
    move-object v7, v8

    .line 429
    const/16 v8, 0x12

    .line 430
    .line 431
    move-object v5, v1

    .line 432
    invoke-direct/range {v3 .. v8}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 433
    .line 434
    .line 435
    const/4 v1, 0x3

    .line 436
    invoke-static {v0, v7, v7, v3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 437
    .line 438
    .line 439
    goto :goto_1

    .line 440
    :cond_1c
    move-object v7, v8

    .line 441
    const-string v0, "account"

    .line 442
    .line 443
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v7

    .line 447
    :cond_1d
    move-object v7, v8

    .line 448
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    throw v7

    .line 452
    :cond_1e
    move-object v7, v8

    .line 453
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw v7

    .line 457
    :cond_1f
    :goto_1
    return-object v2

    .line 458
    nop

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
