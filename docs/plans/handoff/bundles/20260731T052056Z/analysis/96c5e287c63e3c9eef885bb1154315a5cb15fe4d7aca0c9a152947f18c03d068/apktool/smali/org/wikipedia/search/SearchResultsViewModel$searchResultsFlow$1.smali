.class public final Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public synthetic L$0:Ljava/lang/String;

.field public synthetic L$1:Ljava/lang/String;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    check-cast p4, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    new-instance p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$1;

    .line 13
    .line 14
    const/4 p3, 0x4

    .line 15
    invoke-direct {p0, p3, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$1;->L$0:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$1;->L$1:Ljava/lang/String;

    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$1;->L$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$1;->L$1:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lkotlin/Pair;

    .line 9
    .line 10
    invoke-direct {p1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method
