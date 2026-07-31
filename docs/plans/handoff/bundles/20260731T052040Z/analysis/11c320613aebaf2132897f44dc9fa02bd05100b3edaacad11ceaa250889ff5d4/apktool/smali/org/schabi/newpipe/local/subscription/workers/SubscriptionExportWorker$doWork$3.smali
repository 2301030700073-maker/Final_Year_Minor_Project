.class public final Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field label:I

.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;

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
    .locals 0

    .line 1
    new-instance p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;->label:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 11
    .line 12
    const p1, 0x7f1301ac

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method
