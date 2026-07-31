.class public final Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1$1$1;->$r8$classId:I

    .line 4
    .line 5
    const v2, 0x7f12084c

    .line 6
    .line 7
    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x0

    .line 12
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x1

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 24
    .line 25
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Loading;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 37
    .line 38
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListHeaderView;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_0
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 80
    .line 81
    const/4 v9, 0x3

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 85
    .line 86
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 89
    .line 90
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 91
    .line 92
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v2, Lorg/wikipedia/readinglist/ReadingListHeaderView;

    .line 124
    .line 125
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 136
    .line 137
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v2, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 148
    .line 149
    invoke-virtual {v2, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 150
    .line 151
    .line 152
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 155
    .line 156
    .line 157
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 158
    .line 159
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getYearInReviewModelData()Ljava/util/Map;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 164
    .line 165
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 166
    .line 167
    .line 168
    const/16 v2, 0x7e9

    .line 169
    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-virtual {v3, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    check-cast v10, Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 179
    .line 180
    if-eqz v10, :cond_1

    .line 181
    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const v11, 0x7ffff

    .line 187
    .line 188
    .line 189
    invoke-static {v10, v7, v8, v11}, Lorg/wikipedia/yearinreview/YearInReviewModel;->copy$default(Lorg/wikipedia/yearinreview/YearInReviewModel;IZI)Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-interface {v3, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    invoke-static {v3}, Lorg/wikipedia/settings/Prefs;->setYearInReviewModelData(Ljava/util/Map;)V

    .line 197
    .line 198
    .line 199
    :cond_1
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getViewModel()Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;

    .line 211
    .line 212
    invoke-direct {v3, v0, v9}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;I)V

    .line 213
    .line 214
    .line 215
    new-instance v7, Lcoil3/RealImageLoader$execute$2;

    .line 216
    .line 217
    const/16 v8, 0x19

    .line 218
    .line 219
    invoke-direct {v7, v1, v0, v5, v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 220
    .line 221
    .line 222
    invoke-static {v2, v3, v5, v7, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_2
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 227
    .line 228
    if-eqz v2, :cond_3

    .line 229
    .line 230
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 231
    .line 232
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 233
    .line 234
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 257
    .line 258
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v2, Lorg/wikipedia/readinglist/ReadingListHeaderView;

    .line 269
    .line 270
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v2, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 281
    .line 282
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 293
    .line 294
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda1;

    .line 295
    .line 296
    invoke-direct {v3, v0, v9}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v3}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 310
    .line 311
    invoke-virtual {v0, v1, v5}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 312
    .line 313
    .line 314
    :cond_3
    :goto_0
    return-object v6

    .line 315
    :pswitch_0
    move-object/from16 v1, p1

    .line 316
    .line 317
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 318
    .line 319
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Loading;

    .line 320
    .line 321
    if-eqz v2, :cond_4

    .line 322
    .line 323
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 331
    .line 332
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 343
    .line 344
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    .line 346
    .line 347
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListHeaderView;

    .line 355
    .line 356
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 367
    .line 368
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_1

    .line 372
    .line 373
    :cond_4
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 374
    .line 375
    if-eqz v2, :cond_6

    .line 376
    .line 377
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 378
    .line 379
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 382
    .line 383
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 384
    .line 385
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 393
    .line 394
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 405
    .line 406
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 410
    .line 411
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListHeaderView;

    .line 417
    .line 418
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .line 420
    .line 421
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 422
    .line 423
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 429
    .line 430
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 431
    .line 432
    .line 433
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 441
    .line 442
    invoke-virtual {v1, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 443
    .line 444
    .line 445
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 446
    .line 447
    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->isRecommendedList()Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-eqz v1, :cond_5

    .line 455
    .line 456
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 457
    .line 458
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListOnboardingShown()Z

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    if-nez v1, :cond_5

    .line 463
    .line 464
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->requestPermissionAndScheduleRecommendedReadingNotification$1()V

    .line 465
    .line 466
    .line 467
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListArticlesNumber()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListUpdateFrequency()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->getSnackbarStringRes()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    new-array v3, v4, [Ljava/lang/Object;

    .line 505
    .line 506
    aput-object v1, v3, v7

    .line 507
    .line 508
    aput-object v2, v3, v8

    .line 509
    .line 510
    const v1, 0x7f1207ee

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    const/16 v3, 0xc

    .line 525
    .line 526
    invoke-static {v2, v1, v7, v3}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda1;

    .line 531
    .line 532
    invoke-direct {v2, v0, v8}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 533
    .line 534
    .line 535
    const v0, 0x7f1207ef

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 542
    .line 543
    .line 544
    const v0, 0x7f12066d

    .line 545
    .line 546
    .line 547
    invoke-static {v0, v8}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 548
    .line 549
    .line 550
    :cond_5
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 551
    .line 552
    const v0, 0x7f12066a

    .line 553
    .line 554
    .line 555
    invoke-static {v0, v7}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 556
    .line 557
    .line 558
    new-instance v0, Lorg/wikipedia/events/NewRecommendedReadingListEvent;

    .line 559
    .line 560
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 561
    .line 562
    .line 563
    invoke-static {v0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    goto :goto_1

    .line 567
    :cond_6
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 568
    .line 569
    if-eqz v2, :cond_7

    .line 570
    .line 571
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 572
    .line 573
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 574
    .line 575
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 576
    .line 577
    .line 578
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 579
    .line 580
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 586
    .line 587
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 588
    .line 589
    .line 590
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 591
    .line 592
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    .line 594
    .line 595
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 598
    .line 599
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 600
    .line 601
    .line 602
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 603
    .line 604
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 608
    .line 609
    check-cast v2, Lorg/wikipedia/readinglist/ReadingListHeaderView;

    .line 610
    .line 611
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 612
    .line 613
    .line 614
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 615
    .line 616
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 620
    .line 621
    check-cast v2, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 622
    .line 623
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 624
    .line 625
    .line 626
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 627
    .line 628
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 632
    .line 633
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 634
    .line 635
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda1;

    .line 636
    .line 637
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2, v3}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    .line 642
    .line 643
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 644
    .line 645
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 649
    .line 650
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 651
    .line 652
    invoke-virtual {v0, v1, v5}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 653
    .line 654
    .line 655
    :cond_7
    :goto_1
    return-object v6

    .line 656
    :pswitch_1
    move-object/from16 v1, p1

    .line 657
    .line 658
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 659
    .line 660
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 661
    .line 662
    if-eqz v2, :cond_8

    .line 663
    .line 664
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 665
    .line 666
    if-eqz v2, :cond_9

    .line 667
    .line 668
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 669
    .line 670
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast v1, Ljava/util/List;

    .line 673
    .line 674
    iget-object v3, v2, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 675
    .line 676
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 677
    .line 678
    .line 679
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 680
    .line 681
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 682
    .line 683
    .line 684
    move-result-object v3

    .line 685
    new-instance v4, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 686
    .line 687
    const/16 v5, 0x11

    .line 688
    .line 689
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 690
    .line 691
    .line 692
    invoke-static {v3, v2, v1, v4}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->showDeletePagesUndoSnackbar(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V

    .line 693
    .line 694
    .line 695
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 696
    .line 697
    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 698
    .line 699
    .line 700
    goto :goto_2

    .line 701
    :cond_8
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 702
    .line 703
    if-eqz v2, :cond_9

    .line 704
    .line 705
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 706
    .line 707
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 708
    .line 709
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-static {v0, v1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 717
    .line 718
    .line 719
    :cond_9
    :goto_2
    return-object v6

    .line 720
    :pswitch_2
    move-object/from16 v1, p1

    .line 721
    .line 722
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 723
    .line 724
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 725
    .line 726
    if-eqz v2, :cond_b

    .line 727
    .line 728
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->isRecommendedList()Z

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    if-eqz v2, :cond_a

    .line 733
    .line 734
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 735
    .line 736
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 737
    .line 738
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 739
    .line 740
    iget-object v1, v1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 741
    .line 742
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 743
    .line 744
    .line 745
    move-result v1

    .line 746
    new-instance v13, Ljava/lang/Integer;

    .line 747
    .line 748
    invoke-direct {v13, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 749
    .line 750
    .line 751
    const/16 v16, 0x0

    .line 752
    .line 753
    const/16 v17, 0x1ec

    .line 754
    .line 755
    const-string v9, "add_list_new"

    .line 756
    .line 757
    const-string v10, "rrl_discover"

    .line 758
    .line 759
    const/4 v11, 0x0

    .line 760
    const/4 v12, 0x0

    .line 761
    const/4 v14, 0x0

    .line 762
    const/4 v15, 0x0

    .line 763
    invoke-static/range {v9 .. v17}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 764
    .line 765
    .line 766
    :cond_a
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    sget v2, Lorg/wikipedia/main/MainActivity;->$r8$clinit:I

    .line 771
    .line 772
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    invoke-static {v2}, Lorg/wikipedia/util/UriUtil;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    const/high16 v3, 0x4000000

    .line 781
    .line 782
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    const-string v3, "previewSavedReadingList"

    .line 787
    .line 788
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 800
    .line 801
    .line 802
    goto :goto_3

    .line 803
    :cond_b
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 804
    .line 805
    if-eqz v2, :cond_c

    .line 806
    .line 807
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 808
    .line 809
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 810
    .line 811
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-static {v0, v1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 819
    .line 820
    .line 821
    :cond_c
    :goto_3
    return-object v6

    .line 822
    :pswitch_3
    move-object/from16 v1, p1

    .line 823
    .line 824
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 825
    .line 826
    instance-of v3, v1, Lorg/wikipedia/util/Resource$Success;

    .line 827
    .line 828
    if-eqz v3, :cond_e

    .line 829
    .line 830
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 831
    .line 832
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 833
    .line 834
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 835
    .line 836
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 837
    .line 838
    if-eqz v1, :cond_d

    .line 839
    .line 840
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    sget-object v4, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 845
    .line 846
    new-instance v4, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 847
    .line 848
    invoke-static {v3, v5}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v3

    .line 852
    iget-object v5, v1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 853
    .line 854
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 855
    .line 856
    .line 857
    move-result v5

    .line 858
    const-string v9, "ReadingList.ListItemCount:"

    .line 859
    .line 860
    const-string v10, ".receive_preview"

    .line 861
    .line 862
    invoke-static {v5, v9, v10}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v5

    .line 866
    invoke-direct {v4, v3, v5}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    invoke-static {v4}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 870
    .line 871
    .line 872
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 873
    .line 874
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    .line 876
    .line 877
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 878
    .line 879
    check-cast v3, Lorg/wikipedia/views/SearchEmptyView;

    .line 880
    .line 881
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    new-array v4, v8, [Ljava/lang/Object;

    .line 886
    .line 887
    aput-object v1, v4, v7

    .line 888
    .line 889
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    invoke-virtual {v3, v1}, Lorg/wikipedia/views/SearchEmptyView;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 894
    .line 895
    .line 896
    :cond_d
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 897
    .line 898
    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 899
    .line 900
    .line 901
    goto :goto_4

    .line 902
    :cond_e
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Error;

    .line 903
    .line 904
    if-eqz v2, :cond_f

    .line 905
    .line 906
    check-cast v1, Lorg/wikipedia/util/Resource$Error;

    .line 907
    .line 908
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 909
    .line 910
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 914
    .line 915
    .line 916
    move-result-object v2

    .line 917
    invoke-static {v2, v1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 925
    .line 926
    .line 927
    :cond_f
    :goto_4
    return-object v6

    .line 928
    :pswitch_4
    move-object/from16 v1, p1

    .line 929
    .line 930
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 931
    .line 932
    instance-of v3, v1, Lorg/wikipedia/util/Resource$Success;

    .line 933
    .line 934
    if-eqz v3, :cond_11

    .line 935
    .line 936
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 937
    .line 938
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 939
    .line 940
    .line 941
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 942
    .line 943
    check-cast v3, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 944
    .line 945
    invoke-virtual {v3, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 946
    .line 947
    .line 948
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 949
    .line 950
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 951
    .line 952
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 953
    .line 954
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 955
    .line 956
    if-eqz v1, :cond_10

    .line 957
    .line 958
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 959
    .line 960
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    .line 962
    .line 963
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 964
    .line 965
    check-cast v3, Lorg/wikipedia/views/SearchEmptyView;

    .line 966
    .line 967
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    new-array v4, v8, [Ljava/lang/Object;

    .line 972
    .line 973
    aput-object v1, v4, v7

    .line 974
    .line 975
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    invoke-virtual {v3, v1}, Lorg/wikipedia/views/SearchEmptyView;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 980
    .line 981
    .line 982
    :cond_10
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 983
    .line 984
    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 985
    .line 986
    .line 987
    goto :goto_5

    .line 988
    :cond_11
    instance-of v1, v1, Lorg/wikipedia/util/Resource$Error;

    .line 989
    .line 990
    if-eqz v1, :cond_12

    .line 991
    .line 992
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 997
    .line 998
    .line 999
    :cond_12
    :goto_5
    return-object v6

    .line 1000
    nop

    .line 1001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
