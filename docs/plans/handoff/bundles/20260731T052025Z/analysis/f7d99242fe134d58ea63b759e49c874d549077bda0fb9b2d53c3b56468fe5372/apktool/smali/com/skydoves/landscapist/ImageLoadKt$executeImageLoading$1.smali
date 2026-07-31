.class public final Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $executeImageRequest:Lkotlin/jvm/functions/Function1;

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/flow/FlowCollector;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->$executeImageRequest:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->$executeImageRequest:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 4
    .line 5
    iget v1, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    if-eq v1, v4, :cond_2

    .line 16
    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v5

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/skydoves/landscapist/ImageLoadState$Loading;->INSTANCE:Lcom/skydoves/landscapist/ImageLoadState$Loading;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    iput v4, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->label:I

    .line 49
    .line 50
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v6, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    :goto_0
    iput-object v5, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 60
    .line 61
    iput v3, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->label:I

    .line 62
    .line 63
    iget-object p1, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->$executeImageRequest:Lkotlin/jvm/functions/Function1;

    .line 64
    .line 65
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v6, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    :goto_1
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 73
    .line 74
    iput-object v5, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object v5, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 77
    .line 78
    iput v2, p0, Lcom/skydoves/landscapist/ImageLoadKt$executeImageLoading$1;->label:I

    .line 79
    .line 80
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    if-ne p0, v6, :cond_6

    .line 85
    .line 86
    :goto_2
    return-object v6

    .line 87
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 88
    .line 89
    return-object p0
.end method
