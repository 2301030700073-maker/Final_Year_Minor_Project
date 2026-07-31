.class public final Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $entry:Lorg/wikipedia/history/HistoryEntry;

.field public final synthetic $timeSpent:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;


# direct methods
.method public constructor <init>(Lorg/wikipedia/pageimages/db/PageImageDao_Impl;Lorg/wikipedia/history/HistoryEntry;ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->this$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->$entry:Lorg/wikipedia/history/HistoryEntry;

    .line 4
    .line 5
    iput p3, p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->$timeSpent:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    new-instance v0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->$entry:Lorg/wikipedia/history/HistoryEntry;

    .line 6
    .line 7
    iget v2, p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->$timeSpent:I

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->this$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2, p1}, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;-><init>(Lorg/wikipedia/pageimages/db/PageImageDao_Impl;Lorg/wikipedia/history/HistoryEntry;ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->label:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput v2, p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->label:I

    .line 25
    .line 26
    iget-object p1, p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->this$0:Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 27
    .line 28
    iget-object v1, p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->$entry:Lorg/wikipedia/history/HistoryEntry;

    .line 29
    .line 30
    iget v2, p0, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;->$timeSpent:I

    .line 31
    .line 32
    invoke-static {p1, v1, v2, p0}, Lorg/wikipedia/dataclient/Service$-CC;->upsertForTimeSpent$suspendImpl(Lorg/wikipedia/pageimages/db/PageImageDao_Impl;Lorg/wikipedia/history/HistoryEntry;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-ne p0, v0, :cond_2

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method
