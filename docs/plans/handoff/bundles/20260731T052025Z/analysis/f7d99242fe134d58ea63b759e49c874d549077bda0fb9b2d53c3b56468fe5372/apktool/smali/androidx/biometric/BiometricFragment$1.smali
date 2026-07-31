.class public final Landroidx/biometric/BiometricFragment$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/biometric/BiometricFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/biometric/BiometricFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/biometric/BiometricFragment$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/biometric/BiometricFragment$1;->this$0:Landroidx/biometric/BiometricFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/biometric/BiometricFragment$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const v2, 0x7f120286

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object p0, p0, Landroidx/biometric/BiometricFragment$1;->this$0:Landroidx/biometric/BiometricFragment;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-static {p0, p1}, Landroidx/biometric/BiometricViewModel;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_6

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isManagingDeviceCredentialButton()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 69
    .line 70
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->mNegativeButtonTextOverride:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    move-object v5, v0

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/cardview/widget/CardView$1;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    const-string v5, ""

    .line 81
    .line 82
    :cond_4
    :goto_0
    if-eqz v5, :cond_5

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    :goto_1
    const/16 p1, 0xd

    .line 90
    .line 91
    invoke-virtual {p0, p1, v5}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    const/4 p1, 0x2

    .line 95
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    .line 96
    .line 97
    .line 98
    :goto_2
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 99
    .line 100
    invoke-virtual {p0, v4}, Landroidx/biometric/BiometricViewModel;->setNegativeButtonPressPending(Z)V

    .line 101
    .line 102
    .line 103
    :cond_6
    return-void

    .line 104
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_b

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    const p1, 0x7f1202e4

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 129
    .line 130
    iget-boolean v0, p1, Landroidx/biometric/BiometricViewModel;->mIsAwaitingResult:Z

    .line 131
    .line 132
    if-nez v0, :cond_8

    .line 133
    .line 134
    const-string p1, "BiometricFragment"

    .line 135
    .line 136
    const-string v0, "Failure not sent to client. Client is not awaiting a result."

    .line 137
    .line 138
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_8
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->mClientExecutor:Ljava/util/concurrent/Executor;

    .line 143
    .line 144
    if-eqz p1, :cond_9

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_9
    new-instance p1, Landroidx/core/os/ExecutorCompat$HandlerExecutor;

    .line 148
    .line 149
    invoke-direct {p1}, Landroidx/core/os/ExecutorCompat$HandlerExecutor;-><init>()V

    .line 150
    .line 151
    .line 152
    :goto_3
    new-instance v0, Landroidx/fragment/app/Fragment$1;

    .line 153
    .line 154
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/Fragment$1;-><init>(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 158
    .line 159
    .line 160
    :goto_4
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 161
    .line 162
    iget-object p1, p0, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    .line 163
    .line 164
    if-nez p1, :cond_a

    .line 165
    .line 166
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 167
    .line 168
    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    .line 172
    .line 173
    :cond_a
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    .line 174
    .line 175
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-static {p0, p1}, Landroidx/biometric/BiometricViewModel;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_b
    return-void

    .line 181
    :pswitch_2
    check-cast p1, Ljava/lang/CharSequence;

    .line 182
    .line 183
    if-eqz p1, :cond_d

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_c

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    :cond_c
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 195
    .line 196
    invoke-virtual {p0, v5}, Landroidx/biometric/BiometricViewModel;->setAuthenticationError(Landroidx/biometric/BiometricErrorData;)V

    .line 197
    .line 198
    .line 199
    :cond_d
    return-void

    .line 200
    :pswitch_3
    check-cast p1, Landroidx/biometric/BiometricErrorData;

    .line 201
    .line 202
    if-eqz p1, :cond_1c

    .line 203
    .line 204
    iget v0, p1, Landroidx/biometric/BiometricErrorData;->mErrorCode:I

    .line 205
    .line 206
    iget-object p1, p1, Landroidx/biometric/BiometricErrorData;->mErrorMessage:Ljava/lang/CharSequence;

    .line 207
    .line 208
    packed-switch v0, :pswitch_data_1

    .line 209
    .line 210
    .line 211
    :pswitch_4
    const/16 v0, 0x8

    .line 212
    .line 213
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 218
    .line 219
    const/16 v8, 0x1d

    .line 220
    .line 221
    if-ge v7, v8, :cond_10

    .line 222
    .line 223
    const/4 v8, 0x7

    .line 224
    if-eq v0, v8, :cond_e

    .line 225
    .line 226
    const/16 v8, 0x9

    .line 227
    .line 228
    if-ne v0, v8, :cond_10

    .line 229
    .line 230
    :cond_e
    if-eqz v6, :cond_10

    .line 231
    .line 232
    invoke-static {v6}, Landroidx/biometric/KeyguardUtils$Api23Impl;->getKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    if-nez v6, :cond_f

    .line 237
    .line 238
    move v6, v4

    .line 239
    goto :goto_5

    .line 240
    :cond_f
    invoke-static {v6}, Landroidx/biometric/KeyguardUtils$Api23Impl;->isDeviceSecure(Landroid/app/KeyguardManager;)Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    :goto_5
    if-eqz v6, :cond_10

    .line 245
    .line 246
    iget-object v6, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 247
    .line 248
    invoke-virtual {v6}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->isDeviceCredentialAllowed(I)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-eqz v6, :cond_10

    .line 257
    .line 258
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_c

    .line 262
    .line 263
    :cond_10
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_1a

    .line 268
    .line 269
    if-eqz p1, :cond_11

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    :goto_6
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 281
    .line 282
    if-ne v0, v1, :cond_14

    .line 283
    .line 284
    iget v1, v2, Landroidx/biometric/BiometricViewModel;->mCanceledFrom:I

    .line 285
    .line 286
    if-eqz v1, :cond_12

    .line 287
    .line 288
    const/4 v2, 0x3

    .line 289
    if-ne v1, v2, :cond_13

    .line 290
    .line 291
    :cond_12
    invoke-virtual {p0, v0, p1}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    :cond_13
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_c

    .line 298
    .line 299
    :cond_14
    iget-boolean v1, v2, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogDismissedInstantly:Z

    .line 300
    .line 301
    if-eqz v1, :cond_15

    .line 302
    .line 303
    invoke-virtual {p0, v0, p1}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 304
    .line 305
    .line 306
    goto :goto_a

    .line 307
    :cond_15
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    .line 308
    .line 309
    .line 310
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mHandler:Landroid/os/Handler;

    .line 311
    .line 312
    new-instance v2, Landroidx/biometric/BiometricFragment$8;

    .line 313
    .line 314
    invoke-direct {v2, p0, v0, p1, v4}, Landroidx/biometric/BiometricFragment$8;-><init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    if-eqz p1, :cond_19

    .line 322
    .line 323
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 324
    .line 325
    const/16 v6, 0x1c

    .line 326
    .line 327
    if-eq v7, v6, :cond_16

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_16
    if-nez v0, :cond_17

    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    const v6, 0x7f03001a

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    array-length v6, p1

    .line 345
    move v7, v4

    .line 346
    :goto_7
    if-ge v7, v6, :cond_19

    .line 347
    .line 348
    aget-object v8, p1, v7

    .line 349
    .line 350
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    if-eqz v8, :cond_18

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_18
    add-int/lit8 v7, v7, 0x1

    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_19
    :goto_8
    const/16 v4, 0x7d0

    .line 361
    .line 362
    :goto_9
    int-to-long v6, v4

    .line 363
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    .line 365
    .line 366
    :goto_a
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 367
    .line 368
    iput-boolean v3, p1, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogDismissedInstantly:Z

    .line 369
    .line 370
    goto :goto_c

    .line 371
    :cond_1a
    if-eqz p1, :cond_1b

    .line 372
    .line 373
    goto :goto_b

    .line 374
    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v1, " "

    .line 387
    .line 388
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    :goto_b
    invoke-virtual {p0, v0, p1}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 399
    .line 400
    .line 401
    :goto_c
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 402
    .line 403
    invoke-virtual {p0, v5}, Landroidx/biometric/BiometricViewModel;->setAuthenticationError(Landroidx/biometric/BiometricErrorData;)V

    .line 404
    .line 405
    .line 406
    :cond_1c
    return-void

    .line 407
    :pswitch_6
    check-cast p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 408
    .line 409
    if-eqz p1, :cond_1e

    .line 410
    .line 411
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 412
    .line 413
    .line 414
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 415
    .line 416
    iget-object p1, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    .line 417
    .line 418
    if-nez p1, :cond_1d

    .line 419
    .line 420
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 421
    .line 422
    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 423
    .line 424
    .line 425
    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    .line 426
    .line 427
    :cond_1d
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    .line 428
    .line 429
    invoke-static {p0, v5}, Landroidx/biometric/BiometricViewModel;->updateValue(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    :cond_1e
    return-void

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
