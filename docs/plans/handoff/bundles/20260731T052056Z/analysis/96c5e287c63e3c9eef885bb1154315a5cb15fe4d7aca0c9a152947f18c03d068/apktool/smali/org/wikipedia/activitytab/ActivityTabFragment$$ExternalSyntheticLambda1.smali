.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/activitytab/ActivityTabFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activitytab/ActivityTabFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "activity_tab"

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->loadImpact()V

    .line 22
    .line 23
    .line 24
    return-object v6

    .line 25
    :pswitch_0
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->loadImpact()V

    .line 30
    .line 31
    .line 32
    return-object v6

    .line 33
    :pswitch_1
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->getTotalEditsCount()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const/16 v18, 0x0

    .line 46
    .line 47
    const/16 v19, 0x3ff4

    .line 48
    .line 49
    const-string v7, "activity_tab"

    .line 50
    .line 51
    const-string v8, "sugg_edit_click"

    .line 52
    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v13, 0x0

    .line 57
    const/4 v14, 0x0

    .line 58
    const/4 v15, 0x0

    .line 59
    const/16 v16, 0x0

    .line 60
    .line 61
    const/16 v17, 0x0

    .line 62
    .line 63
    invoke-static/range {v7 .. v19}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sget v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksActivity;->$r8$clinit:I

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v2, Landroid/content/Intent;

    .line 77
    .line 78
    const-class v3, Lorg/wikipedia/suggestededits/SuggestedEditsTasksActivity;

    .line 79
    .line 80
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    .line 85
    .line 86
    return-object v6

    .line 87
    :pswitch_2
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->getTotalEditsCount()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v1, v1, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_donationUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 104
    .line 105
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lorg/wikipedia/util/UiState;

    .line 110
    .line 111
    instance-of v2, v1, Lorg/wikipedia/util/UiState$Success;

    .line 112
    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    check-cast v1, Lorg/wikipedia/util/UiState$Success;

    .line 116
    .line 117
    iget-object v1, v1, Lorg/wikipedia/util/UiState$Success;->data:Ljava/lang/Object;

    .line 118
    .line 119
    if-nez v1, :cond_0

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_0
    const-string v1, "complete"

    .line 123
    .line 124
    :goto_0
    move-object v10, v1

    .line 125
    goto :goto_2

    .line 126
    :cond_1
    :goto_1
    const-string v1, "empty"

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :goto_2
    const/16 v18, 0x0

    .line 130
    .line 131
    const/16 v19, 0x3fe4

    .line 132
    .line 133
    const-string v7, "activity_tab"

    .line 134
    .line 135
    const-string v8, "last_donation_click"

    .line 136
    .line 137
    const/4 v11, 0x0

    .line 138
    const/4 v12, 0x0

    .line 139
    const/4 v13, 0x0

    .line 140
    const/4 v14, 0x0

    .line 141
    const/4 v15, 0x0

    .line 142
    const/16 v16, 0x0

    .line 143
    .line 144
    const/16 v17, 0x0

    .line 145
    .line 146
    invoke-static/range {v7 .. v19}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    instance-of v1, v0, Lorg/wikipedia/activity/BaseActivity;

    .line 154
    .line 155
    if-eqz v1, :cond_2

    .line 156
    .line 157
    check-cast v0, Lorg/wikipedia/activity/BaseActivity;

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_2
    move-object v0, v5

    .line 161
    :goto_3
    if-eqz v0, :cond_3

    .line 162
    .line 163
    sget v1, Lorg/wikipedia/activity/BaseActivity;->$r8$clinit:I

    .line 164
    .line 165
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const/16 v1, 0xc

    .line 170
    .line 171
    const-string v2, "appmenu_activity"

    .line 172
    .line 173
    invoke-static {v1, v2, v5}, Lokio/Path$Companion;->newInstance$default(ILjava/lang/String;Ljava/lang/String;)Lorg/wikipedia/donate/DonateDialog;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 178
    .line 179
    .line 180
    :cond_3
    return-object v6

    .line 181
    :pswitch_3
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    new-instance v2, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;

    .line 190
    .line 191
    invoke-direct {v2, v0, v4}, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;I)V

    .line 192
    .line 193
    .line 194
    new-instance v3, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 195
    .line 196
    const/16 v7, 0x17

    .line 197
    .line 198
    invoke-direct {v3, v7, v0, v5}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v2, v5, v3, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 202
    .line 203
    .line 204
    return-object v6

    .line 205
    :pswitch_4
    const/16 v19, 0x0

    .line 206
    .line 207
    const/16 v20, 0x3ffc

    .line 208
    .line 209
    const-string v8, "activity_tab_login"

    .line 210
    .line 211
    const-string v9, "login_click"

    .line 212
    .line 213
    const/4 v10, 0x0

    .line 214
    const/4 v11, 0x0

    .line 215
    const/4 v12, 0x0

    .line 216
    const/4 v13, 0x0

    .line 217
    const/4 v14, 0x0

    .line 218
    const/4 v15, 0x0

    .line 219
    const/16 v16, 0x0

    .line 220
    .line 221
    const/16 v17, 0x0

    .line 222
    .line 223
    const/16 v18, 0x0

    .line 224
    .line 225
    invoke-static/range {v8 .. v20}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    .line 227
    .line 228
    sget v1, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 229
    .line 230
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const/4 v2, 0x0

    .line 235
    invoke-static {v1, v3, v2}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v0, v1, v5}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 240
    .line 241
    .line 242
    return-object v6

    .line 243
    :pswitch_5
    const/16 v18, 0x0

    .line 244
    .line 245
    const/16 v19, 0x3ffc

    .line 246
    .line 247
    const-string v7, "activity_tab_login"

    .line 248
    .line 249
    const-string v8, "create_account_click"

    .line 250
    .line 251
    const/4 v9, 0x0

    .line 252
    const/4 v10, 0x0

    .line 253
    const/4 v11, 0x0

    .line 254
    const/4 v12, 0x0

    .line 255
    const/4 v13, 0x0

    .line 256
    const/4 v14, 0x0

    .line 257
    const/4 v15, 0x0

    .line 258
    const/16 v16, 0x0

    .line 259
    .line 260
    const/16 v17, 0x0

    .line 261
    .line 262
    invoke-static/range {v7 .. v19}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    sget v1, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 266
    .line 267
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v1, v3, v2}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v0, v1, v5}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 276
    .line 277
    .line 278
    return-object v6

    .line 279
    :pswitch_6
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_scrollToGames:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 284
    .line 285
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v5, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    return-object v6

    .line 294
    :pswitch_7
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->loadAll()V

    .line 299
    .line 300
    .line 301
    return-object v6

    .line 302
    :pswitch_8
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    new-instance v3, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;

    .line 311
    .line 312
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;I)V

    .line 313
    .line 314
    .line 315
    new-instance v2, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;

    .line 316
    .line 317
    invoke-direct {v2, v0, v5}, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;-><init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;Lkotlin/coroutines/Continuation;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v1, v3, v5, v2, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 321
    .line 322
    .line 323
    return-object v6

    .line 324
    :pswitch_9
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->getTotalEditsCount()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    const/16 v18, 0x0

    .line 337
    .line 338
    const/16 v19, 0x3ff4

    .line 339
    .line 340
    const-string v7, "activity_tab"

    .line 341
    .line 342
    const-string v8, "explore_click"

    .line 343
    .line 344
    const/4 v10, 0x0

    .line 345
    const/4 v11, 0x0

    .line 346
    const/4 v12, 0x0

    .line 347
    const/4 v13, 0x0

    .line 348
    const/4 v14, 0x0

    .line 349
    const/4 v15, 0x0

    .line 350
    const/16 v16, 0x0

    .line 351
    .line 352
    const/16 v17, 0x0

    .line 353
    .line 354
    invoke-static/range {v7 .. v19}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->callback()Lorg/wikipedia/activitytab/ActivityTabFragment$Callback;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    if-eqz v0, :cond_4

    .line 362
    .line 363
    sget-object v1, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    .line 364
    .line 365
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 366
    .line 367
    invoke-virtual {v0, v1}, Lorg/wikipedia/main/MainFragment;->onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V

    .line 368
    .line 369
    .line 370
    :cond_4
    return-object v6

    .line 371
    :pswitch_a
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->callback()Lorg/wikipedia/activitytab/ActivityTabFragment$Callback;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    if-eqz v0, :cond_5

    .line 376
    .line 377
    sget-object v1, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    .line 378
    .line 379
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Lorg/wikipedia/main/MainFragment;->onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V

    .line 382
    .line 383
    .line 384
    :cond_5
    return-object v6

    .line 385
    :pswitch_b
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->callback()Lorg/wikipedia/activitytab/ActivityTabFragment$Callback;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    if-eqz v0, :cond_6

    .line 390
    .line 391
    sget-object v1, Lorg/wikipedia/navtab/NavTab;->SEARCH:Lorg/wikipedia/navtab/NavTab;

    .line 392
    .line 393
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Lorg/wikipedia/main/MainFragment;->onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V

    .line 396
    .line 397
    .line 398
    :cond_6
    return-object v6

    .line 399
    :pswitch_c
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    sget v2, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->$r8$clinit:I

    .line 404
    .line 405
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    sget-object v8, Lorg/wikipedia/Constants$InvokeSource;->ACTIVITY_TAB:Lorg/wikipedia/Constants$InvokeSource;

    .line 410
    .line 411
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 412
    .line 413
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    const/4 v11, 0x0

    .line 422
    const/16 v12, 0x18

    .line 423
    .line 424
    const/4 v10, 0x0

    .line 425
    invoke-static/range {v7 .. v12}, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;II)Landroid/content/Intent;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 430
    .line 431
    .line 432
    return-object v6

    .line 433
    :pswitch_d
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    sget v2, Lorg/wikipedia/games/GamesHubActivity;->$r8$clinit:I

    .line 438
    .line 439
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    new-instance v2, Landroid/content/Intent;

    .line 444
    .line 445
    const-class v3, Lorg/wikipedia/games/GamesHubActivity;

    .line 446
    .line 447
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 451
    .line 452
    .line 453
    return-object v6

    .line 454
    nop

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
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
