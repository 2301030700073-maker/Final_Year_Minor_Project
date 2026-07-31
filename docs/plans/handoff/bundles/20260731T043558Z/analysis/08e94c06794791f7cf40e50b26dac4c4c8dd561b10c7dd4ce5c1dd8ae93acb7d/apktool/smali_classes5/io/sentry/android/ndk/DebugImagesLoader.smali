.class public final Lio/sentry/android/ndk/DebugImagesLoader;
.super Ljava/lang/Object;
.source "DebugImagesLoader.java"

# interfaces
.implements Lio/sentry/android/core/IDebugImagesLoader;


# static fields
.field private static volatile debugImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation
.end field

.field private static final debugImagesLock:Ljava/lang/Object;


# instance fields
.field private final moduleListLoader:Lio/sentry/android/ndk/NativeModuleListLoader;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImagesLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/ndk/NativeModuleListLoader;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "The SentryAndroidOptions is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    .line 36
    const-string p1, "The NativeModuleListLoader is required."

    .line 37
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/ndk/NativeModuleListLoader;

    iput-object p1, p0, Lio/sentry/android/ndk/DebugImagesLoader;->moduleListLoader:Lio/sentry/android/ndk/NativeModuleListLoader;

    return-void
.end method

.method private filterImagesByAddresses(Ljava/util/List;Ljava/util/Set;)Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .line 105
    const-string v0, ""

    const-string v1, "0x"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 107
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 108
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/protocol/DebugImage;

    add-int/lit8 v3, v3, 0x1

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v3, v5, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/protocol/DebugImage;

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_2

    .line 112
    invoke-virtual {v5}, Lio/sentry/protocol/DebugImage;->getImageAddr()Ljava/lang/String;

    move-result-object v6

    .line 114
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :catch_0
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 116
    :try_start_0
    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    .line 118
    invoke-virtual {v4}, Lio/sentry/protocol/DebugImage;->getImageAddr()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 121
    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v11

    .line 124
    invoke-virtual {v4}, Lio/sentry/protocol/DebugImage;->getImageSize()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 126
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v11

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    .line 128
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    goto :goto_2

    :cond_5
    const-wide v7, 0x7fffffffffffffffL

    :goto_2
    cmp-long v11, v9, v11

    if-ltz v11, :cond_3

    cmp-long v7, v9, v7

    if-gez v7, :cond_3

    .line 133
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    return-object v2
.end method


# virtual methods
.method public clearDebugImages()V
    .locals 6

    .line 153
    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImagesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 155
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/ndk/DebugImagesLoader;->moduleListLoader:Lio/sentry/android/ndk/NativeModuleListLoader;

    invoke-virtual {v2}, Lio/sentry/android/ndk/NativeModuleListLoader;->clearModuleList()V

    .line 157
    iget-object v2, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Debug images cleared."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 159
    :try_start_1
    iget-object v3, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to clear debug images."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v1, 0x0

    .line 161
    sput-object v1, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    .line 162
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method getCachedDebugImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .line 168
    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    return-object v0
.end method

.method public loadDebugImages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 50
    :try_start_1
    iget-object v1, p0, Lio/sentry/android/ndk/DebugImagesLoader;->moduleListLoader:Lio/sentry/android/ndk/NativeModuleListLoader;

    invoke-virtual {v1}, Lio/sentry/android/ndk/NativeModuleListLoader;->loadModuleList()[Lio/sentry/protocol/DebugImage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    .line 53
    iget-object v1, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    .line 54
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Debug images loaded: %d"

    sget-object v4, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    .line 55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 58
    :try_start_2
    iget-object v2, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to load debug images."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    return-object v0

    :catchall_1
    move-exception v1

    .line 61
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public loadDebugImagesForAddresses(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/ndk/DebugImagesLoader;->loadDebugImages()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 76
    monitor-exit v0

    return-object v2

    .line 78
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    monitor-exit v0

    return-object v2

    .line 82
    :cond_1
    invoke-direct {p0, v1, p1}, Lio/sentry/android/ndk/DebugImagesLoader;->filterImagesByAddresses(Ljava/util/List;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    iget-object v1, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    .line 85
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "No debug images found for any of the %d addresses."

    .line 89
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 86
    invoke-interface {v1, v3, v4, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    monitor-exit v0

    return-object v2

    .line 93
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
