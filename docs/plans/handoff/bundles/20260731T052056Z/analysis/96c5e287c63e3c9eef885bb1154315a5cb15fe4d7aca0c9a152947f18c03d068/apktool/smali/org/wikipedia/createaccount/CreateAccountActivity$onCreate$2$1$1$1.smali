.class public final Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "captchaHandler"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState;

    .line 22
    .line 23
    sget-object v2, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Initial;->INSTANCE:Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Initial;

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_5

    .line 30
    .line 31
    sget-object v2, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Success;->INSTANCE:Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Success;

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    instance-of v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Blocked;

    .line 41
    .line 42
    const-string/jumbo v8, "validation_error"

    .line 43
    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    if-eqz v9, :cond_1

    .line 52
    .line 53
    const-string v2, "blocked"

    .line 54
    .line 55
    invoke-static {v8, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v15

    .line 59
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const/16 v16, 0x7e

    .line 63
    .line 64
    const-string v10, "error"

    .line 65
    .line 66
    const/4 v11, 0x0

    .line 67
    const/4 v12, 0x0

    .line 68
    const/4 v13, 0x0

    .line 69
    const/4 v14, 0x0

    .line 70
    invoke-static/range {v9 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 71
    .line 72
    .line 73
    :cond_1
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Blocked;

    .line 74
    .line 75
    iget-object v1, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Blocked;->error:Ljava/lang/String;

    .line 76
    .line 77
    sget-object v2, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->handleAccountCreationError(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    instance-of v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$CannotCreate;

    .line 84
    .line 85
    if-eqz v2, :cond_6

    .line 86
    .line 87
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    if-eqz v9, :cond_3

    .line 92
    .line 93
    const-string/jumbo v2, "username_unavailable"

    .line 94
    .line 95
    .line 96
    invoke-static {v8, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object v15

    .line 100
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const/16 v16, 0x7e

    .line 104
    .line 105
    const-string v10, "error"

    .line 106
    .line 107
    const/4 v11, 0x0

    .line 108
    const/4 v12, 0x0

    .line 109
    const/4 v13, 0x0

    .line 110
    const/4 v14, 0x0

    .line 111
    invoke-static/range {v9 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-object v2, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 115
    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    iget-object v2, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 121
    .line 122
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$CannotCreate;

    .line 123
    .line 124
    iget-object v1, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$CannotCreate;->userName:Ljava/lang/String;

    .line 125
    .line 126
    new-array v3, v3, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v1, v3, v7

    .line 129
    .line 130
    const v1, 0x7f1200e3

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v6

    .line 145
    :cond_5
    :goto_0
    iget-object v0, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 146
    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 152
    .line 153
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 154
    .line 155
    .line 156
    :cond_6
    :goto_1
    return-object v5

    .line 157
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v6

    .line 161
    :pswitch_0
    move-object/from16 v1, p1

    .line 162
    .line 163
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$CreateAccountState;

    .line 164
    .line 165
    instance-of v8, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$CreateAccountState$Pass;

    .line 166
    .line 167
    if-eqz v8, :cond_e

    .line 168
    .line 169
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$CreateAccountState$Pass;

    .line 170
    .line 171
    iget-object v1, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$CreateAccountState$Pass;->userName:Ljava/lang/String;

    .line 172
    .line 173
    sget-object v8, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 174
    .line 175
    new-instance v8, Landroid/content/Intent;

    .line 176
    .line 177
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string/jumbo v9, "username"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 187
    .line 188
    if-eqz v1, :cond_d

    .line 189
    .line 190
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 193
    .line 194
    invoke-static {v1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const-string v4, "password"

    .line 199
    .line 200
    invoke-virtual {v8, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v3, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v7}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showProgressBar(Z)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 210
    .line 211
    if-eqz v1, :cond_c

    .line 212
    .line 213
    invoke-virtual {v1}, Lorg/wikipedia/captcha/CaptchaHandler;->cancelCaptcha()V

    .line 214
    .line 215
    .line 216
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    if-eqz v7, :cond_8

    .line 221
    .line 222
    const-string v1, "invoke_source"

    .line 223
    .line 224
    iget-object v2, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->requestSource:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 227
    .line 228
    .line 229
    move-result-object v13

    .line 230
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    const/16 v14, 0x7e

    .line 234
    .line 235
    const-string v8, "success"

    .line 236
    .line 237
    const/4 v9, 0x0

    .line 238
    const/4 v10, 0x0

    .line 239
    const/4 v11, 0x0

    .line 240
    const/4 v12, 0x0

    .line 241
    invoke-static/range {v7 .. v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 242
    .line 243
    .line 244
    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    new-instance v3, Landroidx/paging/HintHandler;

    .line 256
    .line 257
    invoke-direct {v3, v2}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 258
    .line 259
    .line 260
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 261
    .line 262
    const/16 v4, 0x23

    .line 263
    .line 264
    if-lt v2, v4, :cond_9

    .line 265
    .line 266
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 267
    .line 268
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_9
    const/16 v4, 0x1e

    .line 273
    .line 274
    if-lt v2, v4, :cond_a

    .line 275
    .line 276
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 277
    .line 278
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_a
    const/16 v4, 0x1a

    .line 283
    .line 284
    if-lt v2, v4, :cond_b

    .line 285
    .line 286
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 287
    .line 288
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_b
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 293
    .line 294
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 295
    .line 296
    .line 297
    :goto_2
    invoke-virtual {v2}, Lcoil3/util/UtilsKt;->hide()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v6

    .line 308
    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v6

    .line 312
    :cond_e
    instance-of v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$CreateAccountState$Error;

    .line 313
    .line 314
    if-eqz v2, :cond_f

    .line 315
    .line 316
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$CreateAccountState$Error;

    .line 317
    .line 318
    iget-object v1, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$CreateAccountState$Error;->throwable:Ljava/lang/Throwable;

    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-static {v2}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    sget-object v2, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 328
    .line 329
    invoke-virtual {v0, v7}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showProgressBar(Z)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showError(Ljava/lang/Throwable;)V

    .line 333
    .line 334
    .line 335
    :cond_f
    :goto_3
    return-object v5

    .line 336
    :pswitch_1
    move-object/from16 v1, p1

    .line 337
    .line 338
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState;

    .line 339
    .line 340
    instance-of v4, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$DoCreateAccount;

    .line 341
    .line 342
    if-eqz v4, :cond_10

    .line 343
    .line 344
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$DoCreateAccount;

    .line 345
    .line 346
    iget-object v1, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$DoCreateAccount;->token:Ljava/lang/String;

    .line 347
    .line 348
    sget-object v2, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 349
    .line 350
    invoke-virtual {v0, v1, v6}, Lorg/wikipedia/createaccount/CreateAccountActivity;->doCreateAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_10
    instance-of v4, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$HandleHCaptcha;

    .line 355
    .line 356
    if-eqz v4, :cond_12

    .line 357
    .line 358
    sget-object v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 359
    .line 360
    invoke-virtual {v0, v3}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showProgressBar(Z)V

    .line 361
    .line 362
    .line 363
    iget-object v1, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->hCaptchaHelper:Lokio/internal/DefaultSocket;

    .line 364
    .line 365
    invoke-virtual {v1}, Lokio/internal/DefaultSocket;->cleanup()V

    .line 366
    .line 367
    .line 368
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    if-eqz v7, :cond_11

    .line 373
    .line 374
    const/4 v13, 0x0

    .line 375
    const/16 v14, 0xfe

    .line 376
    .line 377
    const-string v8, "hcaptcha_load"

    .line 378
    .line 379
    const/4 v9, 0x0

    .line 380
    const/4 v10, 0x0

    .line 381
    const/4 v11, 0x0

    .line 382
    const/4 v12, 0x0

    .line 383
    invoke-static/range {v7 .. v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 384
    .line 385
    .line 386
    :cond_11
    invoke-virtual {v1, v6}, Lokio/internal/DefaultSocket;->show(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto :goto_4

    .line 390
    :cond_12
    instance-of v3, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$HandleCaptcha;

    .line 391
    .line 392
    if-eqz v3, :cond_14

    .line 393
    .line 394
    iget-object v0, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 395
    .line 396
    if-eqz v0, :cond_13

    .line 397
    .line 398
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$HandleCaptcha;

    .line 399
    .line 400
    iget-object v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$HandleCaptcha;->token:Ljava/lang/String;

    .line 401
    .line 402
    new-instance v3, Lorg/wikipedia/captcha/CaptchaResult;

    .line 403
    .line 404
    iget-object v1, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$HandleCaptcha;->captchaId:Ljava/lang/String;

    .line 405
    .line 406
    invoke-direct {v3, v1}, Lorg/wikipedia/captcha/CaptchaResult;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iput-object v2, v0, Lorg/wikipedia/captcha/CaptchaHandler;->token:Ljava/lang/String;

    .line 410
    .line 411
    iput-object v3, v0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 412
    .line 413
    invoke-virtual {v0, v7}, Lorg/wikipedia/captcha/CaptchaHandler;->handleCaptcha(Z)V

    .line 414
    .line 415
    .line 416
    goto :goto_4

    .line 417
    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v6

    .line 421
    :cond_14
    instance-of v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$InvalidToken;

    .line 422
    .line 423
    if-eqz v2, :cond_15

    .line 424
    .line 425
    const v1, 0x7f1200de

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->handleAccountCreationError(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    goto :goto_4

    .line 439
    :cond_15
    instance-of v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$Error;

    .line 440
    .line 441
    if-eqz v2, :cond_16

    .line 442
    .line 443
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$Error;

    .line 444
    .line 445
    iget-object v1, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$Error;->throwable:Ljava/lang/Throwable;

    .line 446
    .line 447
    sget-object v2, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 448
    .line 449
    invoke-virtual {v0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showError(Ljava/lang/Throwable;)V

    .line 450
    .line 451
    .line 452
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 453
    .line 454
    .line 455
    :cond_16
    :goto_4
    return-object v5

    .line 456
    :pswitch_2
    move-object/from16 v1, p1

    .line 457
    .line 458
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState;

    .line 459
    .line 460
    instance-of v2, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$HCaptchaDisclaimer;

    .line 461
    .line 462
    if-eqz v2, :cond_1c

    .line 463
    .line 464
    iget-object v2, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 465
    .line 466
    if-eqz v2, :cond_1b

    .line 467
    .line 468
    iget-object v2, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v2, Lokhttp3/Request$Builder;

    .line 471
    .line 472
    iget-object v2, v2, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v2, Landroid/widget/TextView;

    .line 475
    .line 476
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 477
    .line 478
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$HCaptchaDisclaimer;

    .line 479
    .line 480
    iget-object v1, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$HCaptchaDisclaimer;->disclaimerMessage:Ljava/lang/String;

    .line 481
    .line 482
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    iget-object v0, v0, Lorg/wikipedia/createaccount/CreateAccountActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 490
    .line 491
    if-eqz v0, :cond_1a

    .line 492
    .line 493
    iget-object v1, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v1, Lokhttp3/Request$Builder;

    .line 496
    .line 497
    iget-object v1, v1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast v1, Landroid/widget/TextView;

    .line 500
    .line 501
    if-eqz v0, :cond_19

    .line 502
    .line 503
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    if-eqz v0, :cond_17

    .line 508
    .line 509
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-nez v0, :cond_18

    .line 514
    .line 515
    :cond_17
    const/16 v7, 0x8

    .line 516
    .line 517
    :cond_18
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 518
    .line 519
    .line 520
    goto :goto_5

    .line 521
    :cond_19
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw v6

    .line 525
    :cond_1a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    throw v6

    .line 529
    :cond_1b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    throw v6

    .line 533
    :cond_1c
    instance-of v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$Error;

    .line 534
    .line 535
    if-eqz v0, :cond_1d

    .line 536
    .line 537
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$Error;

    .line 538
    .line 539
    iget-object v0, v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$Error;->throwable:Ljava/lang/Throwable;

    .line 540
    .line 541
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 542
    .line 543
    .line 544
    :cond_1d
    :goto_5
    return-object v5

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
