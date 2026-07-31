.class public final Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public I$0:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lorg/wikipedia/page/PageTitle;

.field public L$2:Lorg/wikipedia/page/PageViewModel;

.field public L$3:Lkotlinx/coroutines/DeferredCoroutine;

.field public L$4:Lkotlinx/coroutines/Deferred;

.field public L$5:Lretrofit2/Response;

.field public L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

.field public L$8:Ljava/lang/String;

.field public Z$0:Z

.field public label:I

.field public final synthetic this$0:Lcom/google/gson/GsonBuilder;


# direct methods
.method public constructor <init>(Lcom/google/gson/GsonBuilder;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->this$0:Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->this$0:Lcom/google/gson/GsonBuilder;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;-><init>(Lcom/google/gson/GsonBuilder;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v3, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->label:I

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    const/4 v6, 0x4

    .line 15
    const/4 v7, 0x3

    .line 16
    const/4 v8, 0x2

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x1

    .line 19
    iget-object v15, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->this$0:Lcom/google/gson/GsonBuilder;

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    if-eqz v3, :cond_5

    .line 23
    .line 24
    if-eq v3, v10, :cond_4

    .line 25
    .line 26
    if-eq v3, v8, :cond_3

    .line 27
    .line 28
    if-eq v3, v7, :cond_2

    .line 29
    .line 30
    if-eq v3, v6, :cond_1

    .line 31
    .line 32
    if-ne v3, v4, :cond_0

    .line 33
    .line 34
    iget-boolean v1, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->Z$0:Z

    .line 35
    .line 36
    iget-object v2, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$8:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 39
    .line 40
    iget-object v4, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$2:Lorg/wikipedia/page/PageViewModel;

    .line 41
    .line 42
    check-cast v4, Lkotlinx/coroutines/Deferred;

    .line 43
    .line 44
    iget-object v0, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 45
    .line 46
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object/from16 v19, v5

    .line 50
    .line 51
    move/from16 v17, v9

    .line 52
    .line 53
    move-object v5, v11

    .line 54
    goto/16 :goto_1f

    .line 55
    .line 56
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v11

    .line 62
    :cond_1
    iget v1, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->I$0:I

    .line 63
    .line 64
    iget-boolean v3, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->Z$0:Z

    .line 65
    .line 66
    iget-object v12, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 67
    .line 68
    iget-object v13, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$5:Lretrofit2/Response;

    .line 69
    .line 70
    iget-object v14, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$2:Lorg/wikipedia/page/PageViewModel;

    .line 71
    .line 72
    check-cast v14, Lkotlinx/coroutines/Deferred;

    .line 73
    .line 74
    iget-object v14, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 75
    .line 76
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object v6, v12

    .line 80
    move-object/from16 v12, p1

    .line 81
    .line 82
    :goto_0
    move v4, v1

    .line 83
    move-object v1, v14

    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_2
    iget v1, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->I$0:I

    .line 87
    .line 88
    iget-boolean v3, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->Z$0:Z

    .line 89
    .line 90
    iget-object v12, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$5:Lretrofit2/Response;

    .line 91
    .line 92
    iget-object v13, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$4:Lkotlinx/coroutines/Deferred;

    .line 93
    .line 94
    iget-object v14, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$2:Lorg/wikipedia/page/PageViewModel;

    .line 95
    .line 96
    check-cast v14, Lkotlinx/coroutines/Deferred;

    .line 97
    .line 98
    iget-object v14, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 99
    .line 100
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move-object/from16 v6, p1

    .line 104
    .line 105
    move-object v4, v12

    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_3
    iget v1, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->I$0:I

    .line 109
    .line 110
    iget-boolean v3, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->Z$0:Z

    .line 111
    .line 112
    iget-object v12, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$4:Lkotlinx/coroutines/Deferred;

    .line 113
    .line 114
    iget-object v13, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$3:Lkotlinx/coroutines/DeferredCoroutine;

    .line 115
    .line 116
    iget-object v14, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$2:Lorg/wikipedia/page/PageViewModel;

    .line 117
    .line 118
    check-cast v14, Lkotlinx/coroutines/Deferred;

    .line 119
    .line 120
    iget-object v14, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 121
    .line 122
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    move-object/from16 v4, p1

    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :cond_4
    iget-object v3, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$2:Lorg/wikipedia/page/PageViewModel;

    .line 130
    .line 131
    iget-object v12, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 132
    .line 133
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    move-object/from16 v13, p1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v15, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v3, Lorg/wikipedia/page/PageViewModel;

    .line 145
    .line 146
    iget-object v12, v3, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v12, Lorg/wikipedia/page/PageTitle;

    .line 149
    .line 150
    if-nez v12, :cond_6

    .line 151
    .line 152
    move-object/from16 v19, v5

    .line 153
    .line 154
    goto/16 :goto_25

    .line 155
    .line 156
    :cond_6
    sget-object v13, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 157
    .line 158
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    invoke-virtual {v13}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 163
    .line 164
    .line 165
    move-result-object v13

    .line 166
    iput-object v1, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$0:Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v12, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 169
    .line 170
    iput-object v3, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$2:Lorg/wikipedia/page/PageViewModel;

    .line 171
    .line 172
    iput v10, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->label:I

    .line 173
    .line 174
    invoke-virtual {v13, v12, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->findPageInAnyList(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    if-ne v13, v2, :cond_7

    .line 179
    .line 180
    goto/16 :goto_1e

    .line 181
    .line 182
    :cond_7
    :goto_1
    check-cast v13, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 183
    .line 184
    iput-object v13, v3, Lorg/wikipedia/page/PageViewModel;->readingListPage:Ljava/lang/Object;

    .line 185
    .line 186
    iget-object v3, v15, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v3, Lorg/wikipedia/page/PageFragment;

    .line 189
    .line 190
    iget-object v13, v15, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v13, Lorg/wikipedia/bridge/CommunicationBridge;

    .line 193
    .line 194
    iget-object v14, v15, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v14, Lorg/wikipedia/page/PageFragment;

    .line 197
    .line 198
    invoke-virtual {v3}, Lorg/wikipedia/page/PageFragment;->updateQuickActionsAndMenuOptions()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v14}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    if-eqz v3, :cond_8

    .line 213
    .line 214
    check-cast v3, Lorg/wikipedia/page/PageActivity;

    .line 215
    .line 216
    invoke-virtual {v3, v10}, Lorg/wikipedia/page/PageActivity;->updateProgressBar$1(Z)V

    .line 217
    .line 218
    .line 219
    :cond_8
    iget-object v3, v15, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v3, Lorg/wikipedia/page/PageViewModel;

    .line 222
    .line 223
    iput-object v11, v3, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 224
    .line 225
    invoke-virtual {v12}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    const-string v4, ":"

    .line 230
    .line 231
    invoke-static {v3, v4, v9}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-nez v3, :cond_9

    .line 236
    .line 237
    invoke-virtual {v13, v12}, Lorg/wikipedia/bridge/CommunicationBridge;->resetHtml(Lorg/wikipedia/page/PageTitle;)V

    .line 238
    .line 239
    .line 240
    :cond_9
    invoke-virtual {v12}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    sget-object v6, Lorg/wikipedia/page/Namespace;->SPECIAL:Lorg/wikipedia/page/Namespace;

    .line 245
    .line 246
    if-ne v4, v6, :cond_a

    .line 247
    .line 248
    invoke-virtual {v13, v12}, Lorg/wikipedia/bridge/CommunicationBridge;->resetHtml(Lorg/wikipedia/page/PageTitle;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, v15, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 254
    .line 255
    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->loadLeadImage()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14, v11}, Lorg/wikipedia/page/PageFragment;->onPageMetadataLoaded(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return-object v5

    .line 269
    :cond_a
    new-instance v4, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;

    .line 270
    .line 271
    invoke-direct {v4, v12, v15, v11, v10}, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;-><init>(Lorg/wikipedia/page/PageTitle;Lcom/google/gson/GsonBuilder;Lkotlin/coroutines/Continuation;I)V

    .line 272
    .line 273
    .line 274
    invoke-static {v1, v11, v4, v7}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    sget-object v6, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 279
    .line 280
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-virtual {v6}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-eqz v6, :cond_b

    .line 289
    .line 290
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    if-eqz v6, :cond_b

    .line 295
    .line 296
    move v6, v10

    .line 297
    goto :goto_2

    .line 298
    :cond_b
    move v6, v9

    .line 299
    :goto_2
    new-instance v13, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;

    .line 300
    .line 301
    invoke-direct {v13, v6, v12, v11, v9}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;-><init>(ZLorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 302
    .line 303
    .line 304
    invoke-static {v1, v11, v13, v7}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 305
    .line 306
    .line 307
    move-result-object v13

    .line 308
    new-instance v14, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;

    .line 309
    .line 310
    invoke-direct {v14, v6, v12, v11, v10}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;-><init>(ZLorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 311
    .line 312
    .line 313
    invoke-static {v1, v11, v14, v7}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    iput-object v11, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$0:Ljava/lang/Object;

    .line 318
    .line 319
    iput-object v12, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 320
    .line 321
    iput-object v11, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$2:Lorg/wikipedia/page/PageViewModel;

    .line 322
    .line 323
    iput-object v13, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$3:Lkotlinx/coroutines/DeferredCoroutine;

    .line 324
    .line 325
    iput-object v1, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$4:Lkotlinx/coroutines/Deferred;

    .line 326
    .line 327
    iput-boolean v3, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->Z$0:Z

    .line 328
    .line 329
    iput v6, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->I$0:I

    .line 330
    .line 331
    iput v8, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->label:I

    .line 332
    .line 333
    invoke-virtual {v4, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    if-ne v4, v2, :cond_c

    .line 338
    .line 339
    goto/16 :goto_1e

    .line 340
    .line 341
    :cond_c
    move-object v14, v12

    .line 342
    move-object v12, v1

    .line 343
    move v1, v6

    .line 344
    :goto_3
    check-cast v4, Lretrofit2/Response;

    .line 345
    .line 346
    iput-object v11, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$0:Ljava/lang/Object;

    .line 347
    .line 348
    iput-object v14, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 349
    .line 350
    iput-object v11, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$2:Lorg/wikipedia/page/PageViewModel;

    .line 351
    .line 352
    iput-object v11, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$3:Lkotlinx/coroutines/DeferredCoroutine;

    .line 353
    .line 354
    iput-object v12, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$4:Lkotlinx/coroutines/Deferred;

    .line 355
    .line 356
    iput-object v4, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$5:Lretrofit2/Response;

    .line 357
    .line 358
    iput-boolean v3, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->Z$0:Z

    .line 359
    .line 360
    iput v1, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->I$0:I

    .line 361
    .line 362
    iput v7, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->label:I

    .line 363
    .line 364
    invoke-interface {v13, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    if-ne v6, v2, :cond_d

    .line 369
    .line 370
    goto/16 :goto_1e

    .line 371
    .line 372
    :cond_d
    move-object v13, v12

    .line 373
    :goto_4
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 374
    .line 375
    iput-object v11, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$0:Ljava/lang/Object;

    .line 376
    .line 377
    iput-object v14, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 378
    .line 379
    iput-object v11, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$2:Lorg/wikipedia/page/PageViewModel;

    .line 380
    .line 381
    iput-object v11, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$3:Lkotlinx/coroutines/DeferredCoroutine;

    .line 382
    .line 383
    iput-object v11, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$4:Lkotlinx/coroutines/Deferred;

    .line 384
    .line 385
    iput-object v4, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$5:Lretrofit2/Response;

    .line 386
    .line 387
    iput-object v6, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 388
    .line 389
    iput-boolean v3, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->Z$0:Z

    .line 390
    .line 391
    iput v1, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->I$0:I

    .line 392
    .line 393
    const/4 v12, 0x4

    .line 394
    iput v12, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->label:I

    .line 395
    .line 396
    invoke-interface {v13, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v12

    .line 400
    if-ne v12, v2, :cond_e

    .line 401
    .line 402
    goto/16 :goto_1e

    .line 403
    .line 404
    :cond_e
    move-object v13, v4

    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :goto_5
    check-cast v12, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 408
    .line 409
    iget-object v14, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 410
    .line 411
    move-object/from16 v16, v11

    .line 412
    .line 413
    if-eqz v14, :cond_f

    .line 414
    .line 415
    invoke-virtual {v14}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 416
    .line 417
    .line 418
    move-result-object v11

    .line 419
    if-eqz v11, :cond_f

    .line 420
    .line 421
    iget-boolean v11, v11, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watched:Z

    .line 422
    .line 423
    if-ne v11, v10, :cond_f

    .line 424
    .line 425
    move v11, v10

    .line 426
    goto :goto_6

    .line 427
    :cond_f
    move v11, v9

    .line 428
    :goto_6
    if-eqz v14, :cond_12

    .line 429
    .line 430
    invoke-virtual {v14}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 431
    .line 432
    .line 433
    move-result-object v8

    .line 434
    if-eqz v8, :cond_12

    .line 435
    .line 436
    iget-object v8, v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watchlistExpiry:Ljava/lang/String;

    .line 437
    .line 438
    if-eqz v8, :cond_11

    .line 439
    .line 440
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 441
    .line 442
    .line 443
    move-result v8

    .line 444
    if-nez v8, :cond_10

    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_10
    move v8, v9

    .line 448
    goto :goto_8

    .line 449
    :cond_11
    :goto_7
    move v8, v10

    .line 450
    :goto_8
    xor-int/2addr v8, v10

    .line 451
    if-ne v8, v10, :cond_12

    .line 452
    .line 453
    move/from16 v17, v9

    .line 454
    .line 455
    move v8, v10

    .line 456
    goto :goto_9

    .line 457
    :cond_12
    move v8, v9

    .line 458
    move/from16 v17, v8

    .line 459
    .line 460
    :goto_9
    iget-object v9, v13, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 461
    .line 462
    iget-object v7, v13, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    .line 463
    .line 464
    iget-object v10, v7, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 465
    .line 466
    move-object/from16 v19, v5

    .line 467
    .line 468
    iget-object v5, v7, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 469
    .line 470
    if-eqz v9, :cond_3f

    .line 471
    .line 472
    iget-object v7, v7, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 473
    .line 474
    if-eqz v7, :cond_13

    .line 475
    .line 476
    iget-boolean v7, v7, Lokhttp3/Response;->isRedirect:Z

    .line 477
    .line 478
    const/4 v9, 0x1

    .line 479
    if-ne v7, v9, :cond_13

    .line 480
    .line 481
    iget-object v7, v15, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v7, Lorg/wikipedia/page/PageViewModel;

    .line 484
    .line 485
    iget-object v7, v7, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v7, Lorg/wikipedia/page/PageTitle;

    .line 488
    .line 489
    if-eqz v7, :cond_13

    .line 490
    .line 491
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    goto :goto_a

    .line 496
    :cond_13
    move-object/from16 v7, v16

    .line 497
    .line 498
    :goto_a
    iget-object v9, v15, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast v9, Lorg/wikipedia/page/PageViewModel;

    .line 501
    .line 502
    move-object/from16 p1, v12

    .line 503
    .line 504
    iget-object v12, v15, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v12, Lorg/wikipedia/page/PageFragment;

    .line 507
    .line 508
    iget-object v13, v13, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 509
    .line 510
    if-nez v13, :cond_14

    .line 511
    .line 512
    move-object/from16 v23, v2

    .line 513
    .line 514
    move/from16 v25, v3

    .line 515
    .line 516
    move/from16 v24, v4

    .line 517
    .line 518
    move-object/from16 v26, v7

    .line 519
    .line 520
    move-object v7, v12

    .line 521
    move-object/from16 v22, v14

    .line 522
    .line 523
    move-object/from16 v5, v16

    .line 524
    .line 525
    move-object/from16 v2, p1

    .line 526
    .line 527
    goto/16 :goto_1b

    .line 528
    .line 529
    :cond_14
    check-cast v13, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 530
    .line 531
    move-object/from16 v20, v12

    .line 532
    .line 533
    iget-object v12, v9, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v12, Lorg/wikipedia/page/PageTitle;

    .line 536
    .line 537
    const-string v21, ""

    .line 538
    .line 539
    if-eqz v12, :cond_1c

    .line 540
    .line 541
    move-object/from16 v22, v14

    .line 542
    .line 543
    new-instance v14, Lorg/wikipedia/page/Page;

    .line 544
    .line 545
    move-object/from16 v23, v2

    .line 546
    .line 547
    iget-object v2, v13, Lorg/wikipedia/dataclient/page/PageSummary;->titles:Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    .line 548
    .line 549
    if-eqz v2, :cond_15

    .line 550
    .line 551
    iget-object v2, v2, Lorg/wikipedia/dataclient/page/PageSummary$Titles;->canonical:Ljava/lang/String;

    .line 552
    .line 553
    if-eqz v2, :cond_15

    .line 554
    .line 555
    move/from16 v24, v4

    .line 556
    .line 557
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    .line 558
    .line 559
    move/from16 v25, v3

    .line 560
    .line 561
    iget-object v3, v12, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 562
    .line 563
    move-object/from16 v26, v7

    .line 564
    .line 565
    iget-object v7, v12, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 566
    .line 567
    invoke-direct {v4, v2, v3, v7}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    iget-object v2, v12, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 571
    .line 572
    iput-object v2, v4, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 573
    .line 574
    move-object v12, v4

    .line 575
    goto :goto_b

    .line 576
    :cond_15
    move/from16 v25, v3

    .line 577
    .line 578
    move/from16 v24, v4

    .line 579
    .line 580
    move-object/from16 v26, v7

    .line 581
    .line 582
    :goto_b
    iget-object v2, v13, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 583
    .line 584
    iput-object v2, v12, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 585
    .line 586
    new-instance v27, Lorg/wikipedia/page/PageProperties;

    .line 587
    .line 588
    iget-object v2, v13, Lorg/wikipedia/dataclient/page/PageSummary;->timestamp:Ljava/lang/String;

    .line 589
    .line 590
    iget v3, v13, Lorg/wikipedia/dataclient/page/PageSummary;->pageId:I

    .line 591
    .line 592
    iget-object v4, v13, Lorg/wikipedia/dataclient/page/PageSummary;->namespace:Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    .line 593
    .line 594
    if-nez v4, :cond_16

    .line 595
    .line 596
    sget-object v4, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 597
    .line 598
    :goto_c
    move/from16 v28, v3

    .line 599
    .line 600
    move-object/from16 v29, v4

    .line 601
    .line 602
    move-object v4, v2

    .line 603
    goto :goto_d

    .line 604
    :cond_16
    sget-object v7, Lorg/wikipedia/page/Namespace;->Companion:Lorg/wikipedia/page/Namespace$Companion;

    .line 605
    .line 606
    iget v4, v4, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;->id:I

    .line 607
    .line 608
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    invoke-static {v4}, Lorg/wikipedia/page/Namespace$Companion;->of(I)Lorg/wikipedia/page/Namespace;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    goto :goto_c

    .line 616
    :goto_d
    iget-wide v2, v13, Lorg/wikipedia/dataclient/page/PageSummary;->revision:J

    .line 617
    .line 618
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 619
    .line 620
    .line 621
    move-result v7

    .line 622
    if-nez v7, :cond_17

    .line 623
    .line 624
    new-instance v4, Ljava/util/Date;

    .line 625
    .line 626
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 627
    .line 628
    .line 629
    :goto_e
    move-object/from16 v32, v4

    .line 630
    .line 631
    goto :goto_f

    .line 632
    :cond_17
    sget-object v7, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 633
    .line 634
    invoke-static {v4}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    goto :goto_e

    .line 639
    :goto_f
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v33

    .line 643
    iget-object v4, v13, Lorg/wikipedia/dataclient/page/PageSummary;->type:Ljava/lang/String;

    .line 644
    .line 645
    const-string v7, "mainpage"

    .line 646
    .line 647
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    move-result v35

    .line 651
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v4

    .line 655
    if-eqz v4, :cond_18

    .line 656
    .line 657
    const/16 v7, 0x3c0

    .line 658
    .line 659
    invoke-static {v7, v4}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    move-object/from16 v36, v4

    .line 664
    .line 665
    goto :goto_10

    .line 666
    :cond_18
    move-object/from16 v36, v16

    .line 667
    .line 668
    :goto_10
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/page/PageSummary;->getLeadImageName()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v4

    .line 672
    if-nez v4, :cond_19

    .line 673
    .line 674
    move-object/from16 v4, v21

    .line 675
    .line 676
    :cond_19
    :try_start_0
    const-string v7, "+"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .line 678
    move-wide/from16 v30, v2

    .line 679
    .line 680
    :try_start_1
    const-string v2, "%2B"

    .line 681
    .line 682
    invoke-static {v4, v7, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    const-string v3, "UTF-8"

    .line 687
    .line 688
    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 693
    .line 694
    .line 695
    move-object/from16 v37, v2

    .line 696
    .line 697
    goto :goto_11

    .line 698
    :catch_0
    move-exception v0

    .line 699
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 700
    .line 701
    .line 702
    return-object v16

    .line 703
    :catch_1
    move-wide/from16 v30, v2

    .line 704
    .line 705
    :catch_2
    const-string v2, "URL decoding failed. String was: "

    .line 706
    .line 707
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    invoke-static {v2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    move-object/from16 v37, v4

    .line 715
    .line 716
    :goto_11
    iget-object v2, v13, Lorg/wikipedia/dataclient/page/PageSummary;->thumbnail:Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 717
    .line 718
    if-eqz v2, :cond_1a

    .line 719
    .line 720
    iget v3, v2, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->width:I

    .line 721
    .line 722
    move/from16 v38, v3

    .line 723
    .line 724
    goto :goto_12

    .line 725
    :cond_1a
    move/from16 v38, v17

    .line 726
    .line 727
    :goto_12
    if-eqz v2, :cond_1b

    .line 728
    .line 729
    iget v2, v2, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->height:I

    .line 730
    .line 731
    move/from16 v39, v2

    .line 732
    .line 733
    goto :goto_13

    .line 734
    :cond_1b
    move/from16 v39, v17

    .line 735
    .line 736
    :goto_13
    iget-object v2, v13, Lorg/wikipedia/dataclient/page/PageSummary;->coordinates:Landroid/location/Location;

    .line 737
    .line 738
    iget-object v3, v13, Lorg/wikipedia/dataclient/page/PageSummary;->wikiBaseItem:Ljava/lang/String;

    .line 739
    .line 740
    iget-object v4, v13, Lorg/wikipedia/dataclient/page/PageSummary;->descriptionSource:Ljava/lang/String;

    .line 741
    .line 742
    const-string v34, ""

    .line 743
    .line 744
    const/16 v43, 0x0

    .line 745
    .line 746
    move-object/from16 v40, v2

    .line 747
    .line 748
    move-object/from16 v41, v3

    .line 749
    .line 750
    move-object/from16 v42, v4

    .line 751
    .line 752
    invoke-direct/range {v27 .. v43}, Lorg/wikipedia/page/PageProperties;-><init>(ILorg/wikipedia/page/Namespace;JLjava/util/Date;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 753
    .line 754
    .line 755
    move-object/from16 v2, v27

    .line 756
    .line 757
    invoke-direct {v14, v12, v2}, Lorg/wikipedia/page/Page;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageProperties;)V

    .line 758
    .line 759
    .line 760
    goto :goto_14

    .line 761
    :cond_1c
    move-object/from16 v23, v2

    .line 762
    .line 763
    move/from16 v25, v3

    .line 764
    .line 765
    move/from16 v24, v4

    .line 766
    .line 767
    move-object/from16 v26, v7

    .line 768
    .line 769
    move-object/from16 v22, v14

    .line 770
    .line 771
    move-object/from16 v14, v16

    .line 772
    .line 773
    :goto_14
    iput-object v14, v9, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 774
    .line 775
    iput-boolean v11, v9, Lorg/wikipedia/page/PageViewModel;->isWatched:Z

    .line 776
    .line 777
    iput-boolean v8, v9, Lorg/wikipedia/page/PageViewModel;->hasWatchlistExpiry:Z

    .line 778
    .line 779
    if-eqz v14, :cond_1d

    .line 780
    .line 781
    iget-object v2, v14, Lorg/wikipedia/page/Page;->title:Lorg/wikipedia/page/PageTitle;

    .line 782
    .line 783
    goto :goto_15

    .line 784
    :cond_1d
    move-object/from16 v2, v16

    .line 785
    .line 786
    :goto_15
    iput-object v2, v9, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 787
    .line 788
    if-eqz v2, :cond_2e

    .line 789
    .line 790
    iget-object v3, v5, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 791
    .line 792
    iget-object v3, v3, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;

    .line 793
    .line 794
    if-eqz v3, :cond_1f

    .line 795
    .line 796
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 797
    .line 798
    .line 799
    move-result v3

    .line 800
    if-nez v3, :cond_1e

    .line 801
    .line 802
    goto :goto_16

    .line 803
    :cond_1e
    iget-object v3, v5, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 804
    .line 805
    iget-object v3, v3, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;

    .line 806
    .line 807
    iput-object v3, v2, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 808
    .line 809
    :cond_1f
    :goto_16
    iget-object v3, v2, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 810
    .line 811
    if-eqz v3, :cond_20

    .line 812
    .line 813
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 814
    .line 815
    .line 816
    move-result v3

    .line 817
    if-nez v3, :cond_21

    .line 818
    .line 819
    :cond_20
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 820
    .line 821
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getAppSessionEvent()Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;

    .line 826
    .line 827
    .line 828
    move-result-object v3

    .line 829
    invoke-virtual {v3}, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->touchSession()V

    .line 830
    .line 831
    .line 832
    iget-object v3, v3, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 833
    .line 834
    iget v4, v3, Lorg/wikipedia/analytics/SessionData;->pagesWithNoDescription:I

    .line 835
    .line 836
    const/16 v18, 0x1

    .line 837
    .line 838
    add-int/lit8 v4, v4, 0x1

    .line 839
    .line 840
    iput v4, v3, Lorg/wikipedia/analytics/SessionData;->pagesWithNoDescription:I

    .line 841
    .line 842
    :cond_21
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->isMainPage()Z

    .line 843
    .line 844
    .line 845
    move-result v3

    .line 846
    if-nez v3, :cond_24

    .line 847
    .line 848
    if-eqz v14, :cond_22

    .line 849
    .line 850
    iget-object v3, v14, Lorg/wikipedia/page/Page;->displayTitle:Ljava/lang/String;

    .line 851
    .line 852
    goto :goto_17

    .line 853
    :cond_22
    move-object/from16 v3, v16

    .line 854
    .line 855
    :goto_17
    if-nez v3, :cond_23

    .line 856
    .line 857
    move-object/from16 v3, v21

    .line 858
    .line 859
    :cond_23
    iput-object v3, v2, Lorg/wikipedia/page/PageTitle;->_displayText:Ljava/lang/String;

    .line 860
    .line 861
    :cond_24
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v3

    .line 865
    iput-object v3, v2, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 866
    .line 867
    iget-object v3, v15, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 868
    .line 869
    check-cast v3, Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 870
    .line 871
    invoke-virtual {v3}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->loadLeadImage()V

    .line 872
    .line 873
    .line 874
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 875
    .line 876
    .line 877
    move-result-object v3

    .line 878
    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 879
    .line 880
    .line 881
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 882
    .line 883
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 884
    .line 885
    .line 886
    move-result-object v3

    .line 887
    iget-object v3, v3, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 888
    .line 889
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 890
    .line 891
    .line 892
    move-result-object v4

    .line 893
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 894
    .line 895
    .line 896
    move-result v4

    .line 897
    const/16 v18, 0x1

    .line 898
    .line 899
    add-int/lit8 v4, v4, -0x1

    .line 900
    .line 901
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    check-cast v3, Lorg/wikipedia/page/tabs/Tab;

    .line 906
    .line 907
    if-eqz v3, :cond_25

    .line 908
    .line 909
    invoke-virtual {v3}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    .line 910
    .line 911
    .line 912
    move-result-object v4

    .line 913
    if-eqz v4, :cond_25

    .line 914
    .line 915
    iget-object v4, v3, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 916
    .line 917
    invoke-virtual {v3}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 918
    .line 919
    .line 920
    move-result v3

    .line 921
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v3

    .line 925
    check-cast v3, Lorg/wikipedia/page/PageBackStackItem;

    .line 926
    .line 927
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    .line 929
    .line 930
    iput-object v2, v3, Lorg/wikipedia/page/PageBackStackItem;->title:Lorg/wikipedia/page/PageTitle;

    .line 931
    .line 932
    :cond_25
    iget-object v3, v9, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 933
    .line 934
    check-cast v3, Lorg/wikipedia/history/HistoryEntry;

    .line 935
    .line 936
    if-eqz v3, :cond_2e

    .line 937
    .line 938
    new-instance v12, Lorg/wikipedia/history/HistoryEntry;

    .line 939
    .line 940
    iget v4, v3, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 941
    .line 942
    iget-object v5, v3, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 943
    .line 944
    invoke-direct {v12, v2, v4, v5}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;ILjava/util/Date;)V

    .line 945
    .line 946
    .line 947
    iget-object v5, v3, Lorg/wikipedia/history/HistoryEntry;->referrer:Ljava/lang/String;

    .line 948
    .line 949
    iput-object v5, v12, Lorg/wikipedia/history/HistoryEntry;->referrer:Ljava/lang/String;

    .line 950
    .line 951
    iget-wide v7, v3, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    .line 952
    .line 953
    iput-wide v7, v12, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    .line 954
    .line 955
    iput-object v12, v9, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 956
    .line 957
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 958
    .line 959
    .line 960
    move-result-object v3

    .line 961
    new-instance v11, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;

    .line 962
    .line 963
    move-object/from16 v5, v16

    .line 964
    .line 965
    const/16 v16, 0x0

    .line 966
    .line 967
    move-object v14, v13

    .line 968
    move-object/from16 v7, v20

    .line 969
    .line 970
    move-object v13, v2

    .line 971
    move-object/from16 v2, p1

    .line 972
    .line 973
    invoke-direct/range {v11 .. v16}, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;-><init>(Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/dataclient/page/PageSummary;Lcom/google/gson/GsonBuilder;Lkotlin/coroutines/Continuation;)V

    .line 974
    .line 975
    .line 976
    const/4 v8, 0x3

    .line 977
    invoke-static {v3, v5, v5, v11, v8}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 978
    .line 979
    .line 980
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 981
    .line 982
    .line 983
    move-result-object v3

    .line 984
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getAppSessionEvent()Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;

    .line 985
    .line 986
    .line 987
    move-result-object v3

    .line 988
    invoke-virtual {v3}, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->touchSession()V

    .line 989
    .line 990
    .line 991
    iget-object v3, v3, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 992
    .line 993
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 994
    .line 995
    .line 996
    const/4 v9, 0x1

    .line 997
    if-eq v4, v9, :cond_2c

    .line 998
    .line 999
    const/16 v9, 0xb

    .line 1000
    .line 1001
    if-eq v4, v9, :cond_2b

    .line 1002
    .line 1003
    const/16 v9, 0x1e

    .line 1004
    .line 1005
    if-eq v4, v9, :cond_2a

    .line 1006
    .line 1007
    if-eq v4, v8, :cond_29

    .line 1008
    .line 1009
    const/4 v12, 0x4

    .line 1010
    if-eq v4, v12, :cond_28

    .line 1011
    .line 1012
    const/4 v8, 0x6

    .line 1013
    if-eq v4, v8, :cond_27

    .line 1014
    .line 1015
    const/4 v8, 0x7

    .line 1016
    if-eq v4, v8, :cond_26

    .line 1017
    .line 1018
    iget v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromInternal:I

    .line 1019
    .line 1020
    const/16 v18, 0x1

    .line 1021
    .line 1022
    add-int/lit8 v8, v8, 0x1

    .line 1023
    .line 1024
    iput v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromInternal:I

    .line 1025
    .line 1026
    goto :goto_18

    .line 1027
    :cond_26
    const/16 v18, 0x1

    .line 1028
    .line 1029
    iget v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromRandom:I

    .line 1030
    .line 1031
    add-int/lit8 v8, v8, 0x1

    .line 1032
    .line 1033
    iput v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromRandom:I

    .line 1034
    .line 1035
    goto :goto_18

    .line 1036
    :cond_27
    const/16 v18, 0x1

    .line 1037
    .line 1038
    iget v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromLangLink:I

    .line 1039
    .line 1040
    add-int/lit8 v8, v8, 0x1

    .line 1041
    .line 1042
    iput v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromLangLink:I

    .line 1043
    .line 1044
    goto :goto_18

    .line 1045
    :cond_28
    const/16 v18, 0x1

    .line 1046
    .line 1047
    iget v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromHistory:I

    .line 1048
    .line 1049
    add-int/lit8 v8, v8, 0x1

    .line 1050
    .line 1051
    iput v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromHistory:I

    .line 1052
    .line 1053
    goto :goto_18

    .line 1054
    :cond_29
    const/16 v18, 0x1

    .line 1055
    .line 1056
    iget v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromExternal:I

    .line 1057
    .line 1058
    add-int/lit8 v8, v8, 0x1

    .line 1059
    .line 1060
    iput v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromExternal:I

    .line 1061
    .line 1062
    goto :goto_18

    .line 1063
    :cond_2a
    const/16 v18, 0x1

    .line 1064
    .line 1065
    iget v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromSuggestedEdits:I

    .line 1066
    .line 1067
    add-int/lit8 v8, v8, 0x1

    .line 1068
    .line 1069
    iput v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromSuggestedEdits:I

    .line 1070
    .line 1071
    goto :goto_18

    .line 1072
    :cond_2b
    const/16 v18, 0x1

    .line 1073
    .line 1074
    iget v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromReadingList:I

    .line 1075
    .line 1076
    add-int/lit8 v8, v8, 0x1

    .line 1077
    .line 1078
    iput v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromReadingList:I

    .line 1079
    .line 1080
    goto :goto_18

    .line 1081
    :cond_2c
    move/from16 v18, v9

    .line 1082
    .line 1083
    iget v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromSearch:I

    .line 1084
    .line 1085
    add-int/lit8 v8, v8, 0x1

    .line 1086
    .line 1087
    iput v8, v3, Lorg/wikipedia/analytics/SessionData;->pagesFromSearch:I

    .line 1088
    .line 1089
    :goto_18
    iget-object v3, v13, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1090
    .line 1091
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v32

    .line 1095
    iget v3, v14, Lorg/wikipedia/dataclient/page/PageSummary;->pageId:I

    .line 1096
    .line 1097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1098
    .line 1099
    .line 1100
    move-result-wide v8

    .line 1101
    sget-object v11, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1102
    .line 1103
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isLinkPreviewEnabled()Z

    .line 1104
    .line 1105
    .line 1106
    move-result v11

    .line 1107
    if-eqz v11, :cond_2d

    .line 1108
    .line 1109
    const-string v11, "navigate"

    .line 1110
    .line 1111
    :goto_19
    move-object/from16 v31, v11

    .line 1112
    .line 1113
    goto :goto_1a

    .line 1114
    :cond_2d
    const-string v11, "disabled"

    .line 1115
    .line 1116
    goto :goto_19

    .line 1117
    :goto_1a
    sget-object v11, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 1118
    .line 1119
    new-instance v27, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;

    .line 1120
    .line 1121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1122
    .line 1123
    .line 1124
    move-result-wide v11

    .line 1125
    sub-long/2addr v11, v8

    .line 1126
    long-to-int v8, v11

    .line 1127
    move/from16 v30, v3

    .line 1128
    .line 1129
    move/from16 v28, v4

    .line 1130
    .line 1131
    move/from16 v29, v8

    .line 1132
    .line 1133
    invoke-direct/range {v27 .. v32}, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1134
    .line 1135
    .line 1136
    invoke-static/range {v27 .. v27}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 1137
    .line 1138
    .line 1139
    goto :goto_1b

    .line 1140
    :cond_2e
    move-object/from16 v2, p1

    .line 1141
    .line 1142
    move-object/from16 v5, v16

    .line 1143
    .line 1144
    move-object/from16 v7, v20

    .line 1145
    .line 1146
    :goto_1b
    const-string v3, "X-Offline-Save"

    .line 1147
    .line 1148
    invoke-virtual {v10, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v3

    .line 1152
    const-string v4, "save"

    .line 1153
    .line 1154
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v3

    .line 1158
    if-eqz v3, :cond_30

    .line 1159
    .line 1160
    invoke-virtual {v10}, Lokhttp3/Headers;->getInstant()Lj$/time/Instant;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v3

    .line 1164
    if-nez v3, :cond_2f

    .line 1165
    .line 1166
    goto :goto_1c

    .line 1167
    :cond_2f
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v4

    .line 1171
    invoke-static {v3, v4}, Lj$/time/LocalDate;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDate;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v3

    .line 1175
    sget-object v4, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1176
    .line 1177
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1178
    .line 1179
    .line 1180
    invoke-static {v3}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v3

    .line 1184
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v4

    .line 1188
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v4

    .line 1192
    const/4 v9, 0x1

    .line 1193
    new-array v8, v9, [Ljava/lang/Object;

    .line 1194
    .line 1195
    aput-object v3, v8, v17

    .line 1196
    .line 1197
    const v3, 0x7f120532

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v7, v3, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v3

    .line 1204
    invoke-static {v4, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1209
    .line 1210
    .line 1211
    :cond_30
    :goto_1c
    iget-object v14, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 1212
    .line 1213
    if-nez v14, :cond_31

    .line 1214
    .line 1215
    move-object/from16 v14, v22

    .line 1216
    .line 1217
    :cond_31
    if-eqz v14, :cond_32

    .line 1218
    .line 1219
    invoke-virtual {v14}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v2

    .line 1223
    if-eqz v2, :cond_32

    .line 1224
    .line 1225
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->categories:Ljava/util/List;

    .line 1226
    .line 1227
    if-eqz v2, :cond_32

    .line 1228
    .line 1229
    new-instance v11, Ljava/util/ArrayList;

    .line 1230
    .line 1231
    const/16 v3, 0xa

    .line 1232
    .line 1233
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1234
    .line 1235
    .line 1236
    move-result v3

    .line 1237
    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1238
    .line 1239
    .line 1240
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v2

    .line 1244
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1245
    .line 1246
    .line 1247
    move-result v3

    .line 1248
    if-eqz v3, :cond_33

    .line 1249
    .line 1250
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v3

    .line 1254
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$CategoryResponse;

    .line 1255
    .line 1256
    new-instance v27, Lorg/wikipedia/categories/db/Category;

    .line 1257
    .line 1258
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$CategoryResponse;->title:Ljava/lang/String;

    .line 1259
    .line 1260
    iget-object v4, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1261
    .line 1262
    iget-object v4, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1263
    .line 1264
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1268
    .line 1269
    .line 1270
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v7

    .line 1274
    invoke-virtual {v7}, Lj$/time/LocalDate;->getYear()I

    .line 1275
    .line 1276
    .line 1277
    move-result v28

    .line 1278
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v7

    .line 1282
    invoke-virtual {v7}, Lj$/time/LocalDate;->getMonthValue()I

    .line 1283
    .line 1284
    .line 1285
    move-result v29

    .line 1286
    const/16 v30, 0x1

    .line 1287
    .line 1288
    move-object/from16 v31, v3

    .line 1289
    .line 1290
    move-object/from16 v32, v4

    .line 1291
    .line 1292
    invoke-direct/range {v27 .. v32}, Lorg/wikipedia/categories/db/Category;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1293
    .line 1294
    .line 1295
    move-object/from16 v3, v27

    .line 1296
    .line 1297
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    .line 1299
    .line 1300
    goto :goto_1d

    .line 1301
    :cond_32
    move-object v11, v5

    .line 1302
    :cond_33
    if-nez v11, :cond_34

    .line 1303
    .line 1304
    sget-object v11, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 1305
    .line 1306
    :cond_34
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 1307
    .line 1308
    .line 1309
    move-result v2

    .line 1310
    if-nez v2, :cond_36

    .line 1311
    .line 1312
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1313
    .line 1314
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v2

    .line 1318
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->categoryDao()Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v2

    .line 1322
    iput-object v5, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$0:Ljava/lang/Object;

    .line 1323
    .line 1324
    iput-object v1, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$1:Lorg/wikipedia/page/PageTitle;

    .line 1325
    .line 1326
    iput-object v5, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$2:Lorg/wikipedia/page/PageViewModel;

    .line 1327
    .line 1328
    iput-object v5, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$3:Lkotlinx/coroutines/DeferredCoroutine;

    .line 1329
    .line 1330
    iput-object v5, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$4:Lkotlinx/coroutines/Deferred;

    .line 1331
    .line 1332
    iput-object v5, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$5:Lretrofit2/Response;

    .line 1333
    .line 1334
    iput-object v6, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 1335
    .line 1336
    move-object/from16 v7, v26

    .line 1337
    .line 1338
    iput-object v7, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->L$8:Ljava/lang/String;

    .line 1339
    .line 1340
    move/from16 v3, v25

    .line 1341
    .line 1342
    iput-boolean v3, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->Z$0:Z

    .line 1343
    .line 1344
    move/from16 v4, v24

    .line 1345
    .line 1346
    iput v4, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->I$0:I

    .line 1347
    .line 1348
    const/4 v4, 0x5

    .line 1349
    iput v4, v0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;->label:I

    .line 1350
    .line 1351
    invoke-virtual {v2, v11, v0}, Lorg/wikipedia/categories/db/CategoryDao_Impl;->upsertAll(Ljava/util/List;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v0

    .line 1355
    move-object/from16 v2, v23

    .line 1356
    .line 1357
    if-ne v0, v2, :cond_35

    .line 1358
    .line 1359
    :goto_1e
    return-object v2

    .line 1360
    :cond_35
    move-object v0, v1

    .line 1361
    move v1, v3

    .line 1362
    move-object v3, v6

    .line 1363
    move-object v2, v7

    .line 1364
    :goto_1f
    move-object v7, v2

    .line 1365
    move-object v6, v3

    .line 1366
    move v3, v1

    .line 1367
    move-object v1, v0

    .line 1368
    goto :goto_20

    .line 1369
    :cond_36
    move/from16 v3, v25

    .line 1370
    .line 1371
    move-object/from16 v7, v26

    .line 1372
    .line 1373
    :goto_20
    if-eqz v3, :cond_37

    .line 1374
    .line 1375
    iget-object v0, v15, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 1376
    .line 1377
    check-cast v0, Lorg/wikipedia/bridge/CommunicationBridge;

    .line 1378
    .line 1379
    invoke-virtual {v0, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->resetHtml(Lorg/wikipedia/page/PageTitle;)V

    .line 1380
    .line 1381
    .line 1382
    :cond_37
    iget-object v0, v15, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 1383
    .line 1384
    check-cast v0, Lorg/wikipedia/page/PageFragment;

    .line 1385
    .line 1386
    invoke-virtual {v0, v7}, Lorg/wikipedia/page/PageFragment;->onPageMetadataLoaded(Ljava/lang/String;)V

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1390
    .line 1391
    .line 1392
    iget-object v0, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 1393
    .line 1394
    new-instance v2, Ljava/util/Date;

    .line 1395
    .line 1396
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 1400
    .line 1401
    .line 1402
    move-result-wide v2

    .line 1403
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1404
    .line 1405
    const v4, 0x7f12061f

    .line 1406
    .line 1407
    .line 1408
    const-wide/16 v6, 0x0

    .line 1409
    .line 1410
    invoke-static {v6, v7, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 1411
    .line 1412
    .line 1413
    move-result-wide v6

    .line 1414
    sub-long/2addr v2, v6

    .line 1415
    const-wide/32 v6, 0x240c8400

    .line 1416
    .line 1417
    .line 1418
    cmp-long v2, v2, v6

    .line 1419
    .line 1420
    if-gez v2, :cond_38

    .line 1421
    .line 1422
    move/from16 v10, v17

    .line 1423
    .line 1424
    goto :goto_24

    .line 1425
    :cond_38
    if-eqz v0, :cond_39

    .line 1426
    .line 1427
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 1428
    .line 1429
    if-eqz v2, :cond_39

    .line 1430
    .line 1431
    iget-boolean v2, v2, Lorg/wikipedia/dataclient/mwapi/UserInfo;->messages:Z

    .line 1432
    .line 1433
    const/4 v9, 0x1

    .line 1434
    if-ne v2, v9, :cond_39

    .line 1435
    .line 1436
    move v10, v9

    .line 1437
    goto :goto_21

    .line 1438
    :cond_39
    move/from16 v10, v17

    .line 1439
    .line 1440
    :goto_21
    if-eqz v10, :cond_3d

    .line 1441
    .line 1442
    if-eqz v0, :cond_3a

    .line 1443
    .line 1444
    iget-object v2, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 1445
    .line 1446
    if-eqz v2, :cond_3a

    .line 1447
    .line 1448
    iget-object v11, v2, Lorg/wikipedia/dataclient/mwapi/UserInfo;->name:Ljava/lang/String;

    .line 1449
    .line 1450
    goto :goto_22

    .line 1451
    :cond_3a
    move-object v11, v5

    .line 1452
    :goto_22
    if-eqz v11, :cond_3d

    .line 1453
    .line 1454
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 1455
    .line 1456
    .line 1457
    move-result v2

    .line 1458
    if-nez v2, :cond_3b

    .line 1459
    .line 1460
    goto :goto_24

    .line 1461
    :cond_3b
    if-eqz v0, :cond_3c

    .line 1462
    .line 1463
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 1464
    .line 1465
    if-eqz v0, :cond_3c

    .line 1466
    .line 1467
    iget-object v11, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->name:Ljava/lang/String;

    .line 1468
    .line 1469
    goto :goto_23

    .line 1470
    :cond_3c
    move-object v11, v5

    .line 1471
    :goto_23
    const v0, 0x7f120620

    .line 1472
    .line 1473
    .line 1474
    invoke-static {v0, v11}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    :cond_3d
    :goto_24
    if-eqz v10, :cond_3e

    .line 1478
    .line 1479
    iget-object v0, v15, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 1480
    .line 1481
    check-cast v0, Lorg/wikipedia/page/PageFragment;

    .line 1482
    .line 1483
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v0

    .line 1487
    sget-object v2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 1488
    .line 1489
    new-instance v3, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 1490
    .line 1491
    const/16 v4, 0x14

    .line 1492
    .line 1493
    invoke-direct {v3, v2, v4}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 1494
    .line 1495
    .line 1496
    new-instance v2, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;

    .line 1497
    .line 1498
    move/from16 v4, v17

    .line 1499
    .line 1500
    invoke-direct {v2, v1, v15, v5, v4}, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;-><init>(Lorg/wikipedia/page/PageTitle;Lcom/google/gson/GsonBuilder;Lkotlin/coroutines/Continuation;I)V

    .line 1501
    .line 1502
    .line 1503
    const/4 v1, 0x2

    .line 1504
    invoke-static {v0, v3, v5, v2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1505
    .line 1506
    .line 1507
    :cond_3e
    :goto_25
    return-object v19

    .line 1508
    :cond_3f
    move-object/from16 v5, v16

    .line 1509
    .line 1510
    const-string v0, "Summary response was invalid."

    .line 1511
    .line 1512
    invoke-static {v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 1513
    .line 1514
    .line 1515
    return-object v5
.end method
