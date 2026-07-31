.class public final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic $callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

.field public final synthetic $r8$classId:I

.field public final synthetic $readingList:Lorg/wikipedia/readinglist/database/ReadingList;

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 9
    .line 10
    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/database/ReadingList;Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 14
    iput p5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    iget p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;

    .line 7
    .line 8
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    invoke-direct {p1, p0, v0, v1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;

    .line 19
    .line 20
    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 24
    .line 25
    iget-object v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 26
    .line 27
    move-object v6, p2

    .line 28
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;-><init>(Lorg/wikipedia/readinglist/database/ReadingList;Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;Lkotlin/coroutines/Continuation;I)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :pswitch_1
    move-object v6, p2

    .line 33
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;

    .line 34
    .line 35
    move-object v7, v6

    .line 36
    iget-object v6, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    iget-object v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 40
    .line 41
    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    .line 43
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;-><init>(Lorg/wikipedia/readinglist/database/ReadingList;Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;Lkotlin/coroutines/Continuation;I)V

    .line 44
    .line 45
    .line 46
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    iget-object v6, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    iget-object v8, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 21
    .line 22
    iget v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->label:I

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    if-ne v1, v7, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 41
    .line 42
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput v7, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->label:I

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->getListsWithoutContents(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v0, :cond_2

    .line 57
    .line 58
    move-object v4, v0

    .line 59
    goto :goto_4

    .line 60
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 61
    .line 62
    new-instance p0, Ljava/util/ArrayList;

    .line 63
    .line 64
    const/16 v0, 0xa

    .line 65
    .line 66
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 88
    .line 89
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    move-object v1, v0

    .line 117
    check-cast v1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v6}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_4

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    invoke-static {v8}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-nez p0, :cond_6

    .line 138
    .line 139
    :goto_3
    move-object v4, v9

    .line 140
    goto :goto_4

    .line 141
    :cond_6
    invoke-virtual {v6}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    iget-object v0, v6, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 146
    .line 147
    new-instance v1, Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 148
    .line 149
    const/4 v2, 0x3

    .line 150
    invoke-direct {v1, v6, v8, v3, v2}, Lorg/wikipedia/page/shareafact/ShareHandler;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    invoke-static {v8, p0, v0, p1, v1}, Lorg/wikipedia/util/TabUtil;->readingListTitleDialog(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;)Lorg/wikipedia/views/TextInputDialog;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :goto_4
    return-object v4

    .line 162
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 163
    .line 164
    iget v10, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->label:I

    .line 165
    .line 166
    if-eqz v10, :cond_9

    .line 167
    .line 168
    if-eq v10, v7, :cond_8

    .line 169
    .line 170
    if-ne v10, v2, :cond_7

    .line 171
    .line 172
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_7
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 188
    .line 189
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iput v7, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->label:I

    .line 198
    .line 199
    invoke-static {p1, v6, p0}, Lorg/wikipedia/dataclient/Service$-CC;->deleteList$default(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    if-ne p1, v0, :cond_a

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_a
    :goto_5
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 207
    .line 208
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-object v4, v6, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 217
    .line 218
    iput v2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->label:I

    .line 219
    .line 220
    invoke-virtual {p1, v6, v4, v1, p0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    if-ne p0, v0, :cond_b

    .line 225
    .line 226
    :goto_6
    move-object v4, v0

    .line 227
    goto :goto_9

    .line 228
    :cond_b
    :goto_7
    invoke-static {v8}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    if-nez p0, :cond_c

    .line 233
    .line 234
    :goto_8
    move-object v4, v9

    .line 235
    goto :goto_9

    .line 236
    :cond_c
    invoke-interface {v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;->onCompleted()V

    .line 237
    .line 238
    .line 239
    goto :goto_8

    .line 240
    :goto_9
    return-object v4

    .line 241
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 242
    .line 243
    iget v10, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->label:I

    .line 244
    .line 245
    if-eqz v10, :cond_f

    .line 246
    .line 247
    if-eq v10, v7, :cond_e

    .line 248
    .line 249
    if-ne v10, v2, :cond_d

    .line 250
    .line 251
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto :goto_c

    .line 255
    :cond_d
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto :goto_e

    .line 259
    :cond_e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    goto :goto_a

    .line 263
    :cond_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 267
    .line 268
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    iput v7, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->label:I

    .line 277
    .line 278
    invoke-static {p1, v6, p0}, Lorg/wikipedia/dataclient/Service$-CC;->deleteList$default(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    if-ne p1, v0, :cond_10

    .line 283
    .line 284
    goto :goto_b

    .line 285
    :cond_10
    :goto_a
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 286
    .line 287
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iget-object v4, v6, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 296
    .line 297
    iput v2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;->label:I

    .line 298
    .line 299
    invoke-virtual {p1, v6, v4, v1, p0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    if-ne p0, v0, :cond_11

    .line 304
    .line 305
    :goto_b
    move-object v4, v0

    .line 306
    goto :goto_e

    .line 307
    :cond_11
    :goto_c
    invoke-static {v8}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    if-nez p0, :cond_12

    .line 312
    .line 313
    :goto_d
    move-object v4, v9

    .line 314
    goto :goto_e

    .line 315
    :cond_12
    invoke-interface {v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;->onCompleted()V

    .line 316
    .line 317
    .line 318
    goto :goto_d

    .line 319
    :goto_e
    return-object v4

    .line 320
    nop

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
