.class public final Lorg/wikipedia/savedpages/SavedPageSyncService;
.super Landroidx/work/CoroutineWorker;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/savedpages/SavedPageSyncService;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "MultiSelectCallback",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->instance:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    .line 11
    .line 12
    sget-object p1, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->instance:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    .line 13
    .line 14
    iput-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    .line 15
    .line 16
    return-void
.end method

.method public static makeUrlRequest(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)Lokhttp3/Request$Builder;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/Request$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p0}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 20
    .line 21
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget-object p1, p2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/WikipediaApp;->getAcceptLanguage(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p1, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lokhttp3/Headers$Builder;

    .line 34
    .line 35
    const-string v1, "Accept-Language"

    .line 36
    .line 37
    invoke-virtual {p1, v1, p0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lokhttp3/Headers$Builder;

    .line 43
    .line 44
    const-string p1, "X-Offline-Save"

    .line 45
    .line 46
    const-string v1, "save"

    .line 47
    .line 48
    invoke-virtual {p0, p1, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 52
    .line 53
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object p1, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lokhttp3/Headers$Builder;

    .line 61
    .line 62
    const-string v1, "X-Offline-Lang"

    .line 63
    .line 64
    invoke-virtual {p1, v1, p0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lorg/wikipedia/util/UriUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget-object p1, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Lokhttp3/Headers$Builder;

    .line 78
    .line 79
    const-string p2, "X-Offline-Title"

    .line 80
    .line 81
    invoke-virtual {p1, p2, p0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v0
.end method

.method public static reqSaveUrl(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1, p2, p0}, Lorg/wikipedia/savedpages/SavedPageSyncService;->makeUrlRequest(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)Lokhttp3/Request$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lokhttp3/Request;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 11
    .line 12
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 13
    .line 14
    new-instance p2, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveUrl$2;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p2, p1, v0, v1}, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveUrl$2;-><init>(Lokhttp3/Request;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p2, p3}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 26
    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public final doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$1;

    .line 21
    .line 22
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$1;-><init>(Lorg/wikipedia/savedpages/SavedPageSyncService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 53
    .line 54
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 55
    .line 56
    new-instance v2, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;

    .line 57
    .line 58
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;-><init>(Lorg/wikipedia/savedpages/SavedPageSyncService;Lkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    iput v4, v0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$1;->label:I

    .line 62
    .line 63
    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v1, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    return-object p1
.end method

.method public final savePageFor(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, p0, v2}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/savedpages/SavedPageSyncService;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
