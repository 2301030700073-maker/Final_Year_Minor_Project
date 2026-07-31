.class public final Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $list:Lorg/wikipedia/readinglist/database/ReadingList;

.field public final synthetic $pages:Ljava/util/List;

.field public final synthetic $queueForSync:Z

.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p6, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->this$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$list:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$pages:Ljava/util/List;

    .line 8
    .line 9
    iput-boolean p4, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$queueForSync:Z

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    move-object v7, p1

    .line 6
    check-cast v7, Lkotlin/coroutines/Continuation;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance v2, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;

    .line 12
    .line 13
    iget-boolean v6, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$queueForSync:Z

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    iget-object v3, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->this$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 17
    .line 18
    iget-object v4, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$list:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 19
    .line 20
    iget-object v5, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$pages:Ljava/util/List;

    .line 21
    .line 22
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/Continuation;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    new-instance v2, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;

    .line 31
    .line 32
    iget-boolean v6, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$queueForSync:Z

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    iget-object v3, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->this$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 36
    .line 37
    iget-object v4, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$list:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 38
    .line 39
    iget-object v5, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$pages:Ljava/util/List;

    .line 40
    .line 41
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/Continuation;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-boolean v2, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$queueForSync:Z

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$pages:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->$list:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->this$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v7, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 21
    .line 22
    iget v9, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->label:I

    .line 23
    .line 24
    if-eqz v9, :cond_1

    .line 25
    .line 26
    if-ne v9, v8, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v1, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput v8, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->label:I

    .line 41
    .line 42
    invoke-static {v5, v4, v3, v2, p0}, Lorg/wikipedia/dataclient/Service$-CC;->markPagesForDeletion$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-ne p0, v0, :cond_2

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    :cond_2
    :goto_0
    return-object v1

    .line 50
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 51
    .line 52
    iget v9, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->label:I

    .line 53
    .line 54
    if-eqz v9, :cond_4

    .line 55
    .line 56
    if-ne v9, v8, :cond_3

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v1, v6

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iput v8, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$addPagesToList$2;->label:I

    .line 71
    .line 72
    invoke-static {v5, v4, v3, v2, p0}, Lorg/wikipedia/dataclient/Service$-CC;->addPagesToList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-ne p0, v0, :cond_5

    .line 77
    .line 78
    move-object v1, v0

    .line 79
    :cond_5
    :goto_1
    return-object v1

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
