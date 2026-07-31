.class public final Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $index:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $title:Ljava/lang/String;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->$title:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->$title:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0, p2}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v2, v0

    .line 4
    check-cast v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

    .line 5
    .line 6
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->label:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;

    .line 14
    .line 15
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 16
    .line 17
    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    .line 18
    .line 19
    iget-object v5, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;->$title:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    .line 26
    .line 27
    invoke-direct {p0, v1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method
