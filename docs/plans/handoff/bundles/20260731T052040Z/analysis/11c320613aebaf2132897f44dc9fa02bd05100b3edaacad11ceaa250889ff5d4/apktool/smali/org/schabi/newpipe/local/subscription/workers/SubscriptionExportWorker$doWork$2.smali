.class public final Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;Landroid/net/Uri;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->$uri:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->$subscriptions:Ljava/util/List;

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
    .locals 2

    .line 1
    new-instance p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->$subscriptions:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, p0, p2}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;Landroid/net/Uri;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->label:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->$uri:Landroid/net/Uri;

    .line 18
    .line 19
    const-string/jumbo v2, "wt"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;->$subscriptions:Ljava/util/List;

    .line 29
    .line 30
    :try_start_0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/workers/ImportExportJsonHelper;->writeTo(Ljava/util/List;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_0
    return-object v1

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method
