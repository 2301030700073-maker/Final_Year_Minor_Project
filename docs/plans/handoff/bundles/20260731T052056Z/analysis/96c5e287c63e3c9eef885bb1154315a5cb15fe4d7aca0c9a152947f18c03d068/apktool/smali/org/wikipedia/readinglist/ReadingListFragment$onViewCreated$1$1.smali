.class public final Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 21
    .line 22
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    instance-of p1, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateReadingListData()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    instance-of p1, p0, Lorg/wikipedia/events/PageDownloadEvent;

    .line 25
    .line 26
    if-eqz p1, :cond_4

    .line 27
    .line 28
    check-cast p0, Lorg/wikipedia/events/PageDownloadEvent;

    .line 29
    .line 30
    iget-object p0, p0, Lorg/wikipedia/events/PageDownloadEvent;->page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 31
    .line 32
    iget-object p1, v1, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    instance-of v5, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 50
    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 54
    .line 55
    iget-wide v4, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 56
    .line 57
    iget-wide v6, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 58
    .line 59
    cmp-long v4, v4, v6

    .line 60
    .line 61
    if-nez v4, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, -0x1

    .line 68
    :goto_1
    if-gez v0, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    iget-object p1, v1, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    instance-of v4, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 78
    .line 79
    if-eqz v4, :cond_4

    .line 80
    .line 81
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 82
    .line 83
    iget p0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    .line 84
    .line 85
    iput p0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    .line 86
    .line 87
    iget-object p0, v1, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 88
    .line 89
    add-int/2addr v0, v2

    .line 90
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_2
    return-object v3

    .line 94
    :pswitch_0
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 95
    .line 96
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;

    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-direct {p1, v1, v0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lkotlin/coroutines/Continuation;I)V

    .line 103
    .line 104
    .line 105
    const/4 v2, 0x3

    .line 106
    invoke-static {p0, v0, v0, p1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 107
    .line 108
    .line 109
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;

    .line 110
    .line 111
    const/4 v4, 0x2

    .line 112
    invoke-direct {p1, v1, v0, v4}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lkotlin/coroutines/Continuation;I)V

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v0, v0, p1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 116
    .line 117
    .line 118
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;

    .line 119
    .line 120
    invoke-direct {p1, v1, v0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lkotlin/coroutines/Continuation;I)V

    .line 121
    .line 122
    .line 123
    invoke-static {p0, v0, v0, p1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 124
    .line 125
    .line 126
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;

    .line 127
    .line 128
    const/4 v4, 0x4

    .line 129
    invoke-direct {p1, v1, v0, v4}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lkotlin/coroutines/Continuation;I)V

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v0, v0, p1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 133
    .line 134
    .line 135
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;

    .line 136
    .line 137
    const/4 v4, 0x5

    .line 138
    invoke-direct {p1, v1, v0, v4}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lkotlin/coroutines/Continuation;I)V

    .line 139
    .line 140
    .line 141
    invoke-static {p0, v0, v0, p1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 142
    .line 143
    .line 144
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;

    .line 145
    .line 146
    const/4 v4, 0x6

    .line 147
    invoke-direct {p1, v1, v0, v4}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lkotlin/coroutines/Continuation;I)V

    .line 148
    .line 149
    .line 150
    invoke-static {p0, v0, v0, p1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 151
    .line 152
    .line 153
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;

    .line 154
    .line 155
    const/4 v4, 0x7

    .line 156
    invoke-direct {p1, v1, v0, v4}, Lorg/wikipedia/readinglist/ReadingListFragment$onViewCreated$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lkotlin/coroutines/Continuation;I)V

    .line 157
    .line 158
    .line 159
    invoke-static {p0, v0, v0, p1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 160
    .line 161
    .line 162
    return-object v3

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
