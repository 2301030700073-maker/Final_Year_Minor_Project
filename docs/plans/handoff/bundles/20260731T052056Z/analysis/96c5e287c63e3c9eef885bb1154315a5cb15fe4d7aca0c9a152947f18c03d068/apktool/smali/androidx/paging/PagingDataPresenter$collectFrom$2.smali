.class public final Landroidx/paging/PagingDataPresenter$collectFrom$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $pagingData:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->$pagingData:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->$pagingData:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 15
    .line 16
    check-cast p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 17
    .line 18
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 19
    .line 20
    const/16 v3, 0x9

    .line 21
    .line 22
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 31
    .line 32
    check-cast p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 33
    .line 34
    check-cast v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    const/16 v3, 0x8

    .line 37
    .line 38
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_1
    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 47
    .line 48
    check-cast p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 49
    .line 50
    check-cast v2, Lorg/wikipedia/history/HistoryEntry;

    .line 51
    .line 52
    const/4 v3, 0x7

    .line 53
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_2
    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 62
    .line 63
    check-cast p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 64
    .line 65
    check-cast v2, Ljava/util/List;

    .line 66
    .line 67
    const/4 v3, 0x6

    .line 68
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :pswitch_3
    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 77
    .line 78
    check-cast p0, Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 79
    .line 80
    check-cast v2, Ljava/util/List;

    .line 81
    .line 82
    const/4 v3, 0x5

    .line 83
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :pswitch_4
    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 92
    .line 93
    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 94
    .line 95
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 96
    .line 97
    const/4 v3, 0x4

    .line 98
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :pswitch_5
    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 107
    .line 108
    check-cast p0, Landroidx/room/RoomDatabase;

    .line 109
    .line 110
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 111
    .line 112
    const/4 v3, 0x3

    .line 113
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :pswitch_6
    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 122
    .line 123
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    .line 124
    .line 125
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider$SessionImpl;

    .line 126
    .line 127
    const/4 v3, 0x2

    .line 128
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_7
    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 137
    .line 138
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 139
    .line 140
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 141
    .line 142
    const/4 v3, 0x1

    .line 143
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0

    .line 151
    :pswitch_8
    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 152
    .line 153
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 154
    .line 155
    check-cast v2, Landroidx/paging/PagingData;

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v4, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->$pagingData:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 20
    .line 21
    iget v3, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    if-ne v3, v7, :cond_0

    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    move-object/from16 v0, p1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object v0, v8

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object v10, v5

    .line 42
    check-cast v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 43
    .line 44
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 45
    .line 46
    iput v7, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 47
    .line 48
    iget-object v11, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 49
    .line 50
    iget-object v12, v11, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v14

    .line 60
    iget-object v3, v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 61
    .line 62
    new-instance v9, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;

    .line 63
    .line 64
    const/4 v15, 0x0

    .line 65
    invoke-direct/range {v9 .. v15}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda12;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v3, v7, v2, v9, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-ne v0, v1, :cond_2

    .line 73
    .line 74
    move-object v0, v1

    .line 75
    :cond_2
    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 77
    .line 78
    iget v2, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 79
    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    if-ne v2, v7, :cond_3

    .line 83
    .line 84
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move-object v3, v8

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    check-cast v5, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 97
    .line 98
    check-cast v4, Ljava/util/ArrayList;

    .line 99
    .line 100
    iput v7, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 101
    .line 102
    invoke-static {v5, v4, v0}, Lorg/wikipedia/dataclient/Service$-CC;->deleteObjectsForPageId$suspendImpl(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-ne v0, v1, :cond_5

    .line 107
    .line 108
    move-object v3, v1

    .line 109
    :cond_5
    :goto_1
    return-object v3

    .line 110
    :pswitch_1
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 111
    .line 112
    iget v2, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 113
    .line 114
    if-eqz v2, :cond_7

    .line 115
    .line 116
    if-ne v2, v7, :cond_6

    .line 117
    .line 118
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    move-object/from16 v0, p1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    move-object v0, v8

    .line 128
    goto :goto_2

    .line 129
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    check-cast v5, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 133
    .line 134
    check-cast v4, Lorg/wikipedia/history/HistoryEntry;

    .line 135
    .line 136
    iput v7, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 137
    .line 138
    invoke-static {v5, v4, v0}, Lorg/wikipedia/dataclient/Service$-CC;->upsert$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryDao_Impl;Lorg/wikipedia/history/HistoryEntry;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-ne v0, v1, :cond_8

    .line 143
    .line 144
    move-object v0, v1

    .line 145
    :cond_8
    :goto_2
    return-object v0

    .line 146
    :pswitch_2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 147
    .line 148
    iget v2, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 149
    .line 150
    if-eqz v2, :cond_a

    .line 151
    .line 152
    if-ne v2, v7, :cond_9

    .line 153
    .line 154
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_9
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object v3, v8

    .line 162
    goto :goto_3

    .line 163
    :cond_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    check-cast v5, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 167
    .line 168
    check-cast v4, Ljava/util/List;

    .line 169
    .line 170
    iput v7, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 171
    .line 172
    invoke-static {v5, v4, v0}, Lorg/wikipedia/dataclient/Service$-CC;->insert$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryDao_Impl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-ne v0, v1, :cond_b

    .line 177
    .line 178
    move-object v3, v1

    .line 179
    :cond_b
    :goto_3
    return-object v3

    .line 180
    :pswitch_3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 181
    .line 182
    iget v2, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 183
    .line 184
    if-eqz v2, :cond_d

    .line 185
    .line 186
    if-ne v2, v7, :cond_c

    .line 187
    .line 188
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_c
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    move-object v3, v8

    .line 196
    goto :goto_4

    .line 197
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    check-cast v5, Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 201
    .line 202
    check-cast v4, Ljava/util/List;

    .line 203
    .line 204
    iput v7, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 205
    .line 206
    invoke-static {v5, v4, v0}, Lcoil3/size/ViewSizeResolver$-CC;->upsertAll$suspendImpl(Lorg/wikipedia/categories/db/CategoryDao_Impl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-ne v0, v1, :cond_e

    .line 211
    .line 212
    move-object v3, v1

    .line 213
    :cond_e
    :goto_4
    return-object v3

    .line 214
    :pswitch_4
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 215
    .line 216
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 217
    .line 218
    iget v2, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 219
    .line 220
    if-eqz v2, :cond_10

    .line 221
    .line 222
    if-ne v2, v7, :cond_f

    .line 223
    .line 224
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_f
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    move-object v3, v8

    .line 232
    goto :goto_6

    .line 233
    :cond_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    .line 237
    .line 238
    sget-object v2, Lkotlinx/coroutines/flow/internal/CombineKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .line 239
    .line 240
    iget-object v6, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 241
    .line 242
    if-ne v6, v2, :cond_11

    .line 243
    .line 244
    move-object v6, v8

    .line 245
    :cond_11
    iput v7, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 246
    .line 247
    invoke-interface {v5, v6, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-ne v0, v1, :cond_12

    .line 252
    .line 253
    move-object v3, v1

    .line 254
    goto :goto_6

    .line 255
    :cond_12
    :goto_5
    iput-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 256
    .line 257
    :goto_6
    return-object v3

    .line 258
    :pswitch_5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 259
    .line 260
    iget v3, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 261
    .line 262
    if-eqz v3, :cond_14

    .line 263
    .line 264
    if-ne v3, v7, :cond_13

    .line 265
    .line 266
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    move-object/from16 v0, p1

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_13
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    move-object v0, v8

    .line 276
    goto :goto_7

    .line 277
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    check-cast v5, Landroidx/room/RoomDatabase;

    .line 281
    .line 282
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 283
    .line 284
    new-instance v3, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1;

    .line 285
    .line 286
    invoke-direct {v3, v5, v8, v4, v7}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;I)V

    .line 287
    .line 288
    .line 289
    iput v7, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 290
    .line 291
    invoke-virtual {v5, v2, v3, v0}, Landroidx/room/RoomDatabase;->useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-ne v0, v1, :cond_15

    .line 296
    .line 297
    move-object v0, v1

    .line 298
    :cond_15
    :goto_7
    return-object v0

    .line 299
    :pswitch_6
    check-cast v4, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider$SessionImpl;

    .line 300
    .line 301
    check-cast v5, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    .line 302
    .line 303
    iget-object v1, v5, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;->session$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 304
    .line 305
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 306
    .line 307
    iget v5, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 308
    .line 309
    if-eqz v5, :cond_17

    .line 310
    .line 311
    if-ne v5, v7, :cond_16

    .line 312
    .line 313
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .line 315
    .line 316
    goto :goto_9

    .line 317
    :catchall_0
    move-exception v0

    .line 318
    goto :goto_b

    .line 319
    :cond_16
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    move-object v3, v8

    .line 323
    goto :goto_a

    .line 324
    :cond_17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    :try_start_1
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    iput v7, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 331
    .line 332
    iget-object v4, v4, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider$SessionImpl;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 333
    .line 334
    invoke-virtual {v4, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    if-ne v0, v2, :cond_18

    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_18
    move-object v0, v3

    .line 342
    :goto_8
    if-ne v0, v2, :cond_19

    .line 343
    .line 344
    move-object v3, v2

    .line 345
    goto :goto_a

    .line 346
    :cond_19
    :goto_9
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    :goto_a
    return-object v3

    .line 350
    :goto_b
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    throw v0

    .line 354
    :pswitch_7
    check-cast v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 355
    .line 356
    iget-object v1, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->snapshotStateObserver:Landroidx/preference/PreferenceManager;

    .line 357
    .line 358
    iget-object v9, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->view:Landroid/view/View;

    .line 359
    .line 360
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 361
    .line 362
    iget v11, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 363
    .line 364
    const/4 v12, 0x3

    .line 365
    if-eqz v11, :cond_1b

    .line 366
    .line 367
    if-ne v11, v7, :cond_1a

    .line 368
    .line 369
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 370
    .line 371
    .line 372
    goto/16 :goto_10

    .line 373
    .line 374
    :catchall_1
    move-exception v0

    .line 375
    goto/16 :goto_14

    .line 376
    .line 377
    :cond_1a
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    move-object v3, v8

    .line 381
    goto/16 :goto_13

    .line 382
    .line 383
    :cond_1b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    new-instance v6, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;

    .line 387
    .line 388
    invoke-direct {v6}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;-><init>()V

    .line 389
    .line 390
    .line 391
    check-cast v4, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 392
    .line 393
    new-instance v11, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;

    .line 394
    .line 395
    new-instance v13, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;

    .line 396
    .line 397
    invoke-direct {v13, v5, v4, v2}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;I)V

    .line 398
    .line 399
    .line 400
    new-instance v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;

    .line 401
    .line 402
    invoke-direct {v2, v5, v4, v7}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;I)V

    .line 403
    .line 404
    .line 405
    invoke-direct {v11, v6, v13, v2, v9}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;Landroid/view/View;)V

    .line 406
    .line 407
    .line 408
    iget-object v2, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->callbackInjector:Lkotlin/jvm/functions/Function1;

    .line 409
    .line 410
    if-eqz v2, :cond_1d

    .line 411
    .line 412
    invoke-interface {v2, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;

    .line 417
    .line 418
    if-nez v2, :cond_1c

    .line 419
    .line 420
    goto :goto_c

    .line 421
    :cond_1c
    move-object v11, v2

    .line 422
    :cond_1d
    :goto_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-virtual {v9}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    if-eqz v4, :cond_1e

    .line 431
    .line 432
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    goto :goto_d

    .line 437
    :cond_1e
    move-object v4, v8

    .line 438
    :goto_d
    if-eq v2, v4, :cond_20

    .line 439
    .line 440
    iget-object v2, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->startActionModeRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 441
    .line 442
    if-nez v2, :cond_1f

    .line 443
    .line 444
    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 445
    .line 446
    invoke-direct {v2, v5, v11, v6, v7}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 447
    .line 448
    .line 449
    iput-object v2, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->startActionModeRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 450
    .line 451
    :cond_1f
    invoke-virtual {v9, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 452
    .line 453
    .line 454
    goto :goto_e

    .line 455
    :cond_20
    new-instance v2, Landroidx/compose/foundation/text/contextmenu/internal/FloatingTextActionModeCallback;

    .line 456
    .line 457
    invoke-direct {v2, v11}, Landroidx/compose/foundation/text/contextmenu/internal/FloatingTextActionModeCallback;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v9, v2, v7}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    if-nez v2, :cond_21

    .line 465
    .line 466
    goto :goto_13

    .line 467
    :cond_21
    iput-object v2, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 468
    .line 469
    :goto_e
    :try_start_3
    iput v7, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 470
    .line 471
    iget-object v2, v6, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 472
    .line 473
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 477
    if-ne v0, v10, :cond_22

    .line 478
    .line 479
    goto :goto_f

    .line 480
    :cond_22
    move-object v0, v3

    .line 481
    :goto_f
    if-ne v0, v10, :cond_23

    .line 482
    .line 483
    move-object v3, v10

    .line 484
    goto :goto_13

    .line 485
    :cond_23
    :goto_10
    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->clear()V

    .line 486
    .line 487
    .line 488
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v9}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    if-eqz v1, :cond_24

    .line 497
    .line 498
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    goto :goto_11

    .line 503
    :cond_24
    move-object v1, v8

    .line 504
    :goto_11
    if-eq v0, v1, :cond_26

    .line 505
    .line 506
    iget-object v0, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->finishActionModeRunnable:Ljava/lang/Runnable;

    .line 507
    .line 508
    if-nez v0, :cond_25

    .line 509
    .line 510
    new-instance v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;

    .line 511
    .line 512
    invoke-direct {v0, v12, v5}, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    iput-object v0, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->finishActionModeRunnable:Ljava/lang/Runnable;

    .line 516
    .line 517
    :cond_25
    invoke-virtual {v9, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 518
    .line 519
    .line 520
    goto :goto_12

    .line 521
    :cond_26
    iget-object v0, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 522
    .line 523
    if-eqz v0, :cond_27

    .line 524
    .line 525
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 526
    .line 527
    .line 528
    :cond_27
    :goto_12
    iget-object v0, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->startActionModeRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 529
    .line 530
    if-eqz v0, :cond_28

    .line 531
    .line 532
    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 533
    .line 534
    .line 535
    :cond_28
    iput-object v8, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 536
    .line 537
    :goto_13
    return-object v3

    .line 538
    :goto_14
    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->clear()V

    .line 539
    .line 540
    .line 541
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-virtual {v9}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    if-eqz v2, :cond_29

    .line 550
    .line 551
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    goto :goto_15

    .line 556
    :cond_29
    move-object v2, v8

    .line 557
    :goto_15
    if-eq v1, v2, :cond_2b

    .line 558
    .line 559
    iget-object v1, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->finishActionModeRunnable:Ljava/lang/Runnable;

    .line 560
    .line 561
    if-nez v1, :cond_2a

    .line 562
    .line 563
    new-instance v1, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;

    .line 564
    .line 565
    invoke-direct {v1, v12, v5}, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    iput-object v1, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->finishActionModeRunnable:Ljava/lang/Runnable;

    .line 569
    .line 570
    :cond_2a
    invoke-virtual {v9, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 571
    .line 572
    .line 573
    goto :goto_16

    .line 574
    :cond_2b
    iget-object v1, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 575
    .line 576
    if-eqz v1, :cond_2c

    .line 577
    .line 578
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 579
    .line 580
    .line 581
    :cond_2c
    :goto_16
    iget-object v1, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->startActionModeRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 582
    .line 583
    if-eqz v1, :cond_2d

    .line 584
    .line 585
    invoke-virtual {v9, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 586
    .line 587
    .line 588
    :cond_2d
    iput-object v8, v5, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 589
    .line 590
    throw v0

    .line 591
    :pswitch_8
    check-cast v4, Landroidx/paging/PagingData;

    .line 592
    .line 593
    check-cast v5, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 594
    .line 595
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 596
    .line 597
    iget v2, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 598
    .line 599
    if-eqz v2, :cond_2f

    .line 600
    .line 601
    if-ne v2, v7, :cond_2e

    .line 602
    .line 603
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    goto :goto_17

    .line 607
    :cond_2e
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    move-object v3, v8

    .line 611
    goto :goto_17

    .line 612
    :cond_2f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    iget-object v2, v4, Landroidx/paging/PagingData;->uiReceiver:Landroidx/paging/UiReceiver;

    .line 616
    .line 617
    iget-object v6, v5, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->uiReceiver:Landroidx/paging/UiReceiver;

    .line 618
    .line 619
    iput-object v2, v5, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->uiReceiver:Landroidx/paging/UiReceiver;

    .line 620
    .line 621
    instance-of v8, v6, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;

    .line 622
    .line 623
    if-eqz v8, :cond_31

    .line 624
    .line 625
    check-cast v6, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;

    .line 626
    .line 627
    iget-boolean v8, v6, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->shouldRetry:Z

    .line 628
    .line 629
    if-eqz v8, :cond_30

    .line 630
    .line 631
    invoke-interface {v2}, Landroidx/paging/UiReceiver;->retry()V

    .line 632
    .line 633
    .line 634
    :cond_30
    iget-boolean v6, v6, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;->shouldRefresh:Z

    .line 635
    .line 636
    if-eqz v6, :cond_31

    .line 637
    .line 638
    invoke-interface {v2}, Landroidx/paging/UiReceiver;->refresh()V

    .line 639
    .line 640
    .line 641
    :cond_31
    iget-object v2, v4, Landroidx/paging/PagingData;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 642
    .line 643
    new-instance v6, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 644
    .line 645
    const/16 v8, 0xa

    .line 646
    .line 647
    invoke-direct {v6, v8, v5, v4}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 648
    .line 649
    .line 650
    iput v7, v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;->label:I

    .line 651
    .line 652
    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    if-ne v0, v1, :cond_32

    .line 657
    .line 658
    move-object v3, v1

    .line 659
    :cond_32
    :goto_17
    return-object v3

    .line 660
    nop

    .line 661
    :pswitch_data_0
    .packed-switch 0x0
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
