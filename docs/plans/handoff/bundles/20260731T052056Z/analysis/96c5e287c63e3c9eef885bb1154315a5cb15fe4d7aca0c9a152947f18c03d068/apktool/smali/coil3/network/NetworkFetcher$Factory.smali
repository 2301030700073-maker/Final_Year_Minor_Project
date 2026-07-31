.class public final Lcoil3/network/NetworkFetcher$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/fetch/Fetcher$Factory;


# instance fields
.field public final cacheStrategyLazy:Lkotlin/SynchronizedLazyImpl;

.field public final concurrentRequestStrategyLazy:Lkotlin/SynchronizedLazyImpl;

.field public final connectivityCheckerLazy:Lcoil3/svg/internal/AndroidSvg;

.field public final networkClientLazy:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 1
    new-instance v0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcoil3/network/NetworkFetcher$Factory$2;->INSTANCE:Lcoil3/network/NetworkFetcher$Factory$2;

    .line 8
    .line 9
    new-instance v2, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-direct {v2, v3}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lkotlin/SynchronizedLazyImpl;

    .line 19
    .line 20
    invoke-direct {v3, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    iput-object v3, p0, Lcoil3/network/NetworkFetcher$Factory;->networkClientLazy:Lkotlin/SynchronizedLazyImpl;

    .line 24
    .line 25
    invoke-static {v0}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcoil3/network/NetworkFetcher$Factory;->cacheStrategyLazy:Lkotlin/SynchronizedLazyImpl;

    .line 30
    .line 31
    new-instance p1, Lcoil3/svg/internal/AndroidSvg;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p1, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 37
    .line 38
    sget-object v0, Lcoil3/network/internal/UNINITIALIZED;->INSTANCE:Lcoil3/network/internal/UNINITIALIZED;

    .line 39
    .line 40
    iput-object v0, p1, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object p1, p0, Lcoil3/network/NetworkFetcher$Factory;->connectivityCheckerLazy:Lcoil3/svg/internal/AndroidSvg;

    .line 43
    .line 44
    invoke-static {v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcoil3/network/NetworkFetcher$Factory;->concurrentRequestStrategyLazy:Lkotlin/SynchronizedLazyImpl;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/RealImageLoader;)Lcoil3/fetch/Fetcher;
    .locals 10

    .line 1
    check-cast p1, Lcoil3/Uri;

    .line 2
    .line 3
    iget-object v0, p1, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "http"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p1, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "https"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-object v1

    .line 26
    :cond_1
    :goto_0
    new-instance v2, Lcoil3/network/NetworkFetcher;

    .line 27
    .line 28
    iget-object v3, p1, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v5, p0, Lcoil3/network/NetworkFetcher$Factory;->networkClientLazy:Lkotlin/SynchronizedLazyImpl;

    .line 31
    .line 32
    new-instance p1, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v0, 0x10

    .line 35
    .line 36
    invoke-direct {p1, v0, p3}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Lkotlin/SynchronizedLazyImpl;

    .line 40
    .line 41
    invoke-direct {v6, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iget-object v7, p0, Lcoil3/network/NetworkFetcher$Factory;->cacheStrategyLazy:Lkotlin/SynchronizedLazyImpl;

    .line 45
    .line 46
    iget-object p1, p0, Lcoil3/network/NetworkFetcher$Factory;->connectivityCheckerLazy:Lcoil3/svg/internal/AndroidSvg;

    .line 47
    .line 48
    iget-object p3, p2, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v0, p1, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 51
    .line 52
    sget-object v4, Lcoil3/network/internal/UNINITIALIZED;->INSTANCE:Lcoil3/network/internal/UNINITIALIZED;

    .line 53
    .line 54
    if-eq v0, v4, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    monitor-enter p1

    .line 58
    :try_start_0
    iget-object v0, p1, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 59
    .line 60
    if-eq v0, v4, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v0, p1, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    iput-object p3, p1, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object v1, p1, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    move-object v0, p3

    .line 79
    :goto_1
    monitor-exit p1

    .line 80
    :goto_2
    new-instance v8, Lkotlin/InitializedLazyImpl;

    .line 81
    .line 82
    invoke-direct {v8, v0}, Lkotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v9, p0, Lcoil3/network/NetworkFetcher$Factory;->concurrentRequestStrategyLazy:Lkotlin/SynchronizedLazyImpl;

    .line 86
    .line 87
    move-object v4, p2

    .line 88
    invoke-direct/range {v2 .. v9}, Lcoil3/network/NetworkFetcher;-><init>(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/SynchronizedLazyImpl;Lkotlin/SynchronizedLazyImpl;Lkotlin/SynchronizedLazyImpl;Lkotlin/InitializedLazyImpl;Lkotlin/SynchronizedLazyImpl;)V

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    move-object p0, v0

    .line 94
    monitor-exit p1

    .line 95
    throw p0
.end method
