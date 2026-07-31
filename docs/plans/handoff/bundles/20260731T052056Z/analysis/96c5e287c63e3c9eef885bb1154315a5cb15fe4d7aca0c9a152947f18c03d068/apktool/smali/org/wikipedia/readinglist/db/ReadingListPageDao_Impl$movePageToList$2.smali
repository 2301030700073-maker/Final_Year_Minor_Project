.class public final Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $destList:Lorg/wikipedia/readinglist/database/ReadingList;

.field public final synthetic $r8$classId:I

.field public final synthetic $sourceList:Lorg/wikipedia/readinglist/database/ReadingList;

.field public final synthetic $title:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p6, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->this$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$sourceList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$destList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$title:Ljava/lang/Object;

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
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$title:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object v8, p1

    .line 11
    check-cast v8, Lkotlin/coroutines/Continuation;

    .line 12
    .line 13
    new-instance v3, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;

    .line 14
    .line 15
    move-object v7, v2

    .line 16
    check-cast v7, Ljava/util/List;

    .line 17
    .line 18
    const/4 v9, 0x1

    .line 19
    iget-object v4, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->this$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 20
    .line 21
    iget-object v5, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$sourceList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 22
    .line 23
    iget-object v6, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$destList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 24
    .line 25
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_0
    move-object v7, p1

    .line 34
    check-cast v7, Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    move-object p1, v2

    .line 37
    new-instance v2, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;

    .line 38
    .line 39
    move-object v6, p1

    .line 40
    check-cast v6, Lorg/wikipedia/page/PageTitle;

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    iget-object v3, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->this$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 44
    .line 45
    iget-object v4, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$sourceList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 46
    .line 47
    iget-object v5, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$destList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 48
    .line 49
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$title:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$destList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->$sourceList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->this$0:Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    iget v8, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->label:I

    .line 21
    .line 22
    if-eqz v8, :cond_1

    .line 23
    .line 24
    if-ne v8, v7, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object p1, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    check-cast v1, Ljava/util/List;

    .line 39
    .line 40
    iput v7, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->label:I

    .line 41
    .line 42
    invoke-static {v4, v3, v2, v1, p0}, Lorg/wikipedia/dataclient/Service$-CC;->movePagesToListAndDeleteSourcePages$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    .line 48
    move-object p1, v0

    .line 49
    :cond_2
    :goto_0
    return-object p1

    .line 50
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 51
    .line 52
    iget v8, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->label:I

    .line 53
    .line 54
    if-eqz v8, :cond_4

    .line 55
    .line 56
    if-ne v8, v7, :cond_3

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 70
    .line 71
    iput v7, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$movePageToList$2;->label:I

    .line 72
    .line 73
    invoke-static {v4, v3, v2, v1, p0}, Lorg/wikipedia/dataclient/Service$-CC;->movePageToList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-ne p0, v0, :cond_5

    .line 78
    .line 79
    move-object v5, v0

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    :goto_1
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    :goto_2
    return-object v5

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
