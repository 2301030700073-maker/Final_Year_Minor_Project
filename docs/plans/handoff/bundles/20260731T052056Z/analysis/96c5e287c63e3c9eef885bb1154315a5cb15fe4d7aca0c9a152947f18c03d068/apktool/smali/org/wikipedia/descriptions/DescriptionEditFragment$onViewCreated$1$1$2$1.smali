.class public final Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;I)V
    .locals 0

    .line 10
    iput p2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 18
    .line 19
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Loading;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 31
    .line 32
    invoke-virtual {v0, v5}, Lorg/wikipedia/descriptions/DescriptionEditView;->showProgressBar(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->successRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 55
    .line 56
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v5}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editFailed(Ljava/lang/Throwable;Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-object v4

    .line 62
    :pswitch_0
    move-object/from16 v1, p1

    .line 63
    .line 64
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 65
    .line 66
    instance-of v6, v1, Lorg/wikipedia/util/Resource$Loading;

    .line 67
    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Lorg/wikipedia/descriptions/DescriptionEditView;->showProgressBar(Z)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Lorg/wikipedia/descriptions/DescriptionEditView;->setError(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 102
    .line 103
    invoke-virtual {v0, v5}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSaveState(Z)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_a

    .line 107
    .line 108
    :cond_3
    instance-of v6, v1, Lorg/wikipedia/util/Resource$Success;

    .line 109
    .line 110
    const-string v7, ""

    .line 111
    .line 112
    const-string v8, "captchaHandler"

    .line 113
    .line 114
    if-eqz v6, :cond_11

    .line 115
    .line 116
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    iget-object v9, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 121
    .line 122
    invoke-virtual {v6}, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->shouldWriteToLocalWiki()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    const-string v10, "other"

    .line 127
    .line 128
    const v11, 0x7f12061d

    .line 129
    .line 130
    .line 131
    if-eqz v6, :cond_d

    .line 132
    .line 133
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 134
    .line 135
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    check-cast v1, Lorg/wikipedia/edit/Edit;

    .line 141
    .line 142
    iget-object v1, v1, Lorg/wikipedia/edit/Edit;->edit:Lorg/wikipedia/edit/Edit$Result;

    .line 143
    .line 144
    if-eqz v1, :cond_c

    .line 145
    .line 146
    iget-object v6, v1, Lorg/wikipedia/edit/Edit$Result;->captcha:Lorg/wikipedia/edit/Edit$Captcha;

    .line 147
    .line 148
    iget-object v12, v1, Lorg/wikipedia/edit/Edit$Result;->spamblacklist:Ljava/lang/String;

    .line 149
    .line 150
    iget-wide v13, v1, Lorg/wikipedia/edit/Edit$Result;->newRevId:J

    .line 151
    .line 152
    const-string v15, "Success"

    .line 153
    .line 154
    iget-object v5, v1, Lorg/wikipedia/edit/Edit$Result;->status:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_5

    .line 161
    .line 162
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_4

    .line 167
    .line 168
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 169
    .line 170
    new-instance v1, Ljava/util/Date;

    .line 171
    .line 172
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 176
    .line 177
    .line 178
    move-result-wide v1

    .line 179
    invoke-static {v1, v2, v11}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 180
    .line 181
    .line 182
    :cond_4
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    new-instance v5, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;

    .line 191
    .line 192
    const/4 v6, 0x2

    .line 193
    invoke-direct {v5, v1, v6}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;I)V

    .line 194
    .line 195
    .line 196
    new-instance v7, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;

    .line 197
    .line 198
    invoke-direct {v7, v1, v13, v14, v3}, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;JLkotlin/coroutines/Continuation;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v2, v5, v3, v7, v6}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 202
    .line 203
    .line 204
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 205
    .line 206
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    iget-object v2, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-static {v2, v10}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->logSaveSuccess(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    iget-object v2, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 227
    .line 228
    invoke-virtual {v9, v1, v2, v13, v14}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->logSuccess(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;J)V

    .line 229
    .line 230
    .line 231
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 232
    .line 233
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    iget-object v2, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 238
    .line 239
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 244
    .line 245
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 246
    .line 247
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v1, v2, v0, v13, v14}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logEditSuccess(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;J)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_a

    .line 253
    .line 254
    :cond_5
    iget-object v5, v1, Lorg/wikipedia/edit/Edit$Result;->code:Ljava/lang/String;

    .line 255
    .line 256
    if-eqz v5, :cond_6

    .line 257
    .line 258
    new-instance v1, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 259
    .line 260
    new-instance v3, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 261
    .line 262
    invoke-direct {v3, v5, v12}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-direct {v1, v3}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editFailed(Ljava/lang/Throwable;Z)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_a

    .line 272
    .line 273
    :cond_6
    if-eqz v6, :cond_a

    .line 274
    .line 275
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Lorg/wikipedia/descriptions/DescriptionEditView;->showProgressBar(Z)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 295
    .line 296
    invoke-virtual {v1, v2}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSaveState(Z)V

    .line 297
    .line 298
    .line 299
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 300
    .line 301
    if-eqz v0, :cond_9

    .line 302
    .line 303
    new-instance v1, Lorg/wikipedia/captcha/CaptchaResult;

    .line 304
    .line 305
    if-eqz v6, :cond_7

    .line 306
    .line 307
    iget-object v5, v6, Lorg/wikipedia/edit/Edit$Captcha;->id:Ljava/lang/String;

    .line 308
    .line 309
    goto :goto_1

    .line 310
    :cond_7
    move-object v5, v3

    .line 311
    :goto_1
    if-nez v5, :cond_8

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_8
    move-object v7, v5

    .line 315
    :goto_2
    invoke-direct {v1, v7}, Lorg/wikipedia/captcha/CaptchaResult;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iput-object v3, v0, Lorg/wikipedia/captcha/CaptchaHandler;->token:Ljava/lang/String;

    .line 319
    .line 320
    iput-object v1, v0, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Lorg/wikipedia/captcha/CaptchaHandler;->handleCaptcha(Z)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_a

    .line 326
    .line 327
    :cond_9
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v3

    .line 331
    :cond_a
    if-eqz v12, :cond_b

    .line 332
    .line 333
    new-instance v3, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 334
    .line 335
    new-instance v6, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 336
    .line 337
    iget-object v1, v1, Lorg/wikipedia/edit/Edit$Result;->info:Ljava/lang/String;

    .line 338
    .line 339
    invoke-direct {v6, v5, v1}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-direct {v3, v6}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v3, v2}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editFailed(Ljava/lang/Throwable;Z)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_a

    .line 349
    .line 350
    :cond_b
    new-instance v1, Ljava/io/IOException;

    .line 351
    .line 352
    const-string v2, "Received unrecognized edit response"

    .line 353
    .line 354
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    const/4 v2, 0x1

    .line 358
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editFailed(Ljava/lang/Throwable;Z)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_a

    .line 362
    .line 363
    :cond_c
    move v2, v5

    .line 364
    new-instance v1, Ljava/io/IOException;

    .line 365
    .line 366
    const-string v3, "An unknown error occurred."

    .line 367
    .line 368
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editFailed(Ljava/lang/Throwable;Z)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_a

    .line 375
    .line 376
    :cond_d
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 377
    .line 378
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 379
    .line 380
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    check-cast v1, Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;

    .line 384
    .line 385
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    if-nez v2, :cond_e

    .line 390
    .line 391
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 392
    .line 393
    new-instance v2, Ljava/util/Date;

    .line 394
    .line 395
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 399
    .line 400
    .line 401
    move-result-wide v2

    .line 402
    invoke-static {v2, v3, v11}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 403
    .line 404
    .line 405
    :cond_e
    iget v2, v1, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->success:I

    .line 406
    .line 407
    if-lez v2, :cond_10

    .line 408
    .line 409
    iget-object v1, v1, Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;->entity:Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 410
    .line 411
    if-eqz v1, :cond_f

    .line 412
    .line 413
    iget-wide v1, v1, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->lastRevId:J

    .line 414
    .line 415
    goto :goto_3

    .line 416
    :cond_f
    const-wide/16 v1, 0x0

    .line 417
    .line 418
    :goto_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    iget-object v5, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->successRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 423
    .line 424
    const-wide/16 v6, 0xfa0

    .line 425
    .line 426
    invoke-virtual {v3, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    iget-object v5, v5, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 438
    .line 439
    invoke-virtual {v9, v3, v5, v1, v2}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->logSuccess(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;J)V

    .line 440
    .line 441
    .line 442
    sget-object v3, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 443
    .line 444
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    iget-object v5, v5, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 449
    .line 450
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    iget-object v6, v6, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 455
    .line 456
    iget-object v6, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 457
    .line 458
    iget-object v6, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 459
    .line 460
    invoke-virtual {v3, v5, v6, v1, v2}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logEditSuccess(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;J)V

    .line 461
    .line 462
    .line 463
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 464
    .line 465
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    invoke-static {v0, v10}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->logSaveSuccess(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_a

    .line 478
    .line 479
    :cond_10
    new-instance v1, Ljava/lang/RuntimeException;

    .line 480
    .line 481
    const-string v2, "Received unrecognized description edit response"

    .line 482
    .line 483
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    const/4 v2, 0x1

    .line 487
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editFailed(Ljava/lang/Throwable;Z)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_a

    .line 491
    .line 492
    :cond_11
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 493
    .line 494
    if-eqz v2, :cond_1e

    .line 495
    .line 496
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-virtual {v2}, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->shouldWriteToLocalWiki()Z

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    if-nez v2, :cond_1d

    .line 505
    .line 506
    move-object v2, v1

    .line 507
    check-cast v2, Lorg/wikipedia/util/Resource$Error;

    .line 508
    .line 509
    iget-object v2, v2, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 510
    .line 511
    instance-of v5, v2, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 512
    .line 513
    if-nez v5, :cond_12

    .line 514
    .line 515
    goto/16 :goto_9

    .line 516
    .line 517
    :cond_12
    move-object v1, v2

    .line 518
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 519
    .line 520
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwException;->error:Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 521
    .line 522
    const-string v5, "assertuserfailed"

    .line 523
    .line 524
    iget-object v6, v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->code:Ljava/lang/String;

    .line 525
    .line 526
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v5

    .line 530
    if-nez v5, :cond_14

    .line 531
    .line 532
    const-string v5, "badtoken"

    .line 533
    .line 534
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->code:Ljava/lang/String;

    .line 535
    .line 536
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    if-eqz v1, :cond_13

    .line 541
    .line 542
    goto :goto_4

    .line 543
    :cond_13
    const/4 v1, 0x1

    .line 544
    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editFailed(Ljava/lang/Throwable;Z)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_a

    .line 548
    .line 549
    :cond_14
    :goto_4
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 550
    .line 551
    .line 552
    move-result-object v9

    .line 553
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 561
    .line 562
    invoke-virtual {v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->getDescription()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    if-nez v1, :cond_15

    .line 567
    .line 568
    move-object v10, v7

    .line 569
    goto :goto_5

    .line 570
    :cond_15
    move-object v10, v1

    .line 571
    :goto_5
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getEditComment()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v11

    .line 575
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getEditTags()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v12

    .line 579
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 580
    .line 581
    if-eqz v1, :cond_1c

    .line 582
    .line 583
    invoke-virtual {v1}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    if-eqz v1, :cond_18

    .line 588
    .line 589
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 590
    .line 591
    if-eqz v1, :cond_17

    .line 592
    .line 593
    iget-object v1, v1, Lorg/wikipedia/captcha/CaptchaHandler;->captchaResult:Lorg/wikipedia/captcha/CaptchaResult;

    .line 594
    .line 595
    if-eqz v1, :cond_16

    .line 596
    .line 597
    iget-object v1, v1, Lorg/wikipedia/captcha/CaptchaResult;->captchaId:Ljava/lang/String;

    .line 598
    .line 599
    goto :goto_6

    .line 600
    :cond_16
    move-object v1, v3

    .line 601
    :goto_6
    move-object v13, v1

    .line 602
    goto :goto_7

    .line 603
    :cond_17
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    throw v3

    .line 607
    :cond_18
    move-object v13, v3

    .line 608
    :goto_7
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 609
    .line 610
    if-eqz v1, :cond_1b

    .line 611
    .line 612
    invoke-virtual {v1}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    if-eqz v1, :cond_19

    .line 617
    .line 618
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 619
    .line 620
    if-eqz v0, :cond_1a

    .line 621
    .line 622
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->captchaWord()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    :cond_19
    move-object v14, v3

    .line 627
    goto :goto_8

    .line 628
    :cond_1a
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw v3

    .line 632
    :goto_8
    invoke-virtual/range {v9 .. v14}, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->postDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    goto :goto_a

    .line 636
    :cond_1b
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    throw v3

    .line 640
    :cond_1c
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    throw v3

    .line 644
    :cond_1d
    :goto_9
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 645
    .line 646
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 647
    .line 648
    const/4 v2, 0x1

    .line 649
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editFailed(Ljava/lang/Throwable;Z)V

    .line 650
    .line 651
    .line 652
    :cond_1e
    :goto_a
    return-object v4

    .line 653
    :pswitch_1
    move-object/from16 v1, p1

    .line 654
    .line 655
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 656
    .line 657
    instance-of v5, v1, Lorg/wikipedia/util/Resource$Loading;

    .line 658
    .line 659
    if-eqz v5, :cond_23

    .line 660
    .line 661
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    .line 665
    .line 666
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 669
    .line 670
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->binding:Lorg/wikipedia/databinding/ViewDescriptionEditBinding;

    .line 671
    .line 672
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->suggestedDescButton:Lcom/google/android/material/chip/Chip;

    .line 673
    .line 674
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 678
    .line 679
    .line 680
    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 681
    .line 682
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 683
    .line 684
    .line 685
    move-result-object v5

    .line 686
    invoke-direct {v2, v5}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 687
    .line 688
    .line 689
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 690
    .line 691
    invoke-static {v5}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 692
    .line 693
    .line 694
    move-result v5

    .line 695
    iget-object v6, v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRing:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    .line 696
    .line 697
    iput v5, v6, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    .line 698
    .line 699
    iget-object v6, v6, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 700
    .line 701
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    .line 713
    .line 714
    new-instance v5, Landroid/util/TypedValue;

    .line 715
    .line 716
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    const v6, 0x7f04051a

    .line 724
    .line 725
    .line 726
    const/4 v7, 0x1

    .line 727
    invoke-virtual {v0, v6, v5, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    if-eqz v0, :cond_1f

    .line 732
    .line 733
    goto :goto_b

    .line 734
    :cond_1f
    move-object v5, v3

    .line 735
    :goto_b
    if-eqz v5, :cond_22

    .line 736
    .line 737
    iget v0, v5, Landroid/util/TypedValue;->data:I

    .line 738
    .line 739
    sget-object v5, Landroidx/core/graphics/BlendModeCompat;->SRC_IN:Landroidx/core/graphics/BlendModeCompat;

    .line 740
    .line 741
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 742
    .line 743
    const/16 v7, 0x1d

    .line 744
    .line 745
    if-lt v6, v7, :cond_20

    .line 746
    .line 747
    invoke-static {v5}, Lorg/wikipedia/util/FileUtil;->obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v5

    .line 751
    if-eqz v5, :cond_21

    .line 752
    .line 753
    invoke-static {v0, v5}, Lorg/wikipedia/util/FileUtil;->createBlendModeColorFilter(ILjava/lang/Object;)Landroid/graphics/ColorFilter;

    .line 754
    .line 755
    .line 756
    move-result-object v3

    .line 757
    goto :goto_c

    .line 758
    :cond_20
    invoke-static {v5}, Landroidx/work/OperationKt;->obtainPorterDuffFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/PorterDuff$Mode;

    .line 759
    .line 760
    .line 761
    move-result-object v5

    .line 762
    if-eqz v5, :cond_21

    .line 763
    .line 764
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 765
    .line 766
    invoke-direct {v3, v0, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 767
    .line 768
    .line 769
    :cond_21
    :goto_c
    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v1, v2}, Lcom/google/android/material/chip/Chip;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    .line 776
    .line 777
    .line 778
    goto/16 :goto_d

    .line 779
    .line 780
    :cond_22
    const-string v0, "Attribute not found; ID=2130969882"

    .line 781
    .line 782
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    goto/16 :goto_e

    .line 786
    .line 787
    :cond_23
    instance-of v5, v1, Lorg/wikipedia/util/Resource$Success;

    .line 788
    .line 789
    if-eqz v5, :cond_28

    .line 790
    .line 791
    iget-object v5, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 792
    .line 793
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 794
    .line 795
    .line 796
    move-result-object v6

    .line 797
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 798
    .line 799
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v1, Lkotlin/Triple;

    .line 802
    .line 803
    iget-object v7, v1, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 804
    .line 805
    iget-object v8, v1, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast v7, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Response;

    .line 808
    .line 809
    iget-boolean v7, v7, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Response;->blp:Z

    .line 810
    .line 811
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 812
    .line 813
    .line 814
    move-result-object v9

    .line 815
    iget-object v9, v9, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 816
    .line 817
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 821
    .line 822
    .line 823
    invoke-static {v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->composeLogString(Lorg/wikipedia/page/PageTitle;)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v9

    .line 827
    new-instance v10, Ljava/lang/StringBuilder;

    .line 828
    .line 829
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    const-string v9, ".blp:"

    .line 833
    .line 834
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v7

    .line 844
    invoke-virtual {v5, v6, v7}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->log(Landroid/content/Context;Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    move-object v5, v8

    .line 848
    check-cast v5, Ljava/util/Collection;

    .line 849
    .line 850
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 851
    .line 852
    .line 853
    move-result v5

    .line 854
    if-nez v5, :cond_24

    .line 855
    .line 856
    iget-object v5, v1, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast v5, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Response;

    .line 859
    .line 860
    iget-boolean v5, v5, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Response;->blp:Z

    .line 861
    .line 862
    if-eqz v5, :cond_25

    .line 863
    .line 864
    :cond_24
    iget-object v1, v1, Lkotlin/Triple;->second:Ljava/lang/Object;

    .line 865
    .line 866
    check-cast v1, Ljava/lang/Number;

    .line 867
    .line 868
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 869
    .line 870
    .line 871
    move-result v1

    .line 872
    const/16 v5, 0x32

    .line 873
    .line 874
    if-le v1, v5, :cond_27

    .line 875
    .line 876
    :cond_25
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 877
    .line 878
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    .line 880
    .line 881
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 882
    .line 883
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 884
    .line 885
    move-object v1, v8

    .line 886
    check-cast v1, Ljava/util/List;

    .line 887
    .line 888
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    check-cast v1, Ljava/lang/String;

    .line 893
    .line 894
    move-object v5, v8

    .line 895
    check-cast v5, Ljava/util/List;

    .line 896
    .line 897
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 898
    .line 899
    .line 900
    move-result v5

    .line 901
    const/4 v7, 0x1

    .line 902
    if-le v5, v7, :cond_26

    .line 903
    .line 904
    check-cast v8, Ljava/util/List;

    .line 905
    .line 906
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v3

    .line 910
    check-cast v3, Ljava/lang/String;

    .line 911
    .line 912
    :cond_26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 913
    .line 914
    .line 915
    iget-object v5, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->binding:Lorg/wikipedia/databinding/ViewDescriptionEditBinding;

    .line 916
    .line 917
    iget-object v6, v5, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->suggestedDescButton:Lcom/google/android/material/chip/Chip;

    .line 918
    .line 919
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 923
    .line 924
    .line 925
    move-result-object v8

    .line 926
    const v9, 0x7f0801dd

    .line 927
    .line 928
    .line 929
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 930
    .line 931
    .line 932
    move-result-object v8

    .line 933
    invoke-virtual {v6, v8}, Lcom/google/android/material/chip/Chip;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 934
    .line 935
    .line 936
    new-instance v8, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;

    .line 937
    .line 938
    invoke-direct {v8, v0, v1, v3, v7}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    .line 943
    .line 944
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 945
    .line 946
    new-array v1, v2, [Ljava/lang/Object;

    .line 947
    .line 948
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 949
    .line 950
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 951
    .line 952
    .line 953
    move-result-object v3

    .line 954
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    const v6, 0x7f120678

    .line 959
    .line 960
    .line 961
    invoke-static {v1, v2, v3, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 966
    .line 967
    .line 968
    move-result-object v3

    .line 969
    invoke-static {v3, v2, v1, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    if-nez v1, :cond_29

    .line 974
    .line 975
    iget-object v1, v5, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->rootView:Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 976
    .line 977
    new-instance v2, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda0;

    .line 978
    .line 979
    const/4 v7, 0x1

    .line 980
    invoke-direct {v2, v0, v7}, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;I)V

    .line 981
    .line 982
    .line 983
    const-wide/16 v5, 0x1f4

    .line 984
    .line 985
    invoke-virtual {v1, v2, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 986
    .line 987
    .line 988
    goto :goto_d

    .line 989
    :cond_27
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 990
    .line 991
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 992
    .line 993
    .line 994
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 995
    .line 996
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 997
    .line 998
    invoke-virtual {v1, v2}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSuggestionButtonEnabled(Z)V

    .line 999
    .line 1000
    .line 1001
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 1002
    .line 1003
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1004
    .line 1005
    .line 1006
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 1009
    .line 1010
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->updateSuggestedDescriptionsButtonVisibility()V

    .line 1011
    .line 1012
    .line 1013
    goto :goto_d

    .line 1014
    :cond_28
    instance-of v3, v1, Lorg/wikipedia/util/Resource$Error;

    .line 1015
    .line 1016
    if-eqz v3, :cond_29

    .line 1017
    .line 1018
    iget-object v3, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 1019
    .line 1020
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    .line 1022
    .line 1023
    iget-object v3, v3, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 1024
    .line 1025
    check-cast v3, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 1026
    .line 1027
    invoke-virtual {v3, v2}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSuggestionButtonEnabled(Z)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v2

    .line 1034
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 1035
    .line 1036
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 1037
    .line 1038
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1043
    .line 1044
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1045
    .line 1046
    invoke-static {v2, v1, v0}, Lorg/wikipedia/util/ShareUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 1047
    .line 1048
    .line 1049
    :cond_29
    :goto_d
    move-object v3, v4

    .line 1050
    :goto_e
    return-object v3

    .line 1051
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
