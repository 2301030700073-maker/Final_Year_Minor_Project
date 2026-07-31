.class public final Lcoil3/RealImageLoader$execute$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $request:Ljava/lang/Object;

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcoil3/RealImageLoader$execute$2;->$r8$classId:I

    .line 14
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcoil3/RealImageLoader$execute$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 15
    iput p4, p0, Lcoil3/RealImageLoader$execute$2;->$r8$classId:I

    iput-object p1, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private final invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$togglePageOffline$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 8
    .line 9
    iget-object v2, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 14
    .line 15
    iget v4, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x1

    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    if-eq v4, v7, :cond_1

    .line 23
    .line 24
    if-ne v4, v6, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v5

    .line 36
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 44
    .line 45
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v10, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 54
    .line 55
    iget-object v4, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iput-object v4, v10, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v8, Lorg/wikipedia/page/PageTitle;

    .line 66
    .line 67
    iget-object v9, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v11, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v12, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v13, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput v7, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 79
    .line 80
    invoke-virtual {p1, v8, p0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->getAllPageOccurrences(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v3, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 88
    .line 89
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 90
    .line 91
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    iput v6, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-static {v4, p1, p0}, Lorg/wikipedia/dataclient/Service$-CC;->getListsFromPageOccurrences$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-ne p1, v3, :cond_4

    .line 109
    .line 110
    :goto_1
    return-object v3

    .line 111
    :cond_4
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 112
    .line 113
    invoke-static {v2}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    .line 119
    if-nez p0, :cond_5

    .line 120
    .line 121
    return-object v3

    .line 122
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-le p0, v7, :cond_7

    .line 127
    .line 128
    new-instance p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    invoke-direct {p0, v2, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 132
    .line 133
    .line 134
    const v6, 0x7f120766

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 138
    .line 139
    .line 140
    sget-object v6, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 141
    .line 142
    iget-object v6, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 143
    .line 144
    const-string v8, "<b>"

    .line 145
    .line 146
    const-string v9, "</b>"

    .line 147
    .line 148
    invoke-static {v8, v6, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    new-array v8, v7, [Ljava/lang/Object;

    .line 153
    .line 154
    aput-object v6, v8, v4

    .line 155
    .line 156
    const v4, 0x7f120765

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eqz v6, :cond_6

    .line 175
    .line 176
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    check-cast v6, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 181
    .line 182
    invoke-virtual {v6}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v4, "<br>&nbsp;&nbsp;<b>&#8226; "

    .line 195
    .line 196
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    goto :goto_3

    .line 210
    :cond_6
    sget-object p1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 211
    .line 212
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-object v4, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v4, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 219
    .line 220
    iput-object p1, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 221
    .line 222
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;

    .line 223
    .line 224
    invoke-direct {p1, v2, v1, v0, v7}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$$ExternalSyntheticLambda3;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;I)V

    .line 225
    .line 226
    .line 227
    const v0, 0x7f120764

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    const p1, 0x7f120797

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, p1, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 240
    .line 241
    .line 242
    return-object v3

    .line 243
    :cond_7
    sget-object p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 244
    .line 245
    invoke-static {v2, v1, v0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->toggleOffline(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 246
    .line 247
    .line 248
    return-object v3
.end method

.method private final invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$deleteSelectedPages$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-eq v2, v4, :cond_1

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 42
    .line 43
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v2, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 54
    .line 55
    iput v4, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 56
    .line 57
    invoke-virtual {p1, v2, v0, v4, p0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v1, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    :goto_0
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 67
    .line 68
    iget-object p1, p1, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_deleteSelectedPagesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 69
    .line 70
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput v3, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 76
    .line 77
    invoke-virtual {p1, v2, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-ne p0, v1, :cond_4

    .line 82
    .line 83
    :goto_1
    return-object v1

    .line 84
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method

.method private final invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$saveReadingList$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    if-eq v2, v6, :cond_2

    .line 16
    .line 17
    if-eq v2, v5, :cond_1

    .line 18
    .line 19
    if-ne v2, v4, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object v2, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 48
    .line 49
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object v0, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    iput v6, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 60
    .line 61
    iget-object v2, p1, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 62
    .line 63
    new-instance v7, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    invoke-direct {v7, p1, v0, v8}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v8, v6, v7, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v1, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move-object v2, v0

    .line 77
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    iput-wide v7, v2, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 84
    .line 85
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 86
    .line 87
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object v2, v0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 96
    .line 97
    iput-object v3, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    iput v5, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 100
    .line 101
    invoke-virtual {p1, v0, v2, v6, p0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->addPagesToList(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-ne p1, v1, :cond_5

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    :goto_1
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 109
    .line 110
    iget-wide v2, v0, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 111
    .line 112
    const p1, 0x7f12065d

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v3, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 121
    .line 122
    iget-object p1, p1, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_saveReadingListFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 123
    .line 124
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 125
    .line 126
    invoke-direct {v2, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iput v4, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 130
    .line 131
    invoke-virtual {p1, v2, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    if-ne p0, v1, :cond_6

    .line 136
    .line 137
    :goto_2
    return-object v1

    .line 138
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 139
    .line 140
    return-object p0
.end method

.method private final invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$updateList$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-eq v1, v3, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v4

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v10, p0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 33
    .line 34
    const p1, 0x7f120662

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    if-eqz v8, :cond_5

    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    sget-object v5, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

    .line 51
    .line 52
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    move-object v6, p1

    .line 55
    check-cast v6, Ljava/lang/String;

    .line 56
    .line 57
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 58
    .line 59
    move-object v7, p1

    .line 60
    check-cast v7, Ljava/lang/String;

    .line 61
    .line 62
    iput v3, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 63
    .line 64
    const/4 v9, 0x1

    .line 65
    move-object v10, p0

    .line 66
    invoke-virtual/range {v5 .. v10}, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->receiveReadingLists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    :goto_0
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 74
    .line 75
    iget-object p0, v10, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 78
    .line 79
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_updateListFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 80
    .line 81
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 82
    .line 83
    invoke-direct {v1, p1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iput v2, v10, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 87
    .line 88
    invoke-virtual {p0, v1, v10}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-ne p0, v0, :cond_5

    .line 93
    .line 94
    :goto_1
    return-object v0

    .line 95
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p0
.end method

.method private final invokeSuspend$org$wikipedia$suggestededits$SuggestedEditsImageTagsViewModel$publishImageTags$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-eq v1, v3, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    move-object v11, p0

    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v4

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 34
    .line 35
    sget-object p1, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 36
    .line 37
    iput v3, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 38
    .line 39
    invoke-static {p1, p0}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v0, :cond_3

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_3
    :goto_0
    move-object v7, p1

    .line 48
    check-cast v7, Ljava/lang/String;

    .line 49
    .line 50
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 53
    .line 54
    iget p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    .line 55
    .line 56
    const-string v1, "M"

    .line 57
    .line 58
    invoke-static {p1, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string/jumbo v1, "{\"claims\":["

    .line 71
    .line 72
    .line 73
    const-string v5, "/* add-depicts: "

    .line 74
    .line 75
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_6

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    check-cast v8, Lorg/wikipedia/suggestededits/ImageTag;

    .line 86
    .line 87
    const-string v9, ","

    .line 88
    .line 89
    if-nez v3, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :cond_4
    if-nez v3, :cond_5

    .line 96
    .line 97
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    :cond_5
    iget-object v3, v8, Lorg/wikipedia/suggestededits/ImageTag;->wikidataId:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    const-string/jumbo v11, "{\"mainsnak\":{\"snaktype\":\"value\",\"property\":\"P180\",\"datavalue\":{\"value\":{\"entity-type\":\"item\",\"id\":\""

    .line 108
    .line 109
    .line 110
    const-string v12, "\"},\"type\":\"wikibase-entityid\"},\"datatype\":\"wikibase-item\"},\"type\":\"statement\",\"id\":\""

    .line 111
    .line 112
    invoke-static {v1, v11, v3, v12, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v3, "$"

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v3, "\",\"rank\":\"normal\"}"

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iget-object v3, v8, Lorg/wikipedia/suggestededits/ImageTag;->wikidataId:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v8, v8, Lorg/wikipedia/suggestededits/ImageTag;->label:Ljava/lang/String;

    .line 136
    .line 137
    const-string/jumbo v10, "|"

    .line 138
    .line 139
    .line 140
    const-string v11, ""

    .line 141
    .line 142
    invoke-static {v8, v10, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-static {v8, v9, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-static {v5, v3, v10, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    const/4 v3, 0x0

    .line 155
    goto :goto_1

    .line 156
    :cond_6
    const-string p1, "]}"

    .line 157
    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    const-string p1, " */"

    .line 163
    .line 164
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 169
    .line 170
    sget-object p1, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 171
    .line 172
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    iput v2, p0, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 177
    .line 178
    const-string v10, "app-image-tag-add"

    .line 179
    .line 180
    move-object v11, p0

    .line 181
    invoke-interface/range {v5 .. v11}, Lorg/wikipedia/dataclient/Service;->postEditEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-ne p1, v0, :cond_7

    .line 186
    .line 187
    :goto_2
    return-object v0

    .line 188
    :cond_7
    :goto_3
    check-cast p1, Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;

    .line 189
    .line 190
    iget-object p0, v11, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;

    .line 193
    .line 194
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;->_actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 195
    .line 196
    new-instance v0, Lorg/wikipedia/util/Resource$Success;

    .line 197
    .line 198
    iget-object p1, p1, Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;->entity:Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 199
    .line 200
    invoke-direct {v0, p1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v4, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 210
    .line 211
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    iget v0, p0, Lcoil3/RealImageLoader$execute$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcoil3/RealImageLoader$execute$2;

    .line 9
    .line 10
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v3, p1

    .line 13
    check-cast v3, Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 14
    .line 15
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v4, p0

    .line 18
    check-cast v4, Ljava/lang/String;

    .line 19
    .line 20
    move-object v5, v1

    .line 21
    check-cast v5, Ljava/lang/String;

    .line 22
    .line 23
    const/16 v7, 0x1d

    .line 24
    .line 25
    move-object v6, p2

    .line 26
    invoke-direct/range {v2 .. v7}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :pswitch_0
    move-object v7, p2

    .line 31
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 32
    .line 33
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v4, p1

    .line 36
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 37
    .line 38
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v5, p0

    .line 41
    check-cast v5, Ljava/util/ArrayList;

    .line 42
    .line 43
    move-object v6, v1

    .line 44
    check-cast v6, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;

    .line 45
    .line 46
    const/16 v8, 0x1c

    .line 47
    .line 48
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :pswitch_1
    move-object v7, p2

    .line 53
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 54
    .line 55
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v4, p1

    .line 58
    check-cast v4, Ljava/lang/String;

    .line 59
    .line 60
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 61
    .line 62
    move-object v5, p0

    .line 63
    check-cast v5, Ljava/lang/String;

    .line 64
    .line 65
    move-object v6, v1

    .line 66
    check-cast v6, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 67
    .line 68
    const/16 v8, 0x1b

    .line 69
    .line 70
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 71
    .line 72
    .line 73
    return-object v3

    .line 74
    :pswitch_2
    move-object v7, p2

    .line 75
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 76
    .line 77
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    move-object v4, p1

    .line 80
    check-cast v4, Ljava/lang/String;

    .line 81
    .line 82
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 83
    .line 84
    move-object v5, p0

    .line 85
    check-cast v5, Ljava/lang/String;

    .line 86
    .line 87
    move-object v6, v1

    .line 88
    check-cast v6, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 89
    .line 90
    const/16 v8, 0x1a

    .line 91
    .line 92
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 93
    .line 94
    .line 95
    return-object v3

    .line 96
    :pswitch_3
    move-object v7, p2

    .line 97
    new-instance p1, Lcoil3/RealImageLoader$execute$2;

    .line 98
    .line 99
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 102
    .line 103
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 104
    .line 105
    const/16 p2, 0x19

    .line 106
    .line 107
    invoke-direct {p1, p0, v1, v7, p2}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 108
    .line 109
    .line 110
    return-object p1

    .line 111
    :pswitch_4
    move-object v7, p2

    .line 112
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 113
    .line 114
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    move-object v4, p1

    .line 117
    check-cast v4, Ljava/util/List;

    .line 118
    .line 119
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 120
    .line 121
    move-object v5, p0

    .line 122
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 123
    .line 124
    move-object v6, v1

    .line 125
    check-cast v6, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 126
    .line 127
    const/16 v8, 0x18

    .line 128
    .line 129
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 130
    .line 131
    .line 132
    return-object v3

    .line 133
    :pswitch_5
    move-object v7, p2

    .line 134
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 135
    .line 136
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 137
    .line 138
    move-object v4, p1

    .line 139
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 140
    .line 141
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 142
    .line 143
    move-object v5, p0

    .line 144
    check-cast v5, Landroidx/appcompat/app/AppCompatActivity;

    .line 145
    .line 146
    move-object v6, v1

    .line 147
    check-cast v6, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 148
    .line 149
    const/16 v8, 0x17

    .line 150
    .line 151
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 152
    .line 153
    .line 154
    return-object v3

    .line 155
    :pswitch_6
    move-object v7, p2

    .line 156
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 157
    .line 158
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 159
    .line 160
    move-object v4, p1

    .line 161
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 162
    .line 163
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 164
    .line 165
    move-object v5, p0

    .line 166
    check-cast v5, Landroidx/appcompat/app/AppCompatActivity;

    .line 167
    .line 168
    move-object v6, v1

    .line 169
    check-cast v6, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    .line 170
    .line 171
    const/16 v8, 0x16

    .line 172
    .line 173
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 174
    .line 175
    .line 176
    return-object v3

    .line 177
    :pswitch_7
    move-object v7, p2

    .line 178
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 179
    .line 180
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    move-object v4, p1

    .line 183
    check-cast v4, Ljava/util/List;

    .line 184
    .line 185
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 186
    .line 187
    move-object v5, p0

    .line 188
    check-cast v5, Landroidx/appcompat/app/AppCompatActivity;

    .line 189
    .line 190
    move-object v6, v1

    .line 191
    check-cast v6, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 192
    .line 193
    const/16 v8, 0x15

    .line 194
    .line 195
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 196
    .line 197
    .line 198
    return-object v3

    .line 199
    :pswitch_8
    move-object v7, p2

    .line 200
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 201
    .line 202
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 203
    .line 204
    move-object v4, p1

    .line 205
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 206
    .line 207
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 208
    .line 209
    move-object v5, p0

    .line 210
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 211
    .line 212
    move-object v6, v1

    .line 213
    check-cast v6, Ljava/util/List;

    .line 214
    .line 215
    const/16 v8, 0x14

    .line 216
    .line 217
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 218
    .line 219
    .line 220
    return-object v3

    .line 221
    :pswitch_9
    move-object v7, p2

    .line 222
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 223
    .line 224
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 225
    .line 226
    move-object v4, p1

    .line 227
    check-cast v4, Ljava/util/List;

    .line 228
    .line 229
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 230
    .line 231
    move-object v5, p0

    .line 232
    check-cast v5, Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 233
    .line 234
    move-object v6, v1

    .line 235
    check-cast v6, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 236
    .line 237
    const/16 v8, 0x13

    .line 238
    .line 239
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 240
    .line 241
    .line 242
    return-object v3

    .line 243
    :pswitch_a
    move-object v7, p2

    .line 244
    new-instance p1, Lcoil3/RealImageLoader$execute$2;

    .line 245
    .line 246
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast p0, Lorg/wikipedia/random/RandomViewModel;

    .line 249
    .line 250
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 251
    .line 252
    const/16 p2, 0x12

    .line 253
    .line 254
    invoke-direct {p1, p0, v1, v7, p2}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 255
    .line 256
    .line 257
    return-object p1

    .line 258
    :pswitch_b
    move-object v7, p2

    .line 259
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 260
    .line 261
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 262
    .line 263
    move-object v4, p1

    .line 264
    check-cast v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 265
    .line 266
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 267
    .line 268
    move-object v5, p0

    .line 269
    check-cast v5, Ljava/lang/String;

    .line 270
    .line 271
    move-object v6, v1

    .line 272
    check-cast v6, Ljava/lang/String;

    .line 273
    .line 274
    const/16 v8, 0x11

    .line 275
    .line 276
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 277
    .line 278
    .line 279
    return-object v3

    .line 280
    :pswitch_c
    move-object v7, p2

    .line 281
    new-instance p2, Lcoil3/RealImageLoader$execute$2;

    .line 282
    .line 283
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 286
    .line 287
    check-cast v1, Lorg/wikipedia/page/PageFragment;

    .line 288
    .line 289
    const/16 v0, 0x10

    .line 290
    .line 291
    invoke-direct {p2, p0, v1, v7, v0}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 292
    .line 293
    .line 294
    iput-object p1, p2, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 295
    .line 296
    return-object p2

    .line 297
    :pswitch_d
    move-object v7, p2

    .line 298
    new-instance p2, Lcoil3/RealImageLoader$execute$2;

    .line 299
    .line 300
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast p0, Lorg/wikipedia/games/GamesHubViewModel;

    .line 303
    .line 304
    check-cast v1, Ljava/lang/String;

    .line 305
    .line 306
    const/16 v0, 0xf

    .line 307
    .line 308
    invoke-direct {p2, p0, v1, v7, v0}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 309
    .line 310
    .line 311
    iput-object p1, p2, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 312
    .line 313
    return-object p2

    .line 314
    :pswitch_e
    move-object v7, p2

    .line 315
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 316
    .line 317
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 318
    .line 319
    move-object v4, p1

    .line 320
    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 321
    .line 322
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 323
    .line 324
    move-object v5, p0

    .line 325
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 326
    .line 327
    move-object v6, v1

    .line 328
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 329
    .line 330
    const/16 v8, 0xe

    .line 331
    .line 332
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 333
    .line 334
    .line 335
    return-object v3

    .line 336
    :pswitch_f
    move-object v7, p2

    .line 337
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 338
    .line 339
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 340
    .line 341
    move-object v4, p1

    .line 342
    check-cast v4, Ljava/lang/String;

    .line 343
    .line 344
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 345
    .line 346
    move-object v5, p0

    .line 347
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 348
    .line 349
    move-object v6, v1

    .line 350
    check-cast v6, Lorg/wikipedia/edit/EditSectionActivity;

    .line 351
    .line 352
    const/16 v8, 0xd

    .line 353
    .line 354
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 355
    .line 356
    .line 357
    return-object v3

    .line 358
    :pswitch_10
    move-object v7, p2

    .line 359
    new-instance p1, Lcoil3/RealImageLoader$execute$2;

    .line 360
    .line 361
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast p0, Lorg/wikipedia/donate/DonateViewModel;

    .line 364
    .line 365
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 366
    .line 367
    const/16 p2, 0xc

    .line 368
    .line 369
    invoke-direct {p1, p0, v1, v7, p2}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 370
    .line 371
    .line 372
    return-object p1

    .line 373
    :pswitch_11
    move-object v7, p2

    .line 374
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 375
    .line 376
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 377
    .line 378
    move-object v4, p1

    .line 379
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 380
    .line 381
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 382
    .line 383
    move-object v5, p0

    .line 384
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 385
    .line 386
    move-object v6, v1

    .line 387
    check-cast v6, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 388
    .line 389
    const/16 v8, 0xb

    .line 390
    .line 391
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 392
    .line 393
    .line 394
    return-object v3

    .line 395
    :pswitch_12
    move-object v7, p2

    .line 396
    new-instance p2, Lcoil3/RealImageLoader$execute$2;

    .line 397
    .line 398
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast p0, Landroidx/paging/PageFetcher$flow$1$2;

    .line 401
    .line 402
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 403
    .line 404
    const/16 v0, 0xa

    .line 405
    .line 406
    invoke-direct {p2, p0, v1, v7, v0}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 407
    .line 408
    .line 409
    iput-object p1, p2, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 410
    .line 411
    return-object p2

    .line 412
    :pswitch_13
    move-object v7, p2

    .line 413
    new-instance p2, Lcoil3/RealImageLoader$execute$2;

    .line 414
    .line 415
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 418
    .line 419
    check-cast v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 420
    .line 421
    const/16 v0, 0x9

    .line 422
    .line 423
    invoke-direct {p2, p0, v1, v7, v0}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 424
    .line 425
    .line 426
    iput-object p1, p2, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 427
    .line 428
    return-object p2

    .line 429
    :pswitch_14
    move-object v7, p2

    .line 430
    new-instance p1, Lcoil3/RealImageLoader$execute$2;

    .line 431
    .line 432
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast p0, Lcoil3/compose/AsyncImagePainter;

    .line 435
    .line 436
    check-cast v1, Lcoil3/compose/AsyncImagePainter$Input;

    .line 437
    .line 438
    const/16 p2, 0x8

    .line 439
    .line 440
    invoke-direct {p1, p0, v1, v7, p2}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 441
    .line 442
    .line 443
    return-object p1

    .line 444
    :pswitch_15
    move-object v7, p2

    .line 445
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 446
    .line 447
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 448
    .line 449
    move-object v4, p1

    .line 450
    check-cast v4, Lokhttp3/Headers$Builder;

    .line 451
    .line 452
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 453
    .line 454
    move-object v5, p0

    .line 455
    check-cast v5, Landroidx/work/impl/model/WorkSpec;

    .line 456
    .line 457
    move-object v6, v1

    .line 458
    check-cast v6, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;

    .line 459
    .line 460
    const/4 v8, 0x7

    .line 461
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 462
    .line 463
    .line 464
    return-object v3

    .line 465
    :pswitch_16
    move-object v7, p2

    .line 466
    new-instance p2, Lcoil3/RealImageLoader$execute$2;

    .line 467
    .line 468
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast p0, Landroidx/work/Constraints;

    .line 471
    .line 472
    check-cast v1, Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 473
    .line 474
    const/4 v0, 0x6

    .line 475
    invoke-direct {p2, p0, v1, v7, v0}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 476
    .line 477
    .line 478
    iput-object p1, p2, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 479
    .line 480
    return-object p2

    .line 481
    :pswitch_17
    move-object v7, p2

    .line 482
    new-instance v3, Lcoil3/RealImageLoader$execute$2;

    .line 483
    .line 484
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 485
    .line 486
    move-object v4, p1

    .line 487
    check-cast v4, Landroidx/work/impl/WorkerWrapper;

    .line 488
    .line 489
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 490
    .line 491
    move-object v5, p0

    .line 492
    check-cast v5, Landroidx/work/ListenableWorker;

    .line 493
    .line 494
    move-object v6, v1

    .line 495
    check-cast v6, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 496
    .line 497
    const/4 v8, 0x5

    .line 498
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 499
    .line 500
    .line 501
    return-object v3

    .line 502
    :pswitch_18
    move-object v7, p2

    .line 503
    new-instance p2, Lcoil3/RealImageLoader$execute$2;

    .line 504
    .line 505
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 508
    .line 509
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 510
    .line 511
    const/4 v0, 0x4

    .line 512
    invoke-direct {p2, p0, v1, v7, v0}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 513
    .line 514
    .line 515
    iput-object p1, p2, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 516
    .line 517
    return-object p2

    .line 518
    :pswitch_19
    move-object v7, p2

    .line 519
    new-instance p2, Lcoil3/RealImageLoader$execute$2;

    .line 520
    .line 521
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 524
    .line 525
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 526
    .line 527
    const/4 v0, 0x3

    .line 528
    invoke-direct {p2, p0, v1, v7, v0}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 529
    .line 530
    .line 531
    iput-object p1, p2, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 532
    .line 533
    return-object p2

    .line 534
    :pswitch_1a
    move-object v7, p2

    .line 535
    new-instance p1, Lcoil3/RealImageLoader$execute$2;

    .line 536
    .line 537
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 538
    .line 539
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 540
    .line 541
    check-cast v1, Landroidx/room/coroutines/Pool;

    .line 542
    .line 543
    const/4 p2, 0x2

    .line 544
    invoke-direct {p1, p0, v1, v7, p2}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 545
    .line 546
    .line 547
    return-object p1

    .line 548
    :pswitch_1b
    move-object v7, p2

    .line 549
    new-instance p0, Lcoil3/RealImageLoader$execute$2;

    .line 550
    .line 551
    check-cast v1, Landroidx/room/TriggerBasedInvalidationTracker;

    .line 552
    .line 553
    invoke-direct {p0, v1, v7}, Lcoil3/RealImageLoader$execute$2;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    .line 554
    .line 555
    .line 556
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 557
    .line 558
    return-object p0

    .line 559
    :pswitch_1c
    move-object v7, p2

    .line 560
    new-instance p2, Lcoil3/RealImageLoader$execute$2;

    .line 561
    .line 562
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast p0, Lcoil3/RealImageLoader;

    .line 565
    .line 566
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 567
    .line 568
    const/4 v0, 0x0

    .line 569
    invoke-direct {p2, p0, v1, v7, v0}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 570
    .line 571
    .line 572
    iput-object p1, p2, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 573
    .line 574
    return-object p2

    .line 575
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcoil3/RealImageLoader$execute$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 84
    .line 85
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 99
    .line 100
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 114
    .line 115
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 129
    .line 130
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 131
    .line 132
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 144
    .line 145
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 159
    .line 160
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 174
    .line 175
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 176
    .line 177
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 182
    .line 183
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 189
    .line 190
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 191
    .line 192
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 197
    .line 198
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0

    .line 203
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 204
    .line 205
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 206
    .line 207
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 212
    .line 213
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0

    .line 218
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 219
    .line 220
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 221
    .line 222
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 227
    .line 228
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    return-object p0

    .line 233
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 234
    .line 235
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 236
    .line 237
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 242
    .line 243
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    return-object p0

    .line 248
    :pswitch_f
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 249
    .line 250
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 251
    .line 252
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 257
    .line 258
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    return-object p0

    .line 263
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 264
    .line 265
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 266
    .line 267
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 272
    .line 273
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    return-object p0

    .line 278
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 279
    .line 280
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 281
    .line 282
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 287
    .line 288
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    return-object p0

    .line 293
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 294
    .line 295
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 296
    .line 297
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 302
    .line 303
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    return-object p0

    .line 308
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 309
    .line 310
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 311
    .line 312
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 317
    .line 318
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    return-object p0

    .line 323
    :pswitch_14
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 324
    .line 325
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 326
    .line 327
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 332
    .line 333
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    return-object p0

    .line 338
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 339
    .line 340
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 341
    .line 342
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 347
    .line 348
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    return-object p0

    .line 353
    :pswitch_16
    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 354
    .line 355
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 356
    .line 357
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 362
    .line 363
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    return-object p0

    .line 368
    :pswitch_17
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 369
    .line 370
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 371
    .line 372
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 377
    .line 378
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    return-object p0

    .line 383
    :pswitch_18
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 384
    .line 385
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 386
    .line 387
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 392
    .line 393
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    return-object p0

    .line 398
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 399
    .line 400
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 401
    .line 402
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 407
    .line 408
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    return-object p0

    .line 413
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 414
    .line 415
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 416
    .line 417
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 422
    .line 423
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    return-object p0

    .line 428
    :pswitch_1b
    check-cast p1, Landroidx/room/Transactor;

    .line 429
    .line 430
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 431
    .line 432
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 437
    .line 438
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    return-object p0

    .line 443
    :pswitch_1c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 444
    .line 445
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 446
    .line 447
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    check-cast p0, Lcoil3/RealImageLoader$execute$2;

    .line 452
    .line 453
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object p0

    .line 457
    return-object p0

    .line 458
    nop

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    iget v0, v9, Lcoil3/RealImageLoader$execute$2;->$r8$classId:I

    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    const/16 v8, 0xc

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v10, 0x2

    .line 11
    const/4 v11, 0x0

    .line 12
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v11, v1

    .line 26
    check-cast v11, Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 27
    .line 28
    iget-object v1, v11, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 29
    .line 30
    iget-object v6, v11, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 31
    .line 32
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    iget v7, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 35
    .line 36
    if-eqz v7, :cond_3

    .line 37
    .line 38
    if-eq v7, v4, :cond_2

    .line 39
    .line 40
    if-eq v7, v10, :cond_1

    .line 41
    .line 42
    if-ne v7, v2, :cond_0

    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object/from16 v0, p1

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object/from16 v0, p1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object/from16 v3, p1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 72
    .line 73
    iget-object v3, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 74
    .line 75
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 80
    .line 81
    const-string v4, "csrf"

    .line 82
    .line 83
    invoke-interface {v3, v4, v9}, Lorg/wikipedia/dataclient/Service;->getToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-ne v3, v12, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    :goto_0
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 91
    .line 92
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 93
    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->csrfToken()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    :cond_5
    move-object v4, v5

    .line 101
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 107
    .line 108
    iget-object v2, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 109
    .line 110
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    iget-object v1, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 119
    .line 120
    iput v10, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 121
    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v7, 0x0

    .line 125
    const-string v8, "app-talk-reply"

    .line 126
    .line 127
    move-object/from16 v21, v3

    .line 128
    .line 129
    move-object v3, v0

    .line 130
    move-object v0, v2

    .line 131
    move-object v2, v1

    .line 132
    move-object/from16 v1, v21

    .line 133
    .line 134
    invoke-interface/range {v0 .. v9}, Lorg/wikipedia/dataclient/Service;->postTalkPageTopicReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-ne v0, v12, :cond_6

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    :goto_1
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsEditResponse;

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_7
    move-object v3, v0

    .line 145
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 146
    .line 147
    iget-object v0, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 148
    .line 149
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v5, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v5, Ljava/lang/String;

    .line 160
    .line 161
    iput v2, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 162
    .line 163
    move-object v2, v5

    .line 164
    const/4 v5, 0x0

    .line 165
    const/4 v6, 0x0

    .line 166
    const/4 v7, 0x0

    .line 167
    const-string v8, "app-talk-topic"

    .line 168
    .line 169
    invoke-interface/range {v0 .. v9}, Lorg/wikipedia/dataclient/Service;->postTalkPageTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-ne v0, v12, :cond_8

    .line 174
    .line 175
    :goto_2
    move-object v5, v12

    .line 176
    goto :goto_5

    .line 177
    :cond_8
    :goto_3
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsEditResponse;

    .line 178
    .line 179
    :goto_4
    iget-object v1, v11, Lorg/wikipedia/talk/TalkReplyViewModel;->postReplyData:Lorg/wikipedia/util/SingleLiveData;

    .line 180
    .line 181
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 182
    .line 183
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsEditResponse;->result:Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsEditResponse$EditResult;

    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    iget-wide v3, v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsEditResponse$EditResult;->newRevId:J

    .line 189
    .line 190
    new-instance v0, Ljava/lang/Long;

    .line 191
    .line 192
    invoke-direct {v0, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 193
    .line 194
    .line 195
    invoke-direct {v2, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 202
    .line 203
    :goto_5
    return-object v5

    .line 204
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend$org$wikipedia$suggestededits$SuggestedEditsImageTagsViewModel$publishImageTags$2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    return-object v0

    .line 209
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 210
    .line 211
    iget v1, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 212
    .line 213
    if-eqz v1, :cond_a

    .line 214
    .line 215
    if-ne v1, v4, :cond_9

    .line 216
    .line 217
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_9
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 229
    .line 230
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v2, Ljava/lang/String;

    .line 241
    .line 242
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v3, Ljava/lang/String;

    .line 245
    .line 246
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 247
    .line 248
    invoke-virtual {v1, v2, v3, v9}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->createList(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/io/Serializable;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    if-ne v1, v0, :cond_b

    .line 253
    .line 254
    move-object v5, v0

    .line 255
    goto :goto_7

    .line 256
    :cond_b
    :goto_6
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 259
    .line 260
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 261
    .line 262
    .line 263
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 264
    .line 265
    :goto_7
    return-object v5

    .line 266
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$updateList$2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    return-object v0

    .line 271
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$saveReadingList$2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    return-object v0

    .line 276
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$deleteSelectedPages$2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    return-object v0

    .line 281
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcoil3/RealImageLoader$execute$2;->invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$togglePageOffline$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    return-object v0

    .line 286
    :pswitch_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 287
    .line 288
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 291
    .line 292
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 293
    .line 294
    iget v7, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 295
    .line 296
    if-eqz v7, :cond_e

    .line 297
    .line 298
    if-eq v7, v4, :cond_d

    .line 299
    .line 300
    if-ne v7, v10, :cond_c

    .line 301
    .line 302
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_b

    .line 306
    .line 307
    :cond_c
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_d

    .line 311
    .line 312
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    move-object/from16 v3, p1

    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 322
    .line 323
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    iget-object v7, v2, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 336
    .line 337
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 338
    .line 339
    invoke-virtual {v3, v5, v7, v9}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->createList(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/io/Serializable;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    if-ne v3, v6, :cond_f

    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_f
    :goto_8
    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 347
    .line 348
    iget-object v2, v2, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 349
    .line 350
    new-instance v5, Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_10

    .line 368
    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 374
    .line 375
    new-instance v7, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 376
    .line 377
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    iget-object v13, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 381
    .line 382
    iget-object v8, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    iput-object v8, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 391
    .line 392
    new-instance v11, Lorg/wikipedia/page/PageTitle;

    .line 393
    .line 394
    iget-object v12, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 395
    .line 396
    iget-object v14, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 397
    .line 398
    iget-object v15, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 399
    .line 400
    iget-object v2, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 401
    .line 402
    move-object/from16 v16, v2

    .line 403
    .line 404
    invoke-direct/range {v11 .. v16}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-direct {v7, v11}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    goto :goto_9

    .line 414
    :cond_10
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 415
    .line 416
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    iput v10, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 425
    .line 426
    invoke-virtual {v1, v3, v5, v4, v9}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->addPagesToList(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    if-ne v1, v6, :cond_11

    .line 431
    .line 432
    :goto_a
    move-object v5, v6

    .line 433
    goto :goto_d

    .line 434
    :cond_11
    :goto_b
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 437
    .line 438
    invoke-static {v1}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-nez v1, :cond_12

    .line 443
    .line 444
    :goto_c
    move-object v5, v0

    .line 445
    goto :goto_d

    .line 446
    :cond_12
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    .line 449
    .line 450
    invoke-interface {v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;->onUndoDeleteClicked()V

    .line 451
    .line 452
    .line 453
    goto :goto_c

    .line 454
    :goto_d
    return-object v5

    .line 455
    :pswitch_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 456
    .line 457
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 460
    .line 461
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v2, Ljava/util/List;

    .line 464
    .line 465
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 466
    .line 467
    iget v7, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 468
    .line 469
    if-eqz v7, :cond_14

    .line 470
    .line 471
    if-ne v7, v4, :cond_13

    .line 472
    .line 473
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    goto :goto_e

    .line 477
    :cond_13
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    goto :goto_10

    .line 481
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 485
    .line 486
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 495
    .line 496
    invoke-virtual {v3, v2, v11, v11, v9}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForOffline(Ljava/util/List;ZZLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    if-ne v3, v6, :cond_15

    .line 501
    .line 502
    move-object v5, v6

    .line 503
    goto :goto_10

    .line 504
    :cond_15
    :goto_e
    invoke-static {v1}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    if-nez v3, :cond_16

    .line 509
    .line 510
    :goto_f
    move-object v5, v0

    .line 511
    goto :goto_10

    .line 512
    :cond_16
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 513
    .line 514
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    const v4, 0x7f100021

    .line 519
    .line 520
    .line 521
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    .line 531
    .line 532
    invoke-static {v1, v2, v11}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 533
    .line 534
    .line 535
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 538
    .line 539
    invoke-interface {v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;->onCompleted()V

    .line 540
    .line 541
    .line 542
    goto :goto_f

    .line 543
    :goto_10
    return-object v5

    .line 544
    :pswitch_8
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 545
    .line 546
    iget v1, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 547
    .line 548
    if-eqz v1, :cond_18

    .line 549
    .line 550
    if-ne v1, v4, :cond_17

    .line 551
    .line 552
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    move-object/from16 v0, p1

    .line 556
    .line 557
    goto :goto_11

    .line 558
    :cond_17
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    move-object v0, v5

    .line 562
    goto :goto_11

    .line 563
    :cond_18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 567
    .line 568
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 573
    .line 574
    .line 575
    move-result-object v11

    .line 576
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 577
    .line 578
    move-object v12, v1

    .line 579
    check-cast v12, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 580
    .line 581
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 582
    .line 583
    move-object v13, v1

    .line 584
    check-cast v13, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 585
    .line 586
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 587
    .line 588
    move-object v14, v1

    .line 589
    check-cast v14, Ljava/util/List;

    .line 590
    .line 591
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 592
    .line 593
    iget-object v1, v11, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 594
    .line 595
    new-instance v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;

    .line 596
    .line 597
    const/4 v15, 0x0

    .line 598
    const/16 v16, 0x1

    .line 599
    .line 600
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 601
    .line 602
    .line 603
    invoke-static {v1, v9, v10}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    if-ne v1, v0, :cond_19

    .line 608
    .line 609
    goto :goto_11

    .line 610
    :cond_19
    move-object v0, v1

    .line 611
    :goto_11
    return-object v0

    .line 612
    :pswitch_9
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 613
    .line 614
    check-cast v0, Ljava/util/List;

    .line 615
    .line 616
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v1, Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 619
    .line 620
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 623
    .line 624
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 625
    .line 626
    iget v7, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 627
    .line 628
    if-eqz v7, :cond_1b

    .line 629
    .line 630
    if-ne v7, v4, :cond_1a

    .line 631
    .line 632
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    move-object/from16 v3, p1

    .line 636
    .line 637
    goto :goto_12

    .line 638
    :cond_1a
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    goto/16 :goto_14

    .line 642
    .line 643
    :cond_1b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 647
    .line 648
    sget-object v3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 649
    .line 650
    new-instance v7, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 651
    .line 652
    const/16 v8, 0x17

    .line 653
    .line 654
    invoke-direct {v7, v2, v0, v5, v8}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 655
    .line 656
    .line 657
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 658
    .line 659
    invoke-static {v3, v7, v9}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    if-ne v3, v6, :cond_1c

    .line 664
    .line 665
    move-object v5, v6

    .line 666
    goto/16 :goto_14

    .line 667
    .line 668
    :cond_1c
    :goto_12
    check-cast v3, Ljava/util/List;

    .line 669
    .line 670
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 671
    .line 672
    .line 673
    move-result v5

    .line 674
    if-eqz v5, :cond_1e

    .line 675
    .line 676
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 677
    .line 678
    .line 679
    move-result v3

    .line 680
    if-ne v3, v4, :cond_1d

    .line 681
    .line 682
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v3

    .line 686
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 691
    .line 692
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    new-array v5, v10, [Ljava/lang/Object;

    .line 697
    .line 698
    aput-object v3, v5, v11

    .line 699
    .line 700
    aput-object v0, v5, v4

    .line 701
    .line 702
    const v0, 0x7f120757

    .line 703
    .line 704
    .line 705
    invoke-virtual {v1, v0, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    goto :goto_13

    .line 710
    :cond_1d
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    new-array v3, v4, [Ljava/lang/Object;

    .line 715
    .line 716
    aput-object v0, v3, v11

    .line 717
    .line 718
    const v0, 0x7f120760

    .line 719
    .line 720
    .line 721
    invoke-virtual {v1, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    goto :goto_13

    .line 726
    :cond_1e
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 727
    .line 728
    .line 729
    move-result v0

    .line 730
    if-ne v0, v4, :cond_1f

    .line 731
    .line 732
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v3

    .line 740
    new-array v5, v10, [Ljava/lang/Object;

    .line 741
    .line 742
    aput-object v0, v5, v11

    .line 743
    .line 744
    aput-object v3, v5, v4

    .line 745
    .line 746
    const v0, 0x7f120756

    .line 747
    .line 748
    .line 749
    invoke-virtual {v1, v0, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    goto :goto_13

    .line 754
    :cond_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 755
    .line 756
    .line 757
    move-result v0

    .line 758
    new-instance v3, Ljava/lang/Integer;

    .line 759
    .line 760
    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    new-array v5, v10, [Ljava/lang/Object;

    .line 768
    .line 769
    aput-object v3, v5, v11

    .line 770
    .line 771
    aput-object v0, v5, v4

    .line 772
    .line 773
    const v0, 0x7f12075f

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1, v0, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    :goto_13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v1, v2, v0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->showViewListSnackBar(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismiss()V

    .line 787
    .line 788
    .line 789
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 790
    .line 791
    :goto_14
    return-object v5

    .line 792
    :pswitch_a
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 793
    .line 794
    iget v1, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 795
    .line 796
    if-eqz v1, :cond_21

    .line 797
    .line 798
    if-ne v1, v4, :cond_20

    .line 799
    .line 800
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast v0, Lorg/wikipedia/random/RandomViewModel;

    .line 803
    .line 804
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 805
    .line 806
    .line 807
    move-object/from16 v2, p1

    .line 808
    .line 809
    goto :goto_15

    .line 810
    :cond_20
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    goto :goto_16

    .line 814
    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 818
    .line 819
    check-cast v1, Lorg/wikipedia/random/RandomViewModel;

    .line 820
    .line 821
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 822
    .line 823
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 824
    .line 825
    .line 826
    move-result-object v2

    .line 827
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 832
    .line 833
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 834
    .line 835
    iput-object v1, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 836
    .line 837
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 838
    .line 839
    invoke-virtual {v2, v3, v9}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->findPageInAnyList(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    if-ne v2, v0, :cond_22

    .line 844
    .line 845
    move-object v5, v0

    .line 846
    goto :goto_16

    .line 847
    :cond_22
    move-object v0, v1

    .line 848
    :goto_15
    if-eqz v2, :cond_23

    .line 849
    .line 850
    move v11, v4

    .line 851
    :cond_23
    iget-object v0, v0, Lorg/wikipedia/random/RandomViewModel;->saveButtonState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 852
    .line 853
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 858
    .line 859
    .line 860
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 861
    .line 862
    :goto_16
    return-object v5

    .line 863
    :pswitch_b
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 864
    .line 865
    check-cast v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 866
    .line 867
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 868
    .line 869
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 870
    .line 871
    iget v1, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 872
    .line 873
    if-eqz v1, :cond_25

    .line 874
    .line 875
    if-ne v1, v4, :cond_24

    .line 876
    .line 877
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 878
    .line 879
    .line 880
    move-object/from16 v0, p1

    .line 881
    .line 882
    goto :goto_17

    .line 883
    :cond_24
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    goto :goto_18

    .line 887
    :cond_25
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    sget-object v2, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 895
    .line 896
    if-ne v1, v2, :cond_27

    .line 897
    .line 898
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 899
    .line 900
    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 901
    .line 902
    const-string/jumbo v2, "wikimedia.org"

    .line 903
    .line 904
    .line 905
    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 913
    .line 914
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v2

    .line 918
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast v3, Ljava/lang/String;

    .line 925
    .line 926
    iget-object v5, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v5, Ljava/lang/String;

    .line 929
    .line 930
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 931
    .line 932
    move-object v4, v2

    .line 933
    move-object v2, v0

    .line 934
    move-object v0, v1

    .line 935
    move-object v1, v4

    .line 936
    move-object v4, v5

    .line 937
    move-object v5, v9

    .line 938
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/RestService;->getArticleMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    if-ne v0, v6, :cond_26

    .line 943
    .line 944
    move-object v5, v6

    .line 945
    goto :goto_18

    .line 946
    :cond_26
    :goto_17
    move-object v5, v0

    .line 947
    check-cast v5, Lorg/wikipedia/dataclient/restbase/Metrics;

    .line 948
    .line 949
    :cond_27
    :goto_18
    return-object v5

    .line 950
    :pswitch_c
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 951
    .line 952
    move-object v12, v0

    .line 953
    check-cast v12, Lorg/wikipedia/page/PageTitle;

    .line 954
    .line 955
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 956
    .line 957
    move-object v13, v0

    .line 958
    check-cast v13, Lorg/wikipedia/page/PageFragment;

    .line 959
    .line 960
    iget-object v14, v13, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 961
    .line 962
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 963
    .line 964
    move-object v1, v0

    .line 965
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 966
    .line 967
    sget-object v15, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 968
    .line 969
    iget v0, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 970
    .line 971
    if-eqz v0, :cond_29

    .line 972
    .line 973
    if-ne v0, v4, :cond_28

    .line 974
    .line 975
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 976
    .line 977
    .line 978
    move-object/from16 v0, p1

    .line 979
    .line 980
    goto :goto_19

    .line 981
    :cond_28
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    goto/16 :goto_1b

    .line 985
    .line 986
    :cond_29
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 987
    .line 988
    .line 989
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistViewModel;->Companion:Lokio/Path$Companion;

    .line 990
    .line 991
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 992
    .line 993
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 994
    .line 995
    iget-boolean v3, v14, Lorg/wikipedia/page/PageViewModel;->isWatched:Z

    .line 996
    .line 997
    sget-object v6, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 998
    .line 999
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v7

    .line 1003
    invoke-virtual {v12}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v16

    .line 1007
    invoke-virtual/range {v16 .. v16}, Lorg/wikipedia/page/Namespace;->talk()Z

    .line 1008
    .line 1009
    .line 1010
    move-result v16

    .line 1011
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v16

    .line 1015
    iput-object v5, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 1016
    .line 1017
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1018
    .line 1019
    move-object v4, v6

    .line 1020
    move-object v5, v7

    .line 1021
    move-object v7, v9

    .line 1022
    move-object/from16 v6, v16

    .line 1023
    .line 1024
    invoke-virtual/range {v0 .. v7}, Lokio/Path$Companion;->watchPageTitle(Lkotlinx/coroutines/CoroutineScope;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/watchlist/WatchlistExpiry;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    if-ne v0, v15, :cond_2a

    .line 1029
    .line 1030
    move-object v5, v15

    .line 1031
    goto :goto_1b

    .line 1032
    :cond_2a
    :goto_19
    check-cast v0, Lkotlin/Pair;

    .line 1033
    .line 1034
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1035
    .line 1036
    check-cast v1, Ljava/lang/Boolean;

    .line 1037
    .line 1038
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1039
    .line 1040
    .line 1041
    move-result v1

    .line 1042
    iput-boolean v1, v14, Lorg/wikipedia/page/PageViewModel;->isWatched:Z

    .line 1043
    .line 1044
    sget-object v1, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 1045
    .line 1046
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    .line 1048
    .line 1049
    iput-boolean v11, v14, Lorg/wikipedia/page/PageViewModel;->hasWatchlistExpiry:Z

    .line 1050
    .line 1051
    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v2

    .line 1059
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1060
    .line 1061
    .line 1062
    iget-object v3, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1063
    .line 1064
    check-cast v3, Ljava/lang/Boolean;

    .line 1065
    .line 1066
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v3

    .line 1070
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1071
    .line 1072
    check-cast v0, Ljava/lang/String;

    .line 1073
    .line 1074
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1078
    .line 1079
    .line 1080
    if-nez v3, :cond_2b

    .line 1081
    .line 1082
    invoke-static {v1, v0, v11}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 1083
    .line 1084
    .line 1085
    goto :goto_1a

    .line 1086
    :cond_2b
    invoke-static {v1, v0, v11, v8}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    new-instance v1, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda3;

    .line 1091
    .line 1092
    invoke-direct {v1, v10, v2, v12}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1093
    .line 1094
    .line 1095
    const v2, 0x7f120a36

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 1102
    .line 1103
    .line 1104
    :goto_1a
    invoke-virtual {v13}, Lorg/wikipedia/page/PageFragment;->updateQuickActionsAndMenuOptions()V

    .line 1105
    .line 1106
    .line 1107
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1108
    .line 1109
    :goto_1b
    return-object v5

    .line 1110
    :pswitch_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1111
    .line 1112
    iget-object v6, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 1113
    .line 1114
    check-cast v6, Ljava/lang/String;

    .line 1115
    .line 1116
    iget-object v7, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 1117
    .line 1118
    check-cast v7, Lorg/wikipedia/games/GamesHubViewModel;

    .line 1119
    .line 1120
    iget-object v7, v7, Lorg/wikipedia/games/GamesHubViewModel;->_onThisDayGameUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1121
    .line 1122
    iget-object v8, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 1123
    .line 1124
    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    .line 1125
    .line 1126
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1127
    .line 1128
    iget v12, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1129
    .line 1130
    if-eqz v12, :cond_2d

    .line 1131
    .line 1132
    if-ne v12, v4, :cond_2c

    .line 1133
    .line 1134
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1135
    .line 1136
    .line 1137
    move-object/from16 v1, p1

    .line 1138
    .line 1139
    goto :goto_1e

    .line 1140
    :cond_2c
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    goto :goto_1f

    .line 1144
    :cond_2d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1145
    .line 1146
    .line 1147
    sget-object v3, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 1148
    .line 1149
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v7, v5, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1153
    .line 1154
    .line 1155
    sget-object v3, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 1156
    .line 1157
    filled-new-array {v6}, [Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v12

    .line 1161
    invoke-virtual {v3, v12}, Lorg/wikipedia/games/WikiGames;->isLangSupported([Ljava/lang/String;)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v3

    .line 1165
    if-nez v3, :cond_2e

    .line 1166
    .line 1167
    new-instance v1, Lorg/wikipedia/util/UiState$Success;

    .line 1168
    .line 1169
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 1170
    .line 1171
    invoke-direct {v1, v2}, Lorg/wikipedia/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v7, v5, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1178
    .line 1179
    .line 1180
    :goto_1c
    move-object v5, v0

    .line 1181
    goto :goto_1f

    .line 1182
    :cond_2e
    new-instance v3, Lkotlin/ranges/IntRange;

    .line 1183
    .line 1184
    invoke-direct {v3, v11, v2, v4}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 1185
    .line 1186
    .line 1187
    new-instance v11, Ljava/util/ArrayList;

    .line 1188
    .line 1189
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1190
    .line 1191
    .line 1192
    move-result v1

    .line 1193
    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v1

    .line 1200
    :goto_1d
    move-object v3, v1

    .line 1201
    check-cast v3, Lkotlin/ranges/IntProgressionIterator;

    .line 1202
    .line 1203
    iget-boolean v3, v3, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 1204
    .line 1205
    if-eqz v3, :cond_2f

    .line 1206
    .line 1207
    move-object v3, v1

    .line 1208
    check-cast v3, Lkotlin/collections/IntIterator;

    .line 1209
    .line 1210
    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 1211
    .line 1212
    .line 1213
    move-result v3

    .line 1214
    new-instance v12, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 1215
    .line 1216
    invoke-direct {v12, v6, v3, v5, v2}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;-><init>(Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 1217
    .line 1218
    .line 1219
    invoke-static {v8, v5, v12, v2}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v3

    .line 1223
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    .line 1225
    .line 1226
    goto :goto_1d

    .line 1227
    :cond_2f
    iput-object v5, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 1228
    .line 1229
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1230
    .line 1231
    invoke-static {v11, v9}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/List;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    if-ne v1, v10, :cond_30

    .line 1236
    .line 1237
    move-object v5, v10

    .line 1238
    goto :goto_1f

    .line 1239
    :cond_30
    :goto_1e
    check-cast v1, Ljava/util/List;

    .line 1240
    .line 1241
    new-instance v2, Lorg/wikipedia/util/UiState$Success;

    .line 1242
    .line 1243
    invoke-direct {v2, v1}, Lorg/wikipedia/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v7, v5, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1250
    .line 1251
    .line 1252
    goto :goto_1c

    .line 1253
    :goto_1f
    return-object v5

    .line 1254
    :pswitch_e
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 1255
    .line 1256
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1257
    .line 1258
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 1259
    .line 1260
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 1261
    .line 1262
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1263
    .line 1264
    iget v6, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1265
    .line 1266
    if-eqz v6, :cond_32

    .line 1267
    .line 1268
    if-ne v6, v4, :cond_31

    .line 1269
    .line 1270
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1271
    .line 1272
    .line 1273
    goto :goto_20

    .line 1274
    :cond_31
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1275
    .line 1276
    .line 1277
    goto :goto_21

    .line 1278
    :cond_32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1279
    .line 1280
    .line 1281
    :cond_33
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1282
    .line 1283
    const-wide/16 v5, 0x3e8

    .line 1284
    .line 1285
    invoke-static {v5, v6, v9}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v3

    .line 1289
    if-ne v3, v2, :cond_34

    .line 1290
    .line 1291
    move-object v5, v2

    .line 1292
    goto :goto_21

    .line 1293
    :cond_34
    :goto_20
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v3

    .line 1297
    invoke-virtual {v3}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v5

    .line 1301
    const-wide/16 v6, 0x1

    .line 1302
    .line 1303
    invoke-virtual {v5, v6, v7}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v5

    .line 1307
    sget-object v6, Lj$/time/LocalTime;->MIDNIGHT:Lj$/time/LocalTime;

    .line 1308
    .line 1309
    invoke-static {v5, v6}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v5

    .line 1313
    invoke-static {v3, v5}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v3

    .line 1317
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1318
    .line 1319
    .line 1320
    invoke-interface {v1, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1321
    .line 1322
    .line 1323
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v3

    .line 1327
    check-cast v3, Lj$/time/Duration;

    .line 1328
    .line 1329
    invoke-virtual {v3}, Lj$/time/Duration;->getSeconds()J

    .line 1330
    .line 1331
    .line 1332
    move-result-wide v5

    .line 1333
    const-wide/16 v7, 0xe10

    .line 1334
    .line 1335
    cmp-long v3, v5, v7

    .line 1336
    .line 1337
    if-gez v3, :cond_35

    .line 1338
    .line 1339
    iput-boolean v4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1340
    .line 1341
    :cond_35
    iget-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1342
    .line 1343
    if-eqz v3, :cond_33

    .line 1344
    .line 1345
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v3

    .line 1349
    check-cast v3, Lj$/time/Duration;

    .line 1350
    .line 1351
    invoke-virtual {v3}, Lj$/time/Duration;->getSeconds()J

    .line 1352
    .line 1353
    .line 1354
    move-result-wide v5

    .line 1355
    const-wide/32 v7, 0x14370

    .line 1356
    .line 1357
    .line 1358
    cmp-long v3, v5, v7

    .line 1359
    .line 1360
    if-lez v3, :cond_33

    .line 1361
    .line 1362
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 1363
    .line 1364
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1365
    .line 1366
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1367
    .line 1368
    .line 1369
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1370
    .line 1371
    :goto_21
    return-object v5

    .line 1372
    :pswitch_f
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 1373
    .line 1374
    check-cast v0, Ljava/lang/String;

    .line 1375
    .line 1376
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 1377
    .line 1378
    check-cast v1, Lorg/wikipedia/edit/EditSectionActivity;

    .line 1379
    .line 1380
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 1381
    .line 1382
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 1383
    .line 1384
    iget-object v6, v2, Lorg/wikipedia/dataclient/mwapi/MwException;->error:Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 1385
    .line 1386
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1387
    .line 1388
    iget v8, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1389
    .line 1390
    if-eqz v8, :cond_37

    .line 1391
    .line 1392
    if-ne v8, v4, :cond_36

    .line 1393
    .line 1394
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1395
    .line 1396
    .line 1397
    move-object/from16 v2, p1

    .line 1398
    .line 1399
    goto :goto_22

    .line 1400
    :cond_36
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1401
    .line 1402
    .line 1403
    goto/16 :goto_26

    .line 1404
    .line 1405
    :cond_37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1406
    .line 1407
    .line 1408
    const-string v3, "abusefilter-"

    .line 1409
    .line 1410
    invoke-static {v0, v3, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1411
    .line 1412
    .line 1413
    move-result v8

    .line 1414
    if-eqz v8, :cond_39

    .line 1415
    .line 1416
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getMessage()Ljava/lang/String;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v8

    .line 1420
    invoke-static {v8, v3, v11}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 1421
    .line 1422
    .line 1423
    move-result v3

    .line 1424
    if-eqz v3, :cond_39

    .line 1425
    .line 1426
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getMessage()Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v3

    .line 1430
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1431
    .line 1432
    .line 1433
    move-result v3

    .line 1434
    const/16 v8, 0x64

    .line 1435
    .line 1436
    if-ge v3, v8, :cond_39

    .line 1437
    .line 1438
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1439
    .line 1440
    sget v2, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 1441
    .line 1442
    invoke-virtual {v1}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v2

    .line 1446
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1447
    .line 1448
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1449
    .line 1450
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v2

    .line 1454
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1455
    .line 1456
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getMessage()Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v3

    .line 1460
    const-string v5, "[\u29fc\u29fd]"

    .line 1461
    .line 1462
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v5

    .line 1466
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1467
    .line 1468
    .line 1469
    const-string v6, ""

    .line 1470
    .line 1471
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v3

    .line 1475
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v3

    .line 1479
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1480
    .line 1481
    .line 1482
    const-string v5, "MediaWiki:"

    .line 1483
    .line 1484
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v3

    .line 1488
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1489
    .line 1490
    invoke-interface {v2, v3, v9}, Lorg/wikipedia/dataclient/Service;->parsePage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v2

    .line 1494
    if-ne v2, v7, :cond_38

    .line 1495
    .line 1496
    move-object v5, v7

    .line 1497
    goto/16 :goto_26

    .line 1498
    .line 1499
    :cond_38
    :goto_22
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;

    .line 1500
    .line 1501
    new-instance v3, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 1502
    .line 1503
    new-instance v4, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 1504
    .line 1505
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->getText()Ljava/lang/String;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v2

    .line 1509
    invoke-direct {v4, v0, v2}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    .line 1511
    .line 1512
    invoke-direct {v3, v4}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {v1, v3}, Lorg/wikipedia/edit/EditSectionActivity;->showError$1(Ljava/lang/Throwable;)V

    .line 1516
    .line 1517
    .line 1518
    goto/16 :goto_25

    .line 1519
    .line 1520
    :cond_39
    const-string v3, "editconflict"

    .line 1521
    .line 1522
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1523
    .line 1524
    .line 1525
    move-result v0

    .line 1526
    if-eqz v0, :cond_44

    .line 1527
    .line 1528
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1529
    .line 1530
    invoke-direct {v0, v1, v11}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 1531
    .line 1532
    .line 1533
    const v2, 0x7f120199

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 1537
    .line 1538
    .line 1539
    const v2, 0x7f120198

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 1543
    .line 1544
    .line 1545
    const v2, 0x7f120197

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v0, v2, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 1552
    .line 1553
    .line 1554
    sget v0, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 1555
    .line 1556
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 1557
    .line 1558
    const-string v2, "captchaHandler"

    .line 1559
    .line 1560
    if-eqz v0, :cond_43

    .line 1561
    .line 1562
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    .line 1563
    .line 1564
    .line 1565
    move-result v0

    .line 1566
    const-string v3, "binding"

    .line 1567
    .line 1568
    if-eqz v0, :cond_3c

    .line 1569
    .line 1570
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 1571
    .line 1572
    if-eqz v0, :cond_3b

    .line 1573
    .line 1574
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->cancelCaptcha()V

    .line 1575
    .line 1576
    .line 1577
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 1578
    .line 1579
    if-eqz v0, :cond_3a

    .line 1580
    .line 1581
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 1582
    .line 1583
    check-cast v0, Landroid/widget/ScrollView;

    .line 1584
    .line 1585
    const/16 v2, 0x8

    .line 1586
    .line 1587
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1588
    .line 1589
    .line 1590
    goto :goto_23

    .line 1591
    :cond_3a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1592
    .line 1593
    .line 1594
    throw v5

    .line 1595
    :cond_3b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    throw v5

    .line 1599
    :cond_3c
    :goto_23
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 1600
    .line 1601
    const-string v2, "editSummaryFragment"

    .line 1602
    .line 1603
    if-eqz v0, :cond_42

    .line 1604
    .line 1605
    invoke-virtual {v0}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->isActive()Z

    .line 1606
    .line 1607
    .line 1608
    move-result v0

    .line 1609
    if-eqz v0, :cond_3e

    .line 1610
    .line 1611
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 1612
    .line 1613
    if-eqz v0, :cond_3d

    .line 1614
    .line 1615
    sget v2, Lorg/wikipedia/views/ViewAnimations;->$r8$clinit:I

    .line 1616
    .line 1617
    iget-object v2, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 1618
    .line 1619
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1620
    .line 1621
    .line 1622
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 1623
    .line 1624
    check-cast v2, Landroid/widget/ScrollView;

    .line 1625
    .line 1626
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1627
    .line 1628
    .line 1629
    new-instance v6, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;

    .line 1630
    .line 1631
    invoke-direct {v6, v0, v4}, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;I)V

    .line 1632
    .line 1633
    .line 1634
    invoke-static {v2, v6}, Lorg/wikipedia/views/ViewAnimations;->fadeOut(Landroid/view/View;Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;)V

    .line 1635
    .line 1636
    .line 1637
    goto :goto_24

    .line 1638
    :cond_3d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1639
    .line 1640
    .line 1641
    throw v5

    .line 1642
    :cond_3e
    :goto_24
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 1643
    .line 1644
    const-string v2, "editPreviewFragment"

    .line 1645
    .line 1646
    if-eqz v0, :cond_41

    .line 1647
    .line 1648
    invoke-virtual {v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    .line 1649
    .line 1650
    .line 1651
    move-result v0

    .line 1652
    if-eqz v0, :cond_45

    .line 1653
    .line 1654
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 1655
    .line 1656
    if-eqz v0, :cond_40

    .line 1657
    .line 1658
    invoke-virtual {v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->hide()V

    .line 1659
    .line 1660
    .line 1661
    iget-object v0, v1, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 1662
    .line 1663
    if-eqz v0, :cond_3f

    .line 1664
    .line 1665
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 1666
    .line 1667
    check-cast v0, Landroid/widget/ScrollView;

    .line 1668
    .line 1669
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1670
    .line 1671
    .line 1672
    goto :goto_25

    .line 1673
    :cond_3f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1674
    .line 1675
    .line 1676
    throw v5

    .line 1677
    :cond_40
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1678
    .line 1679
    .line 1680
    throw v5

    .line 1681
    :cond_41
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1682
    .line 1683
    .line 1684
    throw v5

    .line 1685
    :cond_42
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1686
    .line 1687
    .line 1688
    throw v5

    .line 1689
    :cond_43
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1690
    .line 1691
    .line 1692
    throw v5

    .line 1693
    :cond_44
    invoke-virtual {v1, v2}, Lorg/wikipedia/edit/EditSectionActivity;->showError$1(Ljava/lang/Throwable;)V

    .line 1694
    .line 1695
    .line 1696
    :cond_45
    :goto_25
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1697
    .line 1698
    :goto_26
    return-object v5

    .line 1699
    :pswitch_10
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 1700
    .line 1701
    check-cast v0, Lorg/wikipedia/donate/DonateViewModel;

    .line 1702
    .line 1703
    iget-object v0, v0, Lorg/wikipedia/donate/DonateViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1704
    .line 1705
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1706
    .line 1707
    iget v2, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1708
    .line 1709
    if-eqz v2, :cond_47

    .line 1710
    .line 1711
    if-ne v2, v4, :cond_46

    .line 1712
    .line 1713
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 1714
    .line 1715
    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1716
    .line 1717
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1718
    .line 1719
    .line 1720
    move-object/from16 v2, p1

    .line 1721
    .line 1722
    goto :goto_27

    .line 1723
    :cond_46
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1724
    .line 1725
    .line 1726
    goto :goto_28

    .line 1727
    :cond_47
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1728
    .line 1729
    .line 1730
    new-instance v2, Lorg/wikipedia/util/Resource$Loading;

    .line 1731
    .line 1732
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1733
    .line 1734
    .line 1735
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1736
    .line 1737
    .line 1738
    invoke-virtual {v0, v5, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1739
    .line 1740
    .line 1741
    iput-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 1742
    .line 1743
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1744
    .line 1745
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1746
    .line 1747
    if-ne v2, v1, :cond_48

    .line 1748
    .line 1749
    move-object v5, v1

    .line 1750
    goto :goto_28

    .line 1751
    :cond_48
    :goto_27
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 1752
    .line 1753
    invoke-direct {v1, v2}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 1754
    .line 1755
    .line 1756
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {v0, v5, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1760
    .line 1761
    .line 1762
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1763
    .line 1764
    :goto_28
    return-object v5

    .line 1765
    :pswitch_11
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 1766
    .line 1767
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1768
    .line 1769
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1770
    .line 1771
    iget v1, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1772
    .line 1773
    if-eqz v1, :cond_4a

    .line 1774
    .line 1775
    if-ne v1, v4, :cond_49

    .line 1776
    .line 1777
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1778
    .line 1779
    .line 1780
    goto :goto_29

    .line 1781
    :cond_49
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1782
    .line 1783
    .line 1784
    goto :goto_2a

    .line 1785
    :cond_4a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1786
    .line 1787
    .line 1788
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 1789
    .line 1790
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 1791
    .line 1792
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v1

    .line 1796
    check-cast v1, Ljava/lang/Boolean;

    .line 1797
    .line 1798
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1799
    .line 1800
    .line 1801
    move-result v1

    .line 1802
    if-eqz v1, :cond_4c

    .line 1803
    .line 1804
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 1805
    .line 1806
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 1807
    .line 1808
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v1

    .line 1812
    check-cast v1, Ljava/lang/Boolean;

    .line 1813
    .line 1814
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1815
    .line 1816
    .line 1817
    move-result v1

    .line 1818
    if-eqz v1, :cond_4b

    .line 1819
    .line 1820
    const/16 v1, 0x1f4

    .line 1821
    .line 1822
    const/4 v2, 0x6

    .line 1823
    invoke-static {v1, v2, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v2

    .line 1827
    new-instance v3, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1$$ExternalSyntheticLambda0;

    .line 1828
    .line 1829
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;I)V

    .line 1830
    .line 1831
    .line 1832
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1833
    .line 1834
    const/4 v0, 0x0

    .line 1835
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1836
    .line 1837
    const/4 v5, 0x4

    .line 1838
    move-object v4, v9

    .line 1839
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animate$default(FFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v0

    .line 1843
    if-ne v0, v6, :cond_4c

    .line 1844
    .line 1845
    move-object v5, v6

    .line 1846
    goto :goto_2a

    .line 1847
    :cond_4b
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1848
    .line 1849
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 1850
    .line 1851
    .line 1852
    :cond_4c
    :goto_29
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1853
    .line 1854
    :goto_2a
    return-object v5

    .line 1855
    :pswitch_12
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1856
    .line 1857
    iget v1, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1858
    .line 1859
    if-eqz v1, :cond_4e

    .line 1860
    .line 1861
    if-ne v1, v4, :cond_4d

    .line 1862
    .line 1863
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1864
    .line 1865
    .line 1866
    goto :goto_2b

    .line 1867
    :cond_4d
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1868
    .line 1869
    .line 1870
    goto :goto_2c

    .line 1871
    :cond_4e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1872
    .line 1873
    .line 1874
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 1875
    .line 1876
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 1877
    .line 1878
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 1879
    .line 1880
    check-cast v2, Landroidx/paging/PageFetcher$flow$1$2;

    .line 1881
    .line 1882
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 1883
    .line 1884
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 1885
    .line 1886
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1887
    .line 1888
    invoke-virtual {v2, v1, v3, v9}, Landroidx/paging/PageFetcher$flow$1$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v1

    .line 1892
    if-ne v1, v0, :cond_4f

    .line 1893
    .line 1894
    move-object v5, v0

    .line 1895
    goto :goto_2c

    .line 1896
    :cond_4f
    :goto_2b
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1897
    .line 1898
    :goto_2c
    return-object v5

    .line 1899
    :pswitch_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1900
    .line 1901
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1902
    .line 1903
    iget v2, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1904
    .line 1905
    if-eqz v2, :cond_52

    .line 1906
    .line 1907
    if-ne v2, v4, :cond_51

    .line 1908
    .line 1909
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1910
    .line 1911
    .line 1912
    :cond_50
    move-object v5, v0

    .line 1913
    goto :goto_2e

    .line 1914
    :cond_51
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1915
    .line 1916
    .line 1917
    goto :goto_2e

    .line 1918
    :cond_52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1919
    .line 1920
    .line 1921
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 1922
    .line 1923
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 1924
    .line 1925
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 1926
    .line 1927
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 1928
    .line 1929
    iget-object v5, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 1930
    .line 1931
    check-cast v5, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 1932
    .line 1933
    invoke-virtual {v5, v2}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->produceImpl(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/Channel;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v2

    .line 1937
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1938
    .line 1939
    invoke-static {v3, v2, v4, v9}, Lkotlinx/coroutines/flow/StateFlowKt;->emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/Channel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v2

    .line 1943
    if-ne v2, v1, :cond_53

    .line 1944
    .line 1945
    goto :goto_2d

    .line 1946
    :cond_53
    move-object v2, v0

    .line 1947
    :goto_2d
    if-ne v2, v1, :cond_50

    .line 1948
    .line 1949
    move-object v5, v1

    .line 1950
    :goto_2e
    return-object v5

    .line 1951
    :pswitch_14
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 1952
    .line 1953
    check-cast v0, Lcoil3/compose/AsyncImagePainter$Input;

    .line 1954
    .line 1955
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 1956
    .line 1957
    check-cast v1, Lcoil3/compose/AsyncImagePainter;

    .line 1958
    .line 1959
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1960
    .line 1961
    iget v6, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 1962
    .line 1963
    if-eqz v6, :cond_56

    .line 1964
    .line 1965
    if-eq v6, v4, :cond_55

    .line 1966
    .line 1967
    if-ne v6, v10, :cond_54

    .line 1968
    .line 1969
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 1970
    .line 1971
    check-cast v0, Lcoil3/compose/AsyncImagePainter;

    .line 1972
    .line 1973
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1974
    .line 1975
    .line 1976
    move-object v2, v0

    .line 1977
    move-object/from16 v0, p1

    .line 1978
    .line 1979
    goto :goto_31

    .line 1980
    :cond_54
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1981
    .line 1982
    .line 1983
    goto/16 :goto_34

    .line 1984
    .line 1985
    :cond_55
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1986
    .line 1987
    .line 1988
    move-object/from16 v0, p1

    .line 1989
    .line 1990
    goto :goto_2f

    .line 1991
    :cond_56
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1992
    .line 1993
    .line 1994
    iget-object v3, v1, Lcoil3/compose/AsyncImagePainter;->previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 1995
    .line 1996
    if-eqz v3, :cond_58

    .line 1997
    .line 1998
    iget-object v5, v0, Lcoil3/compose/AsyncImagePainter$Input;->request:Lcoil3/request/ImageRequest;

    .line 1999
    .line 2000
    invoke-virtual {v1, v5, v4}, Lcoil3/compose/AsyncImagePainter;->updateRequest(Lcoil3/request/ImageRequest;Z)Lcoil3/request/ImageRequest;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v5

    .line 2004
    iget-object v0, v0, Lcoil3/compose/AsyncImagePainter$Input;->imageLoader:Lcoil3/RealImageLoader;

    .line 2005
    .line 2006
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2007
    .line 2008
    invoke-virtual {v3, v0, v5, v9}, Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;->handle(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v0

    .line 2012
    if-ne v0, v2, :cond_57

    .line 2013
    .line 2014
    goto :goto_30

    .line 2015
    :cond_57
    :goto_2f
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State;

    .line 2016
    .line 2017
    goto :goto_33

    .line 2018
    :cond_58
    iget-object v3, v0, Lcoil3/compose/AsyncImagePainter$Input;->request:Lcoil3/request/ImageRequest;

    .line 2019
    .line 2020
    invoke-virtual {v1, v3, v11}, Lcoil3/compose/AsyncImagePainter;->updateRequest(Lcoil3/request/ImageRequest;Z)Lcoil3/request/ImageRequest;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v3

    .line 2024
    iget-object v0, v0, Lcoil3/compose/AsyncImagePainter$Input;->imageLoader:Lcoil3/RealImageLoader;

    .line 2025
    .line 2026
    iput-object v1, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2027
    .line 2028
    iput v10, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2029
    .line 2030
    invoke-virtual {v0, v3, v9}, Lcoil3/RealImageLoader;->execute(Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v0

    .line 2034
    if-ne v0, v2, :cond_59

    .line 2035
    .line 2036
    :goto_30
    move-object v5, v2

    .line 2037
    goto :goto_34

    .line 2038
    :cond_59
    move-object v2, v1

    .line 2039
    :goto_31
    check-cast v0, Lcoil3/request/ImageResult;

    .line 2040
    .line 2041
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2042
    .line 2043
    .line 2044
    instance-of v2, v0, Lcoil3/request/SuccessResult;

    .line 2045
    .line 2046
    if-eqz v2, :cond_5a

    .line 2047
    .line 2048
    new-instance v2, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 2049
    .line 2050
    check-cast v0, Lcoil3/request/SuccessResult;

    .line 2051
    .line 2052
    iget-object v3, v0, Lcoil3/request/SuccessResult;->image:Lcoil3/Image;

    .line 2053
    .line 2054
    iget-object v4, v0, Lcoil3/request/SuccessResult;->request:Lcoil3/request/ImageRequest;

    .line 2055
    .line 2056
    iget-object v4, v4, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 2057
    .line 2058
    invoke-static {v3, v4}, Lcoil3/compose/AsyncImageKt;->asPainter-55t9-rM(Lcoil3/Image;Landroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 2059
    .line 2060
    .line 2061
    move-result-object v3

    .line 2062
    invoke-direct {v2, v3, v0}, Lcoil3/compose/AsyncImagePainter$State$Success;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lcoil3/request/SuccessResult;)V

    .line 2063
    .line 2064
    .line 2065
    :goto_32
    move-object v0, v2

    .line 2066
    goto :goto_33

    .line 2067
    :cond_5a
    instance-of v2, v0, Lcoil3/request/ErrorResult;

    .line 2068
    .line 2069
    if-eqz v2, :cond_5c

    .line 2070
    .line 2071
    new-instance v2, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 2072
    .line 2073
    check-cast v0, Lcoil3/request/ErrorResult;

    .line 2074
    .line 2075
    iget-object v3, v0, Lcoil3/request/ErrorResult;->image:Lcoil3/Image;

    .line 2076
    .line 2077
    if-eqz v3, :cond_5b

    .line 2078
    .line 2079
    iget-object v4, v0, Lcoil3/request/ErrorResult;->request:Lcoil3/request/ImageRequest;

    .line 2080
    .line 2081
    iget-object v4, v4, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 2082
    .line 2083
    invoke-static {v3, v4}, Lcoil3/compose/AsyncImageKt;->asPainter-55t9-rM(Lcoil3/Image;Landroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v5

    .line 2087
    :cond_5b
    invoke-direct {v2, v5, v0}, Lcoil3/compose/AsyncImagePainter$State$Error;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lcoil3/request/ErrorResult;)V

    .line 2088
    .line 2089
    .line 2090
    goto :goto_32

    .line 2091
    :goto_33
    invoke-virtual {v1, v0}, Lcoil3/compose/AsyncImagePainter;->updateState(Lcoil3/compose/AsyncImagePainter$State;)V

    .line 2092
    .line 2093
    .line 2094
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2095
    .line 2096
    goto :goto_34

    .line 2097
    :cond_5c
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 2098
    .line 2099
    .line 2100
    :goto_34
    return-object v5

    .line 2101
    :pswitch_15
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 2102
    .line 2103
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 2104
    .line 2105
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2106
    .line 2107
    iget v2, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2108
    .line 2109
    if-eqz v2, :cond_5e

    .line 2110
    .line 2111
    if-ne v2, v4, :cond_5d

    .line 2112
    .line 2113
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2114
    .line 2115
    .line 2116
    goto :goto_35

    .line 2117
    :cond_5d
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2118
    .line 2119
    .line 2120
    goto :goto_36

    .line 2121
    :cond_5e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2122
    .line 2123
    .line 2124
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2125
    .line 2126
    check-cast v2, Lokhttp3/Headers$Builder;

    .line 2127
    .line 2128
    invoke-virtual {v2, v0}, Lokhttp3/Headers$Builder;->track(Landroidx/work/impl/model/WorkSpec;)Lkotlinx/coroutines/flow/Flow;

    .line 2129
    .line 2130
    .line 2131
    move-result-object v2

    .line 2132
    new-instance v3, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 2133
    .line 2134
    iget-object v5, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 2135
    .line 2136
    check-cast v5, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;

    .line 2137
    .line 2138
    invoke-direct {v3, v8, v5, v0}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2139
    .line 2140
    .line 2141
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2142
    .line 2143
    invoke-interface {v2, v3, v9}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2144
    .line 2145
    .line 2146
    move-result-object v0

    .line 2147
    if-ne v0, v1, :cond_5f

    .line 2148
    .line 2149
    move-object v5, v1

    .line 2150
    goto :goto_36

    .line 2151
    :cond_5f
    :goto_35
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2152
    .line 2153
    :goto_36
    return-object v5

    .line 2154
    :pswitch_16
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2155
    .line 2156
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 2157
    .line 2158
    check-cast v0, Landroidx/work/Constraints;

    .line 2159
    .line 2160
    iget-object v6, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 2161
    .line 2162
    check-cast v6, Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 2163
    .line 2164
    iget-object v7, v6, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->connManager:Landroid/net/ConnectivityManager;

    .line 2165
    .line 2166
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2167
    .line 2168
    iget v13, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2169
    .line 2170
    if-eqz v13, :cond_62

    .line 2171
    .line 2172
    if-ne v13, v4, :cond_61

    .line 2173
    .line 2174
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2175
    .line 2176
    .line 2177
    :cond_60
    :goto_37
    move-object v5, v1

    .line 2178
    goto/16 :goto_3d

    .line 2179
    .line 2180
    :cond_61
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2181
    .line 2182
    .line 2183
    goto/16 :goto_3d

    .line 2184
    .line 2185
    :cond_62
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2186
    .line 2187
    .line 2188
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2189
    .line 2190
    check-cast v3, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 2191
    .line 2192
    invoke-virtual {v0}, Landroidx/work/Constraints;->getRequiredNetworkRequest()Landroid/net/NetworkRequest;

    .line 2193
    .line 2194
    .line 2195
    move-result-object v13

    .line 2196
    const/16 v14, 0x19

    .line 2197
    .line 2198
    const/16 v15, 0x1e

    .line 2199
    .line 2200
    if-nez v13, :cond_68

    .line 2201
    .line 2202
    iget-object v0, v0, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 2203
    .line 2204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2205
    .line 2206
    .line 2207
    sget-object v13, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    .line 2208
    .line 2209
    if-ne v0, v13, :cond_63

    .line 2210
    .line 2211
    move-object v13, v5

    .line 2212
    goto :goto_3a

    .line 2213
    :cond_63
    new-instance v13, Landroid/net/NetworkRequest$Builder;

    .line 2214
    .line 2215
    invoke-direct {v13}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 2216
    .line 2217
    .line 2218
    invoke-virtual {v13, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v8

    .line 2222
    const/16 v13, 0x10

    .line 2223
    .line 2224
    invoke-virtual {v8, v13}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v8

    .line 2228
    const/16 v13, 0xf

    .line 2229
    .line 2230
    invoke-virtual {v8, v13}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 2231
    .line 2232
    .line 2233
    move-result-object v8

    .line 2234
    const/16 v13, 0xd

    .line 2235
    .line 2236
    invoke-virtual {v8, v13}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v8

    .line 2240
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2241
    .line 2242
    if-lt v13, v15, :cond_64

    .line 2243
    .line 2244
    sget-object v13, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    .line 2245
    .line 2246
    if-ne v0, v13, :cond_64

    .line 2247
    .line 2248
    invoke-virtual {v8, v14}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 2249
    .line 2250
    .line 2251
    move-result-object v0

    .line 2252
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v0

    .line 2256
    :goto_38
    move-object v13, v0

    .line 2257
    goto :goto_3a

    .line 2258
    :cond_64
    sget-object v13, Landroidx/work/impl/utils/NetworkTypeCompatKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2259
    .line 2260
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 2261
    .line 2262
    .line 2263
    move-result v0

    .line 2264
    aget v0, v13, v0

    .line 2265
    .line 2266
    if-eq v0, v4, :cond_67

    .line 2267
    .line 2268
    if-eq v0, v10, :cond_66

    .line 2269
    .line 2270
    if-eq v0, v2, :cond_65

    .line 2271
    .line 2272
    goto :goto_39

    .line 2273
    :cond_65
    const/16 v0, 0x12

    .line 2274
    .line 2275
    invoke-virtual {v8, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v8

    .line 2279
    goto :goto_39

    .line 2280
    :cond_66
    const/16 v0, 0xb

    .line 2281
    .line 2282
    invoke-virtual {v8, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 2283
    .line 2284
    .line 2285
    move-result-object v8

    .line 2286
    goto :goto_39

    .line 2287
    :cond_67
    invoke-virtual {v8, v11}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v8

    .line 2291
    :goto_39
    invoke-virtual {v8}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v0

    .line 2295
    goto :goto_38

    .line 2296
    :cond_68
    :goto_3a
    if-nez v13, :cond_69

    .line 2297
    .line 2298
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2299
    .line 2300
    .line 2301
    iget-object v0, v3, Lkotlinx/coroutines/channels/ProducerCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2302
    .line 2303
    invoke-virtual {v0, v5, v11}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    .line 2304
    .line 2305
    .line 2306
    goto/16 :goto_37

    .line 2307
    .line 2308
    :cond_69
    new-instance v0, Landroidx/paging/PageFetcher$flow$1;

    .line 2309
    .line 2310
    const/16 v8, 0x13

    .line 2311
    .line 2312
    invoke-direct {v0, v6, v3, v5, v8}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 2313
    .line 2314
    .line 2315
    invoke-static {v3, v5, v5, v0, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2316
    .line 2317
    .line 2318
    move-result-object v0

    .line 2319
    new-instance v2, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 2320
    .line 2321
    invoke-direct {v2, v14, v0, v3}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2322
    .line 2323
    .line 2324
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2325
    .line 2326
    if-lt v0, v15, :cond_6a

    .line 2327
    .line 2328
    sget-object v0, Landroidx/work/impl/constraints/SharedNetworkCallback;->INSTANCE:Landroidx/work/impl/constraints/SharedNetworkCallback;

    .line 2329
    .line 2330
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2331
    .line 2332
    .line 2333
    invoke-static {v7, v13, v2}, Landroidx/work/impl/constraints/SharedNetworkCallback;->addCallback(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Landroidx/navigation/NavController$$ExternalSyntheticLambda3;)Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 2334
    .line 2335
    .line 2336
    move-result-object v0

    .line 2337
    goto :goto_3c

    .line 2338
    :cond_6a
    sget v0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->$r8$clinit:I

    .line 2339
    .line 2340
    new-instance v5, Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 2341
    .line 2342
    invoke-direct {v5, v2}, Landroidx/work/impl/constraints/IndividualNetworkCallback;-><init>(Landroidx/navigation/NavController$$ExternalSyntheticLambda3;)V

    .line 2343
    .line 2344
    .line 2345
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2346
    .line 2347
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 2348
    .line 2349
    .line 2350
    :try_start_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v0

    .line 2354
    sget-object v8, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 2355
    .line 2356
    const-string v10, "NetworkRequestConstraintController register callback"

    .line 2357
    .line 2358
    invoke-virtual {v0, v8, v10}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    .line 2360
    .line 2361
    invoke-virtual {v7, v13, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2362
    .line 2363
    .line 2364
    iput-boolean v4, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2365
    .line 2366
    goto :goto_3b

    .line 2367
    :catch_0
    move-exception v0

    .line 2368
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2369
    .line 2370
    .line 2371
    move-result-object v8

    .line 2372
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2373
    .line 2374
    .line 2375
    move-result-object v8

    .line 2376
    const-string v10, "TooManyRequestsException"

    .line 2377
    .line 2378
    invoke-static {v8, v10, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2379
    .line 2380
    .line 2381
    move-result v8

    .line 2382
    if-eqz v8, :cond_6b

    .line 2383
    .line 2384
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 2385
    .line 2386
    .line 2387
    move-result-object v8

    .line 2388
    sget-object v10, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 2389
    .line 2390
    const-string v11, "NetworkRequestConstraintController couldn\'t register callback"

    .line 2391
    .line 2392
    invoke-virtual {v8, v10, v11, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2393
    .line 2394
    .line 2395
    new-instance v0, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 2396
    .line 2397
    const/4 v8, 0x7

    .line 2398
    invoke-direct {v0, v8}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 2399
    .line 2400
    .line 2401
    invoke-virtual {v2, v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    .line 2403
    .line 2404
    :goto_3b
    new-instance v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 2405
    .line 2406
    const/16 v2, 0x9

    .line 2407
    .line 2408
    invoke-direct {v0, v6, v7, v5, v2}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 2409
    .line 2410
    .line 2411
    :goto_3c
    new-instance v2, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 2412
    .line 2413
    invoke-direct {v2, v4, v0}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 2414
    .line 2415
    .line 2416
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2417
    .line 2418
    invoke-static {v3, v2, v9}, Landroidx/work/OperationKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerCoroutine;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2419
    .line 2420
    .line 2421
    move-result-object v0

    .line 2422
    if-ne v0, v12, :cond_60

    .line 2423
    .line 2424
    move-object v5, v12

    .line 2425
    :goto_3d
    return-object v5

    .line 2426
    :cond_6b
    throw v0

    .line 2427
    :pswitch_17
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 2428
    .line 2429
    move-object v12, v0

    .line 2430
    check-cast v12, Landroidx/work/ListenableWorker;

    .line 2431
    .line 2432
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2433
    .line 2434
    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    .line 2435
    .line 2436
    iget-object v13, v0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 2437
    .line 2438
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2439
    .line 2440
    iget v2, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2441
    .line 2442
    if-eqz v2, :cond_6e

    .line 2443
    .line 2444
    if-eq v2, v4, :cond_6d

    .line 2445
    .line 2446
    if-ne v2, v10, :cond_6c

    .line 2447
    .line 2448
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2449
    .line 2450
    .line 2451
    move-object/from16 v0, p1

    .line 2452
    .line 2453
    goto/16 :goto_41

    .line 2454
    .line 2455
    :cond_6c
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2456
    .line 2457
    .line 2458
    move-object v0, v5

    .line 2459
    goto :goto_41

    .line 2460
    :cond_6d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2461
    .line 2462
    .line 2463
    goto :goto_3f

    .line 2464
    :cond_6e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2465
    .line 2466
    .line 2467
    iget-object v15, v0, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    .line 2468
    .line 2469
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 2470
    .line 2471
    move-object v14, v2

    .line 2472
    check-cast v14, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 2473
    .line 2474
    iget-object v0, v0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 2475
    .line 2476
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2477
    .line 2478
    sget-object v2, Landroidx/work/impl/utils/WorkForegroundKt;->TAG:Ljava/lang/String;

    .line 2479
    .line 2480
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2481
    .line 2482
    iget-boolean v3, v13, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 2483
    .line 2484
    if-eqz v3, :cond_70

    .line 2485
    .line 2486
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2487
    .line 2488
    const/16 v4, 0x1f

    .line 2489
    .line 2490
    if-lt v3, v4, :cond_6f

    .line 2491
    .line 2492
    goto :goto_3e

    .line 2493
    :cond_6f
    iget-object v0, v0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Lretrofit2/AndroidMainExecutor;

    .line 2494
    .line 2495
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2496
    .line 2497
    .line 2498
    invoke-static {v0}, Lkotlinx/coroutines/AwaitKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2499
    .line 2500
    .line 2501
    move-result-object v0

    .line 2502
    new-instance v11, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 2503
    .line 2504
    const/16 v17, 0x18

    .line 2505
    .line 2506
    const/16 v18, 0x0

    .line 2507
    .line 2508
    const/16 v16, 0x0

    .line 2509
    .line 2510
    invoke-direct/range {v11 .. v18}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;IZ)V

    .line 2511
    .line 2512
    .line 2513
    invoke-static {v0, v11, v9}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2514
    .line 2515
    .line 2516
    move-result-object v0

    .line 2517
    if-ne v0, v1, :cond_70

    .line 2518
    .line 2519
    move-object v2, v0

    .line 2520
    :cond_70
    :goto_3e
    if-ne v2, v1, :cond_71

    .line 2521
    .line 2522
    goto :goto_40

    .line 2523
    :cond_71
    :goto_3f
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->TAG:Ljava/lang/String;

    .line 2524
    .line 2525
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 2526
    .line 2527
    .line 2528
    move-result-object v2

    .line 2529
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2530
    .line 2531
    const-string v4, "Starting work for "

    .line 2532
    .line 2533
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2534
    .line 2535
    .line 2536
    iget-object v4, v13, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 2537
    .line 2538
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2539
    .line 2540
    .line 2541
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2542
    .line 2543
    .line 2544
    move-result-object v3

    .line 2545
    invoke-virtual {v2, v0, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    .line 2547
    .line 2548
    invoke-virtual {v12}, Landroidx/work/ListenableWorker;->startWork()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 2549
    .line 2550
    .line 2551
    move-result-object v0

    .line 2552
    iput v10, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2553
    .line 2554
    invoke-static {v0, v12, v9}, Landroidx/work/impl/WorkerWrapperKt;->awaitWithin(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/ListenableWorker;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 2555
    .line 2556
    .line 2557
    move-result-object v0

    .line 2558
    if-ne v0, v1, :cond_72

    .line 2559
    .line 2560
    :goto_40
    move-object v0, v1

    .line 2561
    :cond_72
    :goto_41
    return-object v0

    .line 2562
    :pswitch_18
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 2563
    .line 2564
    move-object v1, v0

    .line 2565
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2566
    .line 2567
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2568
    .line 2569
    iget v2, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2570
    .line 2571
    if-eqz v2, :cond_74

    .line 2572
    .line 2573
    if-ne v2, v4, :cond_73

    .line 2574
    .line 2575
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2576
    .line 2577
    .line 2578
    move-object/from16 v2, p1

    .line 2579
    .line 2580
    goto :goto_42

    .line 2581
    :catchall_0
    move-exception v0

    .line 2582
    goto :goto_43

    .line 2583
    :cond_73
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2584
    .line 2585
    .line 2586
    goto :goto_45

    .line 2587
    :cond_74
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2588
    .line 2589
    .line 2590
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2591
    .line 2592
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 2593
    .line 2594
    :try_start_2
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 2595
    .line 2596
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 2597
    .line 2598
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2599
    .line 2600
    invoke-interface {v3, v2, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    .line 2602
    .line 2603
    move-result-object v2

    .line 2604
    if-ne v2, v0, :cond_75

    .line 2605
    .line 2606
    move-object v5, v0

    .line 2607
    goto :goto_45

    .line 2608
    :cond_75
    :goto_42
    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2609
    .line 2610
    .line 2611
    goto :goto_44

    .line 2612
    :goto_43
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    .line 2613
    .line 2614
    .line 2615
    goto :goto_44

    .line 2616
    :catch_1
    iput-boolean v4, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->attemptedSetting:Z

    .line 2617
    .line 2618
    iget-object v0, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 2619
    .line 2620
    if-eqz v0, :cond_76

    .line 2621
    .line 2622
    iget-object v0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 2623
    .line 2624
    invoke-virtual {v0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->cancel(Z)Z

    .line 2625
    .line 2626
    .line 2627
    move-result v0

    .line 2628
    if-eqz v0, :cond_76

    .line 2629
    .line 2630
    iput-object v5, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    .line 2631
    .line 2632
    iput-object v5, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 2633
    .line 2634
    iput-object v5, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 2635
    .line 2636
    :cond_76
    :goto_44
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2637
    .line 2638
    :goto_45
    return-object v5

    .line 2639
    :pswitch_19
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2640
    .line 2641
    iget v1, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2642
    .line 2643
    if-eqz v1, :cond_78

    .line 2644
    .line 2645
    if-ne v1, v4, :cond_77

    .line 2646
    .line 2647
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2648
    .line 2649
    move-object v1, v0

    .line 2650
    check-cast v1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 2651
    .line 2652
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2653
    .line 2654
    .line 2655
    move-object v2, v1

    .line 2656
    move-object/from16 v1, p1

    .line 2657
    .line 2658
    goto :goto_47

    .line 2659
    :catchall_1
    move-exception v0

    .line 2660
    goto :goto_46

    .line 2661
    :cond_77
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2662
    .line 2663
    .line 2664
    goto :goto_49

    .line 2665
    :cond_78
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2666
    .line 2667
    .line 2668
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2669
    .line 2670
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 2671
    .line 2672
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 2673
    .line 2674
    check-cast v2, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 2675
    .line 2676
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 2677
    .line 2678
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 2679
    .line 2680
    :try_start_4
    iput-object v2, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2681
    .line 2682
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2683
    .line 2684
    invoke-interface {v3, v1, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2685
    .line 2686
    .line 2687
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2688
    if-ne v1, v0, :cond_79

    .line 2689
    .line 2690
    move-object v5, v0

    .line 2691
    goto :goto_49

    .line 2692
    :catchall_2
    move-exception v0

    .line 2693
    move-object v1, v2

    .line 2694
    :goto_46
    new-instance v2, Lkotlin/Result$Failure;

    .line 2695
    .line 2696
    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 2697
    .line 2698
    .line 2699
    move-object/from16 v21, v2

    .line 2700
    .line 2701
    move-object v2, v1

    .line 2702
    move-object/from16 v1, v21

    .line 2703
    .line 2704
    :cond_79
    :goto_47
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2705
    .line 2706
    .line 2707
    move-result-object v0

    .line 2708
    if-nez v0, :cond_7a

    .line 2709
    .line 2710
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 2711
    .line 2712
    .line 2713
    goto :goto_48

    .line 2714
    :cond_7a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2715
    .line 2716
    .line 2717
    new-instance v1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 2718
    .line 2719
    invoke-direct {v1, v0, v11}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 2720
    .line 2721
    .line 2722
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 2723
    .line 2724
    .line 2725
    :goto_48
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2726
    .line 2727
    :goto_49
    return-object v5

    .line 2728
    :pswitch_1a
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2729
    .line 2730
    iget v1, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2731
    .line 2732
    if-eqz v1, :cond_7c

    .line 2733
    .line 2734
    if-ne v1, v4, :cond_7b

    .line 2735
    .line 2736
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2737
    .line 2738
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2739
    .line 2740
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2741
    .line 2742
    .line 2743
    move-object/from16 v2, p1

    .line 2744
    .line 2745
    goto :goto_4a

    .line 2746
    :cond_7b
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2747
    .line 2748
    .line 2749
    goto :goto_4b

    .line 2750
    :cond_7c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2751
    .line 2752
    .line 2753
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 2754
    .line 2755
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2756
    .line 2757
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 2758
    .line 2759
    check-cast v2, Landroidx/room/coroutines/Pool;

    .line 2760
    .line 2761
    iput-object v1, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2762
    .line 2763
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2764
    .line 2765
    invoke-virtual {v2, v9}, Landroidx/room/coroutines/Pool;->acquire(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2766
    .line 2767
    .line 2768
    move-result-object v2

    .line 2769
    if-ne v2, v0, :cond_7d

    .line 2770
    .line 2771
    move-object v5, v0

    .line 2772
    goto :goto_4b

    .line 2773
    :cond_7d
    move-object v0, v1

    .line 2774
    :goto_4a
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2775
    .line 2776
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2777
    .line 2778
    :goto_4b
    return-object v5

    .line 2779
    :pswitch_1b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2780
    .line 2781
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2782
    .line 2783
    iget v2, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2784
    .line 2785
    if-eqz v2, :cond_80

    .line 2786
    .line 2787
    if-eq v2, v4, :cond_7f

    .line 2788
    .line 2789
    if-ne v2, v10, :cond_7e

    .line 2790
    .line 2791
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 2792
    .line 2793
    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 2794
    .line 2795
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2796
    .line 2797
    check-cast v2, Landroidx/room/ObservedTableStates;

    .line 2798
    .line 2799
    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2800
    .line 2801
    .line 2802
    goto/16 :goto_54

    .line 2803
    .line 2804
    :catchall_3
    move-exception v0

    .line 2805
    move v3, v11

    .line 2806
    goto/16 :goto_56

    .line 2807
    .line 2808
    :cond_7e
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2809
    .line 2810
    .line 2811
    goto/16 :goto_58

    .line 2812
    .line 2813
    :cond_7f
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2814
    .line 2815
    check-cast v2, Landroidx/room/Transactor;

    .line 2816
    .line 2817
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2818
    .line 2819
    .line 2820
    move-object/from16 v3, p1

    .line 2821
    .line 2822
    goto :goto_4c

    .line 2823
    :cond_80
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2824
    .line 2825
    .line 2826
    iget-object v2, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2827
    .line 2828
    check-cast v2, Landroidx/room/Transactor;

    .line 2829
    .line 2830
    iput-object v2, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2831
    .line 2832
    iput v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2833
    .line 2834
    invoke-interface {v2, v9}, Landroidx/room/Transactor;->inTransaction(Lkotlin/coroutines/Continuation;)Ljava/lang/Boolean;

    .line 2835
    .line 2836
    .line 2837
    move-result-object v3

    .line 2838
    if-ne v3, v1, :cond_81

    .line 2839
    .line 2840
    goto/16 :goto_53

    .line 2841
    .line 2842
    :cond_81
    :goto_4c
    check-cast v3, Ljava/lang/Boolean;

    .line 2843
    .line 2844
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2845
    .line 2846
    .line 2847
    move-result v3

    .line 2848
    if-eqz v3, :cond_82

    .line 2849
    .line 2850
    :goto_4d
    move-object v5, v0

    .line 2851
    goto/16 :goto_58

    .line 2852
    .line 2853
    :cond_82
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 2854
    .line 2855
    check-cast v3, Landroidx/room/TriggerBasedInvalidationTracker;

    .line 2856
    .line 2857
    iget-object v6, v3, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/room/ObservedTableStates;

    .line 2858
    .line 2859
    iget-object v7, v6, Landroidx/room/ObservedTableStates;->onSyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2860
    .line 2861
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2862
    .line 2863
    .line 2864
    :try_start_6
    iput-boolean v4, v6, Landroidx/room/ObservedTableStates;->inProgressSync:Z

    .line 2865
    .line 2866
    iget-object v8, v6, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2867
    .line 2868
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 2869
    .line 2870
    .line 2871
    :try_start_7
    iget-boolean v12, v6, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 2872
    .line 2873
    if-nez v12, :cond_84

    .line 2874
    .line 2875
    :cond_83
    move-object v13, v5

    .line 2876
    goto :goto_52

    .line 2877
    :cond_84
    iput-boolean v11, v6, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 2878
    .line 2879
    iget-object v12, v6, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    .line 2880
    .line 2881
    array-length v12, v12

    .line 2882
    new-array v13, v12, [Landroidx/room/ObservedTableStates$ObserveOp;

    .line 2883
    .line 2884
    move v14, v11

    .line 2885
    move v15, v14

    .line 2886
    :goto_4e
    if-ge v14, v12, :cond_88

    .line 2887
    .line 2888
    iget-object v4, v6, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    .line 2889
    .line 2890
    aget-wide v17, v4, v14

    .line 2891
    .line 2892
    const-wide/16 v19, 0x0

    .line 2893
    .line 2894
    cmp-long v4, v17, v19

    .line 2895
    .line 2896
    if-lez v4, :cond_85

    .line 2897
    .line 2898
    const/4 v4, 0x1

    .line 2899
    goto :goto_4f

    .line 2900
    :cond_85
    move v4, v11

    .line 2901
    :goto_4f
    iget-object v11, v6, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    .line 2902
    .line 2903
    aget-boolean v10, v11, v14

    .line 2904
    .line 2905
    if-eq v4, v10, :cond_87

    .line 2906
    .line 2907
    aput-boolean v4, v11, v14

    .line 2908
    .line 2909
    if-eqz v4, :cond_86

    .line 2910
    .line 2911
    sget-object v4, Landroidx/room/ObservedTableStates$ObserveOp;->ADD:Landroidx/room/ObservedTableStates$ObserveOp;

    .line 2912
    .line 2913
    :goto_50
    const/4 v15, 0x1

    .line 2914
    goto :goto_51

    .line 2915
    :catchall_4
    move-exception v0

    .line 2916
    goto :goto_59

    .line 2917
    :cond_86
    sget-object v4, Landroidx/room/ObservedTableStates$ObserveOp;->REMOVE:Landroidx/room/ObservedTableStates$ObserveOp;

    .line 2918
    .line 2919
    goto :goto_50

    .line 2920
    :cond_87
    sget-object v4, Landroidx/room/ObservedTableStates$ObserveOp;->NO_OP:Landroidx/room/ObservedTableStates$ObserveOp;

    .line 2921
    .line 2922
    :goto_51
    aput-object v4, v13, v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2923
    .line 2924
    add-int/lit8 v14, v14, 0x1

    .line 2925
    .line 2926
    const/4 v4, 0x1

    .line 2927
    const/4 v10, 0x2

    .line 2928
    const/4 v11, 0x0

    .line 2929
    goto :goto_4e

    .line 2930
    :cond_88
    if-eqz v15, :cond_83

    .line 2931
    .line 2932
    :goto_52
    :try_start_8
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 2933
    .line 2934
    .line 2935
    if-eqz v13, :cond_8b

    .line 2936
    .line 2937
    :try_start_9
    array-length v4, v13

    .line 2938
    if-nez v4, :cond_89

    .line 2939
    .line 2940
    goto :goto_55

    .line 2941
    :cond_89
    sget-object v4, Landroidx/room/Transactor$SQLiteTransactionType;->IMMEDIATE:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 2942
    .line 2943
    new-instance v8, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1;

    .line 2944
    .line 2945
    invoke-direct {v8, v13, v3, v2, v5}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1;-><init>([Landroidx/room/ObservedTableStates$ObserveOp;Landroidx/room/TriggerBasedInvalidationTracker;Landroidx/room/Transactor;Lkotlin/coroutines/Continuation;)V

    .line 2946
    .line 2947
    .line 2948
    iput-object v6, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 2949
    .line 2950
    iput-object v7, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 2951
    .line 2952
    const/4 v3, 0x2

    .line 2953
    iput v3, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 2954
    .line 2955
    invoke-interface {v2, v4, v8, v9}, Landroidx/room/Transactor;->withTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 2956
    .line 2957
    .line 2958
    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 2959
    if-ne v2, v1, :cond_8a

    .line 2960
    .line 2961
    :goto_53
    move-object v5, v1

    .line 2962
    goto :goto_58

    .line 2963
    :cond_8a
    move-object v2, v6

    .line 2964
    move-object v1, v7

    .line 2965
    :goto_54
    move-object v7, v1

    .line 2966
    move-object v6, v2

    .line 2967
    :cond_8b
    :goto_55
    const/4 v3, 0x0

    .line 2968
    goto :goto_57

    .line 2969
    :catchall_5
    move-exception v0

    .line 2970
    move-object v2, v6

    .line 2971
    move-object v1, v7

    .line 2972
    const/4 v3, 0x0

    .line 2973
    :goto_56
    :try_start_a
    iput-boolean v3, v2, Landroidx/room/ObservedTableStates;->inProgressSync:Z

    .line 2974
    .line 2975
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 2976
    :catchall_6
    move-exception v0

    .line 2977
    move-object v7, v1

    .line 2978
    goto :goto_5a

    .line 2979
    :goto_57
    :try_start_b
    iput-boolean v3, v6, Landroidx/room/ObservedTableStates;->inProgressSync:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 2980
    .line 2981
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2982
    .line 2983
    .line 2984
    goto/16 :goto_4d

    .line 2985
    .line 2986
    :goto_58
    return-object v5

    .line 2987
    :catchall_7
    move-exception v0

    .line 2988
    goto :goto_5a

    .line 2989
    :goto_59
    :try_start_c
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2990
    .line 2991
    .line 2992
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 2993
    :goto_5a
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2994
    .line 2995
    .line 2996
    throw v0

    .line 2997
    :pswitch_1c
    iget-object v0, v9, Lcoil3/RealImageLoader$execute$2;->$request:Ljava/lang/Object;

    .line 2998
    .line 2999
    check-cast v0, Lcoil3/request/ImageRequest;

    .line 3000
    .line 3001
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$2;->this$0:Ljava/lang/Object;

    .line 3002
    .line 3003
    check-cast v1, Lcoil3/RealImageLoader;

    .line 3004
    .line 3005
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3006
    .line 3007
    iget v4, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 3008
    .line 3009
    if-eqz v4, :cond_8d

    .line 3010
    .line 3011
    const/4 v6, 0x1

    .line 3012
    if-ne v4, v6, :cond_8c

    .line 3013
    .line 3014
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3015
    .line 3016
    .line 3017
    move-object/from16 v0, p1

    .line 3018
    .line 3019
    goto :goto_5b

    .line 3020
    :cond_8c
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 3021
    .line 3022
    .line 3023
    move-object v0, v5

    .line 3024
    goto :goto_5b

    .line 3025
    :cond_8d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3026
    .line 3027
    .line 3028
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$2;->L$0:Ljava/lang/Object;

    .line 3029
    .line 3030
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 3031
    .line 3032
    iget-object v4, v1, Lcoil3/RealImageLoader;->options:Lcoil3/RealImageLoader$Options;

    .line 3033
    .line 3034
    iget-object v4, v4, Lcoil3/RealImageLoader$Options;->mainCoroutineContextLazy:Lkotlin/SynchronizedLazyImpl;

    .line 3035
    .line 3036
    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 3037
    .line 3038
    .line 3039
    move-result-object v4

    .line 3040
    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    .line 3041
    .line 3042
    new-instance v6, Lcoil3/RealImageLoader$enqueue$job$1;

    .line 3043
    .line 3044
    const/4 v7, 0x1

    .line 3045
    invoke-direct {v6, v1, v0, v5, v7}, Lcoil3/RealImageLoader$enqueue$job$1;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;I)V

    .line 3046
    .line 3047
    .line 3048
    const/4 v1, 0x2

    .line 3049
    invoke-static {v3, v4, v6, v1}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 3050
    .line 3051
    .line 3052
    move-result-object v1

    .line 3053
    invoke-static {v0, v1}, Lcoil3/UriKt;->getDisposable(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/DeferredCoroutine;)Lcoil3/request/Disposable;

    .line 3054
    .line 3055
    .line 3056
    move-result-object v0

    .line 3057
    invoke-interface {v0}, Lcoil3/request/Disposable;->getJob()Lkotlinx/coroutines/Deferred;

    .line 3058
    .line 3059
    .line 3060
    move-result-object v0

    .line 3061
    iput v7, v9, Lcoil3/RealImageLoader$execute$2;->label:I

    .line 3062
    .line 3063
    invoke-interface {v0, v9}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 3064
    .line 3065
    .line 3066
    move-result-object v0

    .line 3067
    if-ne v0, v2, :cond_8e

    .line 3068
    .line 3069
    move-object v0, v2

    .line 3070
    :cond_8e
    :goto_5b
    return-object v0

    .line 3071
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
