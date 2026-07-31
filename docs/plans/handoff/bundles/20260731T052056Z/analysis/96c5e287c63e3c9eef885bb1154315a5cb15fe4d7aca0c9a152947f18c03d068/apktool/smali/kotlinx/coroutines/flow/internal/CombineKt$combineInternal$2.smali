.class public final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $arrayFactory:Ljava/lang/Object;

.field public $flows:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_combineInternal:Ljava/lang/Object;

.field public final synthetic $transform:Ljava/lang/Object;

.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p5, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lokhttp3/Dispatcher$promoteAndExecute$Effects;[ZLorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$r8$classId:I

    .line 17
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    .line 13
    .line 14
    check-cast v3, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 15
    .line 16
    check-cast v2, [Z

    .line 17
    .line 18
    check-cast v1, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;

    .line 19
    .line 20
    invoke-direct {p0, v3, v2, v1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>(Lokhttp3/Dispatcher$promoteAndExecute$Effects;[ZLorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_0
    new-instance v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    .line 25
    .line 26
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v9, p0

    .line 29
    check-cast v9, [Lkotlinx/coroutines/flow/Flow;

    .line 30
    .line 31
    move-object v6, v3

    .line 32
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 33
    .line 34
    move-object v7, v2

    .line 35
    check-cast v7, Lkotlin/jvm/functions/Function3;

    .line 36
    .line 37
    move-object v8, v1

    .line 38
    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    .line 39
    .line 40
    move-object v5, p2

    .line 41
    invoke-direct/range {v4 .. v9}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, v4, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    iget-object v5, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Ljava/lang/Object;

    .line 11
    .line 12
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v9, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 23
    .line 24
    iget-object v1, v9, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->callsToExecute:Ljava/util/List;

    .line 25
    .line 26
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 27
    .line 28
    iget v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 29
    .line 30
    if-eqz v11, :cond_1

    .line 31
    .line 32
    if-ne v11, v8, :cond_0

    .line 33
    .line 34
    iget v4, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 35
    .line 36
    iget v5, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 37
    .line 38
    iget-object v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v6, Ljava/util/Collection;

    .line 41
    .line 42
    check-cast v6, Ljava/util/Collection;

    .line 43
    .line 44
    iget-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v10, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 47
    .line 48
    iget-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v11, Ljava/util/Iterator;

    .line 51
    .line 52
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v12, Ljava/util/Collection;

    .line 55
    .line 56
    check-cast v12, Ljava/util/Collection;

    .line 57
    .line 58
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_0
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move-object v2, v10

    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    check-cast v5, [Z

    .line 73
    .line 74
    array-length v6, v5

    .line 75
    if-nez v6, :cond_2

    .line 76
    .line 77
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance v6, Lkotlin/collections/IndexingIterable;

    .line 81
    .line 82
    invoke-direct {v6, v4, v5}, Lkotlin/collections/IndexingIterable;-><init>(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    move-object v4, v6

    .line 86
    :goto_0
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    new-instance v5, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    move-object v10, v6

    .line 110
    check-cast v10, Lkotlin/Pair;

    .line 111
    .line 112
    iget-object v10, v10, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v10, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_3

    .line 121
    .line 122
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 127
    .line 128
    const/16 v6, 0xa

    .line 129
    .line 130
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    move-object v6, v4

    .line 142
    move-object v11, v5

    .line 143
    move v4, v7

    .line 144
    move v5, v4

    .line 145
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    if-eqz v10, :cond_6

    .line 150
    .line 151
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    check-cast v10, Lkotlin/Pair;

    .line 156
    .line 157
    iget-object v10, v10, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v10, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 160
    .line 161
    sget-object v12, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 162
    .line 163
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    invoke-virtual {v12}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    iget-object v13, v10, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    invoke-static {v13}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    move-object v14, v6

    .line 182
    check-cast v14, Ljava/util/Collection;

    .line 183
    .line 184
    iput-object v14, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 187
    .line 188
    iput-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 189
    .line 190
    iput-object v14, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:Ljava/lang/Object;

    .line 191
    .line 192
    iput v5, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 193
    .line 194
    iput v4, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 195
    .line 196
    iput v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 197
    .line 198
    invoke-virtual {v12, v10, v13, v8, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    if-ne v12, v9, :cond_5

    .line 203
    .line 204
    move-object v2, v9

    .line 205
    goto :goto_4

    .line 206
    :cond_5
    move-object v12, v6

    .line 207
    :goto_3
    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-object v6, v12

    .line 211
    goto :goto_2

    .line 212
    :cond_6
    check-cast v6, Ljava/util/List;

    .line 213
    .line 214
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-nez v0, :cond_7

    .line 219
    .line 220
    check-cast v3, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;

    .line 221
    .line 222
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 227
    .line 228
    iget-object v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 235
    .line 236
    invoke-interface {v3, v6, v0}, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;->onDeleted(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 237
    .line 238
    .line 239
    :cond_7
    :goto_4
    return-object v2

    .line 240
    :pswitch_0
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 241
    .line 242
    check-cast v5, Lkotlin/jvm/functions/Function3;

    .line 243
    .line 244
    sget-object v1, Lkotlinx/coroutines/flow/internal/CombineKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    .line 245
    .line 246
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 247
    .line 248
    iget v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 249
    .line 250
    const/4 v13, 0x2

    .line 251
    if-eqz v12, :cond_b

    .line 252
    .line 253
    if-eq v12, v8, :cond_a

    .line 254
    .line 255
    if-eq v12, v13, :cond_9

    .line 256
    .line 257
    if-ne v12, v4, :cond_8

    .line 258
    .line 259
    iget v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 260
    .line 261
    iget v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 262
    .line 263
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v12, [B

    .line 266
    .line 267
    iget-object v14, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v14, Lkotlinx/coroutines/channels/Channel;

    .line 270
    .line 271
    iget-object v15, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v15, [Ljava/lang/Object;

    .line 274
    .line 275
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    move-object v13, v12

    .line 279
    move v12, v6

    .line 280
    move-object v6, v13

    .line 281
    move v13, v7

    .line 282
    goto :goto_5

    .line 283
    :cond_8
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    move-object v2, v10

    .line 287
    goto/16 :goto_d

    .line 288
    .line 289
    :cond_9
    iget v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 290
    .line 291
    iget v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 292
    .line 293
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v12, [B

    .line 296
    .line 297
    iget-object v14, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v14, Lkotlinx/coroutines/channels/Channel;

    .line 300
    .line 301
    iget-object v15, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v15, [Ljava/lang/Object;

    .line 304
    .line 305
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    move-object v7, v12

    .line 309
    move v12, v6

    .line 310
    move-object v6, v7

    .line 311
    :goto_5
    move-object v7, v14

    .line 312
    goto/16 :goto_b

    .line 313
    .line 314
    :cond_a
    iget v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 315
    .line 316
    iget v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 317
    .line 318
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v12, [B

    .line 321
    .line 322
    iget-object v14, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v14, Lkotlinx/coroutines/channels/Channel;

    .line 325
    .line 326
    iget-object v15, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v15, [Ljava/lang/Object;

    .line 329
    .line 330
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    move-object/from16 v13, p1

    .line 334
    .line 335
    check-cast v13, Lkotlinx/coroutines/channels/ChannelResult;

    .line 336
    .line 337
    iget-object v13, v13, Lkotlinx/coroutines/channels/ChannelResult;->holder:Ljava/lang/Object;

    .line 338
    .line 339
    move-object v7, v12

    .line 340
    move v12, v6

    .line 341
    move-object v6, v7

    .line 342
    move-object v7, v14

    .line 343
    goto :goto_8

    .line 344
    :cond_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    iget-object v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 350
    .line 351
    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v12, [Lkotlinx/coroutines/flow/Flow;

    .line 354
    .line 355
    array-length v12, v12

    .line 356
    if-nez v12, :cond_c

    .line 357
    .line 358
    goto/16 :goto_d

    .line 359
    .line 360
    :cond_c
    new-array v13, v12, [Ljava/lang/Object;

    .line 361
    .line 362
    invoke-static {v7, v12, v1, v13}, Lkotlin/collections/ArraysKt___ArraysKt;->fill(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    const/4 v14, 0x6

    .line 366
    invoke-static {v12, v14, v10}, Landroidx/compose/ui/unit/DpKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 367
    .line 368
    .line 369
    move-result-object v20

    .line 370
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 371
    .line 372
    invoke-direct {v14, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 373
    .line 374
    .line 375
    move v15, v7

    .line 376
    :goto_6
    if-ge v15, v12, :cond_d

    .line 377
    .line 378
    new-instance v16, Lorg/wikipedia/WikipediaApp$logOut$2;

    .line 379
    .line 380
    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:Ljava/lang/Object;

    .line 381
    .line 382
    move-object/from16 v17, v7

    .line 383
    .line 384
    check-cast v17, [Lkotlinx/coroutines/flow/Flow;

    .line 385
    .line 386
    const/16 v21, 0x0

    .line 387
    .line 388
    move-object/from16 v19, v14

    .line 389
    .line 390
    move/from16 v18, v15

    .line 391
    .line 392
    invoke-direct/range {v16 .. v21}, Lorg/wikipedia/WikipediaApp$logOut$2;-><init>([Lkotlinx/coroutines/flow/Flow;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    .line 393
    .line 394
    .line 395
    move-object/from16 v7, v16

    .line 396
    .line 397
    invoke-static {v6, v10, v10, v7, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 398
    .line 399
    .line 400
    add-int/lit8 v15, v18, 0x1

    .line 401
    .line 402
    const/4 v7, 0x0

    .line 403
    goto :goto_6

    .line 404
    :cond_d
    new-array v6, v12, [B

    .line 405
    .line 406
    move v10, v12

    .line 407
    move-object/from16 v7, v20

    .line 408
    .line 409
    const/4 v12, 0x0

    .line 410
    :goto_7
    add-int/2addr v12, v8

    .line 411
    int-to-byte v12, v12

    .line 412
    iput-object v13, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 413
    .line 414
    iput-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 415
    .line 416
    iput-object v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 417
    .line 418
    iput v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 419
    .line 420
    iput v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 421
    .line 422
    iput v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 423
    .line 424
    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/Channel;->receiveCatching-JP2dKIU(Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v14

    .line 428
    if-ne v14, v11, :cond_e

    .line 429
    .line 430
    goto/16 :goto_c

    .line 431
    .line 432
    :cond_e
    move-object v15, v13

    .line 433
    move-object v13, v14

    .line 434
    :goto_8
    invoke-static {v13}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v13

    .line 438
    check-cast v13, Lkotlin/collections/IndexedValue;

    .line 439
    .line 440
    if-nez v13, :cond_f

    .line 441
    .line 442
    goto :goto_d

    .line 443
    :cond_f
    :goto_9
    iget v14, v13, Lkotlin/collections/IndexedValue;->index:I

    .line 444
    .line 445
    aget-object v8, v15, v14

    .line 446
    .line 447
    iget-object v13, v13, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    .line 448
    .line 449
    aput-object v13, v15, v14

    .line 450
    .line 451
    if-ne v8, v1, :cond_10

    .line 452
    .line 453
    add-int/lit8 v10, v10, -0x1

    .line 454
    .line 455
    :cond_10
    aget-byte v8, v6, v14

    .line 456
    .line 457
    if-eq v8, v12, :cond_12

    .line 458
    .line 459
    int-to-byte v8, v12

    .line 460
    aput-byte v8, v6, v14

    .line 461
    .line 462
    invoke-interface {v7}, Lkotlinx/coroutines/channels/Channel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    invoke-static {v8}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    move-object v13, v8

    .line 471
    check-cast v13, Lkotlin/collections/IndexedValue;

    .line 472
    .line 473
    if-nez v13, :cond_11

    .line 474
    .line 475
    goto :goto_a

    .line 476
    :cond_11
    const/4 v8, 0x1

    .line 477
    goto :goto_9

    .line 478
    :cond_12
    :goto_a
    if-nez v10, :cond_13

    .line 479
    .line 480
    move-object v8, v9

    .line 481
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 482
    .line 483
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    check-cast v8, [Ljava/lang/Object;

    .line 488
    .line 489
    if-nez v8, :cond_14

    .line 490
    .line 491
    iput-object v15, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 492
    .line 493
    iput-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 494
    .line 495
    iput-object v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 496
    .line 497
    iput v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 498
    .line 499
    iput v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 500
    .line 501
    const/4 v13, 0x2

    .line 502
    iput v13, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 503
    .line 504
    invoke-interface {v5, v3, v15, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v8

    .line 508
    if-ne v8, v11, :cond_13

    .line 509
    .line 510
    goto :goto_c

    .line 511
    :cond_13
    :goto_b
    move-object v13, v15

    .line 512
    const/4 v8, 0x1

    .line 513
    goto :goto_7

    .line 514
    :cond_14
    const/4 v13, 0x2

    .line 515
    const/16 v14, 0xe

    .line 516
    .line 517
    const/4 v13, 0x0

    .line 518
    invoke-static {v15, v8, v13, v13, v14}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 519
    .line 520
    .line 521
    iput-object v15, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    .line 522
    .line 523
    iput-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    .line 524
    .line 525
    iput-object v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    .line 526
    .line 527
    iput v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    .line 528
    .line 529
    iput v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    .line 530
    .line 531
    iput v4, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    .line 532
    .line 533
    invoke-interface {v5, v3, v8, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v8

    .line 537
    if-ne v8, v11, :cond_13

    .line 538
    .line 539
    :goto_c
    move-object v2, v11

    .line 540
    :goto_d
    return-object v2

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
