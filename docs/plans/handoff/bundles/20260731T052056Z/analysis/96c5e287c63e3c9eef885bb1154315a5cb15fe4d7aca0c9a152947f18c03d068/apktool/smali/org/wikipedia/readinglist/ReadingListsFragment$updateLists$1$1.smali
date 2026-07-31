.class public final Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $invalidateAll:Z

.field public final synthetic $lists:Ljava/util/List;

.field public final synthetic $result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

.field public final synthetic $searchQuery:Ljava/lang/String;

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/util/List;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/util/List;ZLandroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$lists:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$invalidateAll:Z

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$searchQuery:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;

    .line 2
    .line 3
    iget-object v4, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 4
    .line 5
    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$searchQuery:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$lists:Ljava/util/List;

    .line 10
    .line 11
    iget-boolean v3, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$invalidateAll:Z

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/util/List;ZLandroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->L$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 10
    .line 11
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    iget v4, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->label:I

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v8, 0x0

    .line 19
    if-eqz v4, :cond_2

    .line 20
    .line 21
    if-eq v4, v7, :cond_1

    .line 22
    .line 23
    if-ne v4, v5, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->L$1:Ljava/util/List;

    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    move-object v2, v0

    .line 31
    move-object/from16 v0, p1

    .line 32
    .line 33
    goto/16 :goto_d

    .line 34
    .line 35
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v6

    .line 41
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v2, p1

    .line 45
    .line 46
    goto/16 :goto_b

    .line 47
    .line 48
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 52
    .line 53
    iget-object v9, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$lists:Ljava/util/List;

    .line 54
    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    const-string v10, "multiSelectActionMode"

    .line 58
    .line 59
    iget-object v4, v4, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iput-object v9, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 69
    .line 70
    :goto_0
    iget-boolean v4, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$invalidateAll:Z

    .line 71
    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    new-instance v4, Lcoil3/memory/MemoryCacheService;

    .line 79
    .line 80
    invoke-direct {v4, v7, v2}, Lcoil3/memory/MemoryCacheService;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    iget-object v2, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->recentPreviewSavedReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 89
    .line 90
    const v4, 0x7f12065d

    .line 91
    .line 92
    .line 93
    const-wide/16 v10, -0x1

    .line 94
    .line 95
    if-nez v2, :cond_a

    .line 96
    .line 97
    iget-object v2, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 98
    .line 99
    new-instance v12, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    if-eqz v13, :cond_6

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    instance-of v14, v13, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 119
    .line 120
    if-eqz v14, :cond_5

    .line 121
    .line 122
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    if-eqz v12, :cond_8

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    move-object v13, v12

    .line 141
    check-cast v13, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 142
    .line 143
    iget-wide v13, v13, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 144
    .line 145
    sget-object v15, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 146
    .line 147
    invoke-static {v10, v11, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 148
    .line 149
    .line 150
    move-result-wide v15

    .line 151
    cmp-long v13, v13, v15

    .line 152
    .line 153
    if-nez v13, :cond_7

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_8
    move-object v12, v6

    .line 157
    :goto_3
    check-cast v12, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 158
    .line 159
    if-eqz v12, :cond_9

    .line 160
    .line 161
    iput-boolean v7, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->shouldShowImportedSnackbar:Z

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_9
    iput-boolean v8, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->shouldShowImportedSnackbar:Z

    .line 165
    .line 166
    move-object v12, v6

    .line 167
    :goto_4
    iput-object v12, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->recentPreviewSavedReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 168
    .line 169
    :cond_a
    iget-object v2, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v2, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 177
    .line 178
    invoke-virtual {v2, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 179
    .line 180
    .line 181
    iget-object v2, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 182
    .line 183
    const/16 v12, 0xc

    .line 184
    .line 185
    if-nez v2, :cond_b

    .line 186
    .line 187
    iget-object v2, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 188
    .line 189
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    const/16 v13, 0x64

    .line 194
    .line 195
    if-lt v2, v13, :cond_b

    .line 196
    .line 197
    const v2, 0x7f1207bc

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 208
    .line 209
    .line 210
    move-result-object v13

    .line 211
    invoke-static {v13, v2, v8, v12}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 216
    .line 217
    .line 218
    :cond_b
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->$searchQuery:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v1, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateEmptyState$1(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    const-string v14, "deleteReadingList"

    .line 232
    .line 233
    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    if-eqz v13, :cond_d

    .line 238
    .line 239
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 252
    .line 253
    .line 254
    move-result-object v15

    .line 255
    invoke-virtual {v15}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    move-result-object v15

    .line 259
    invoke-virtual {v15, v14}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v14, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 263
    .line 264
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v14

    .line 268
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    if-eqz v15, :cond_d

    .line 273
    .line 274
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v15

    .line 278
    instance-of v5, v15, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 279
    .line 280
    if-eqz v5, :cond_c

    .line 281
    .line 282
    check-cast v15, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 283
    .line 284
    invoke-virtual {v15}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_c

    .line 293
    .line 294
    sget-object v5, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 295
    .line 296
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    new-instance v4, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda11;

    .line 301
    .line 302
    invoke-direct {v4, v1, v15, v8}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 303
    .line 304
    .line 305
    invoke-static {v5, v15, v8, v4}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deleteReadingList(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;ZLorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 306
    .line 307
    .line 308
    :cond_c
    const v4, 0x7f12065d

    .line 309
    .line 310
    .line 311
    const/4 v5, 0x2

    .line 312
    goto :goto_5

    .line 313
    :cond_d
    iget-boolean v4, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->shouldShowImportedSnackbar:Z

    .line 314
    .line 315
    if-eqz v4, :cond_f

    .line 316
    .line 317
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    iget-object v5, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->recentPreviewSavedReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 322
    .line 323
    sget-object v13, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 324
    .line 325
    new-instance v13, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 326
    .line 327
    invoke-static {v4, v6}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    if-eqz v5, :cond_e

    .line 332
    .line 333
    iget-object v5, v5, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 334
    .line 335
    if-eqz v5, :cond_e

    .line 336
    .line 337
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    goto :goto_6

    .line 342
    :cond_e
    move v5, v8

    .line 343
    :goto_6
    const-string v14, "ReadingList.ListItemCount:"

    .line 344
    .line 345
    const-string v15, ".receive_finish"

    .line 346
    .line 347
    invoke-static {v5, v14, v15}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-direct {v13, v4, v5}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-static {v13}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    const v5, 0x7f1207ca

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-static {v4, v5, v8, v12}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    new-instance v5, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;

    .line 376
    .line 377
    invoke-direct {v5, v1, v7}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 378
    .line 379
    .line 380
    const v12, 0x7f120889

    .line 381
    .line 382
    .line 383
    invoke-virtual {v4, v12, v5}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 387
    .line 388
    .line 389
    iput-boolean v8, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->shouldShowImportedSnackbar:Z

    .line 390
    .line 391
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 392
    .line 393
    const v4, 0x7f120662

    .line 394
    .line 395
    .line 396
    invoke-static {v4, v6}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 397
    .line 398
    .line 399
    const v4, 0x7f12065d

    .line 400
    .line 401
    .line 402
    invoke-static {v10, v11, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 403
    .line 404
    .line 405
    :cond_f
    iput-object v2, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 406
    .line 407
    new-instance v2, Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    :cond_10
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    if-eqz v5, :cond_11

    .line 421
    .line 422
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    instance-of v9, v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 427
    .line 428
    if-eqz v9, :cond_10

    .line 429
    .line 430
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 437
    .line 438
    .line 439
    iget-boolean v2, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->importMode:Z

    .line 440
    .line 441
    if-nez v2, :cond_12

    .line 442
    .line 443
    goto :goto_a

    .line 444
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-eqz v2, :cond_14

    .line 449
    .line 450
    :cond_13
    move v2, v8

    .line 451
    goto :goto_9

    .line 452
    :cond_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    :cond_15
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    if-eqz v4, :cond_13

    .line 461
    .line 462
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 467
    .line 468
    iget-object v4, v4, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 469
    .line 470
    if-eqz v4, :cond_16

    .line 471
    .line 472
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    if-eqz v5, :cond_16

    .line 477
    .line 478
    goto :goto_8

    .line 479
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    .line 485
    .line 486
    move-result v5

    .line 487
    if-eqz v5, :cond_15

    .line 488
    .line 489
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 494
    .line 495
    iget-wide v9, v5, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    .line 496
    .line 497
    const-wide/16 v11, 0x0

    .line 498
    .line 499
    cmp-long v5, v9, v11

    .line 500
    .line 501
    if-nez v5, :cond_17

    .line 502
    .line 503
    move v2, v7

    .line 504
    :goto_9
    iput-boolean v2, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->importMode:Z

    .line 505
    .line 506
    :goto_a
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 507
    .line 508
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->recommendedPageDao()Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    iput-object v6, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->L$0:Ljava/lang/Object;

    .line 517
    .line 518
    iput v7, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->label:I

    .line 519
    .line 520
    iget-object v4, v2, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 521
    .line 522
    new-instance v5, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 523
    .line 524
    const/16 v9, 0xd

    .line 525
    .line 526
    invoke-direct {v5, v9, v2}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    invoke-static {v4, v7, v8, v5, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    if-ne v2, v3, :cond_18

    .line 534
    .line 535
    goto :goto_c

    .line 536
    :cond_18
    :goto_b
    check-cast v2, Ljava/util/List;

    .line 537
    .line 538
    iput-object v6, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->L$0:Ljava/lang/Object;

    .line 539
    .line 540
    iput-object v2, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->L$1:Ljava/util/List;

    .line 541
    .line 542
    const/4 v4, 0x2

    .line 543
    iput v4, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;->label:I

    .line 544
    .line 545
    sget-object v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->INSTANCE:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;

    .line 546
    .line 547
    invoke-virtual {v4, v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->readyToGenerateList(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    if-ne v0, v3, :cond_19

    .line 552
    .line 553
    :goto_c
    return-object v3

    .line 554
    :cond_19
    :goto_d
    check-cast v0, Ljava/lang/Boolean;

    .line 555
    .line 556
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    if-eqz v0, :cond_1a

    .line 561
    .line 562
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    if-nez v0, :cond_1a

    .line 567
    .line 568
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 569
    .line 570
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    .line 572
    .line 573
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v0, Landroidx/compose/ui/platform/ComposeView;

    .line 576
    .line 577
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 578
    .line 579
    .line 580
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v0, Landroidx/compose/ui/platform/ComposeView;

    .line 588
    .line 589
    new-instance v3, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;

    .line 590
    .line 591
    const/4 v4, 0x6

    .line 592
    invoke-direct {v3, v4, v1, v2}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 596
    .line 597
    const v2, -0x64c3a313

    .line 598
    .line 599
    .line 600
    invoke-direct {v1, v3, v7, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 604
    .line 605
    .line 606
    goto :goto_e

    .line 607
    :cond_1a
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 608
    .line 609
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 613
    .line 614
    check-cast v0, Landroidx/compose/ui/platform/ComposeView;

    .line 615
    .line 616
    const/16 v1, 0x8

    .line 617
    .line 618
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 619
    .line 620
    .line 621
    :goto_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 622
    .line 623
    return-object v0
.end method
