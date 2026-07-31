.class public final Lorg/maplibre/android/MapLibre;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static INSTANCE:Lorg/maplibre/android/MapLibre; = null

.field private static final TAG:Ljava/lang/String; = "Mbgl-MapLibre"

.field private static moduleProvider:Lorg/maplibre/android/ModuleProvider;


# instance fields
.field private apiKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/maplibre/android/MapLibre;->context:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lorg/maplibre/android/MapLibre;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/util/TileServerOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/MapLibre;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/maplibre/android/MapLibre;->apiKey:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/maplibre/android/MapLibre;->tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;

    .line 9
    .line 10
    return-void
.end method

.method public static getApiKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 5
    .line 6
    iget-object v0, v0, Lorg/maplibre/android/MapLibre;->apiKey:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 5
    .line 6
    iget-object v0, v0, Lorg/maplibre/android/MapLibre;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-object v0
.end method

.method private static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .line 1
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/maplibre/android/MapLibre;
    .locals 6

    const-class v0, Lorg/maplibre/android/MapLibre;

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lokio/Okio__JvmOkioKt;->debug:Ljava/lang/Boolean;

    .line 102
    const-string v1, "Mbgl-MapLibre"

    invoke-static {v1}, Lokio/Okio__JvmOkioKt;->checkThread(Ljava/lang/String;)V

    .line 103
    sget-object v1, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 105
    sget-object v5, Lorg/maplibre/android/storage/FileSource;->resourcesCachePathLoaderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 106
    const-string v5, "Mbgl-FileSource"

    invoke-static {v5}, Lokio/Okio__JvmOkioKt;->checkThread(Ljava/lang/String;)V

    .line 107
    new-instance v5, Lorg/maplibre/android/storage/FileSource$FileDirsPathsTask;

    .line 108
    invoke-direct {v5}, Landroid/os/AsyncTask;-><init>()V

    .line 109
    new-array v3, v3, [Landroid/content/Context;

    aput-object v1, v3, v2

    invoke-virtual {v5, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    new-instance v2, Lorg/maplibre/android/MapLibre;

    invoke-direct {v2, v1, v4}, Lorg/maplibre/android/MapLibre;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 111
    invoke-static {v1}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 112
    :cond_1
    :goto_1
    sget-object v1, Lorg/maplibre/android/WellKnownTileServer;->MapLibre:Lorg/maplibre/android/WellKnownTileServer;

    invoke-static {v1}, Lorg/maplibre/android/util/TileServerOptions;->get(Lorg/maplibre/android/WellKnownTileServer;)Lorg/maplibre/android/util/TileServerOptions;

    move-result-object v1

    .line 113
    sget-object v2, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    iput-object v1, v2, Lorg/maplibre/android/MapLibre;->tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;

    .line 114
    iput-object v4, v2, Lorg/maplibre/android/MapLibre;->apiKey:Ljava/lang/String;

    .line 115
    invoke-static {p0}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    move-result-object p0

    .line 116
    invoke-virtual {p0, v1}, Lorg/maplibre/android/storage/FileSource;->setTileServerOptions(Lorg/maplibre/android/util/TileServerOptions;)V

    .line 117
    invoke-virtual {p0, v4}, Lorg/maplibre/android/storage/FileSource;->setApiKey(Ljava/lang/String;)V

    .line 118
    sget-object p0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/WellKnownTileServer;)Lorg/maplibre/android/MapLibre;
    .locals 5

    .line 1
    const-class v0, Lorg/maplibre/android/MapLibre;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 9
    .line 10
    and-int/lit8 v1, v1, 0x2

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v3

    .line 19
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lokio/Okio__JvmOkioKt;->debug:Ljava/lang/Boolean;

    .line 24
    .line 25
    const-string v1, "Mbgl-MapLibre"

    .line 26
    .line 27
    invoke-static {v1}, Lokio/Okio__JvmOkioKt;->checkThread(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    new-array v1, v3, [Ltimber/log/Timber$Forest;

    .line 35
    .line 36
    invoke-static {v1}, Ltimber/log/Timber;->plant([Ltimber/log/Timber$Forest;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v4, Lorg/maplibre/android/storage/FileSource;->resourcesCachePathLoaderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    .line 45
    const-string v4, "Mbgl-FileSource"

    .line 46
    .line 47
    invoke-static {v4}, Lokio/Okio__JvmOkioKt;->checkThread(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Lorg/maplibre/android/storage/FileSource$FileDirsPathsTask;

    .line 51
    .line 52
    invoke-direct {v4}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    .line 54
    .line 55
    new-array v2, v2, [Landroid/content/Context;

    .line 56
    .line 57
    aput-object v1, v2, v3

    .line 58
    .line 59
    invoke-virtual {v4, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    .line 61
    .line 62
    new-instance v2, Lorg/maplibre/android/MapLibre;

    .line 63
    .line 64
    invoke-direct {v2, v1, p1}, Lorg/maplibre/android/MapLibre;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v2, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 68
    .line 69
    invoke-static {v1}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    iput-object p1, v1, Lorg/maplibre/android/MapLibre;->apiKey:Ljava/lang/String;

    .line 76
    .line 77
    :goto_1
    invoke-static {p2}, Lorg/maplibre/android/util/TileServerOptions;->get(Lorg/maplibre/android/WellKnownTileServer;)Lorg/maplibre/android/util/TileServerOptions;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    sget-object v1, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 82
    .line 83
    iput-object p2, v1, Lorg/maplibre/android/MapLibre;->tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;

    .line 84
    .line 85
    invoke-static {p0}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, p2}, Lorg/maplibre/android/storage/FileSource;->setTileServerOptions(Lorg/maplibre/android/util/TileServerOptions;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lorg/maplibre/android/storage/FileSource;->setApiKey(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object p0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    monitor-exit v0

    .line 98
    return-object p0

    .line 99
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p0
.end method

.method public static getModuleProvider()Lorg/maplibre/android/ModuleProvider;
    .locals 2

    .line 1
    sget-object v0, Lorg/maplibre/android/MapLibre;->moduleProvider:Lorg/maplibre/android/ModuleProvider;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/wikipedia/login/LoginClient;

    .line 6
    .line 7
    const/16 v1, 0xb

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/wikipedia/login/LoginClient;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/maplibre/android/MapLibre;->moduleProvider:Lorg/maplibre/android/ModuleProvider;

    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public static getPredefinedStyle(Ljava/lang/String;)Lorg/maplibre/android/util/DefaultStyle;
    .locals 5

    .line 1
    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 5
    .line 6
    iget-object v0, v0, Lorg/maplibre/android/MapLibre;->tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/maplibre/android/util/TileServerOptions;->getDefaultStyles()[Lorg/maplibre/android/util/DefaultStyle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    invoke-virtual {v3}, Lorg/maplibre/android/util/DefaultStyle;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    return-object v3

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static getPredefinedStyles()[Lorg/maplibre/android/util/DefaultStyle;
    .locals 1

    .line 1
    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 5
    .line 6
    iget-object v0, v0, Lorg/maplibre/android/MapLibre;->tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/maplibre/android/util/TileServerOptions;->getDefaultStyles()[Lorg/maplibre/android/util/DefaultStyle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method

.method public static getTileServerOptions()Lorg/maplibre/android/util/TileServerOptions;
    .locals 1

    .line 1
    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 5
    .line 6
    iget-object v0, v0, Lorg/maplibre/android/MapLibre;->tileServerOptions:Lorg/maplibre/android/util/TileServerOptions;

    .line 7
    .line 8
    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public static isApiKeyValid(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Lorg/maplibre/android/constants/MapLibreConstants;->MAPLIBRE_LOCALE:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    xor-int/lit8 p0, p0, 0x1

    .line 20
    .line 21
    return p0
.end method

.method public static declared-synchronized isConnected()Ljava/lang/Boolean;
    .locals 3

    .line 1
    const-class v0, Lorg/maplibre/android/MapLibre;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 8
    .line 9
    iget-object v1, v1, Lorg/maplibre/android/MapLibre;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, Lorg/maplibre/android/net/ConnectivityReceiver;->connected:Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Lorg/maplibre/android/net/ConnectivityReceiver;->isNetworkActive()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    .line 33
    return-object v1

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v1
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lorg/maplibre/android/MapLibre;->throwIfApiKeyInvalid(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 8
    .line 9
    iput-object p0, v0, Lorg/maplibre/android/MapLibre;->apiKey:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lorg/maplibre/android/storage/FileSource;->setApiKey(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static declared-synchronized setConnected(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    const-class v0, Lorg/maplibre/android/MapLibre;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/maplibre/android/MapLibre;->validateMapLibre()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 8
    .line 9
    iget-object v1, v1, Lorg/maplibre/android/MapLibre;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object p0, v1, Lorg/maplibre/android/net/ConnectivityReceiver;->connected:Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Lorg/maplibre/android/net/ConnectivityReceiver;->isNetworkActive()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    :goto_0
    invoke-virtual {v1, p0}, Lorg/maplibre/android/net/ConnectivityReceiver;->notifyListeners(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method

.method public static setModuleProvider(Lorg/maplibre/android/ModuleProvider;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/maplibre/android/MapLibre;->moduleProvider:Lorg/maplibre/android/ModuleProvider;

    .line 2
    .line 3
    return-void
.end method

.method public static throwIfApiKeyInvalid(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/maplibre/android/MapLibre;->isApiKeyValid(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcoil3/network/HttpException;

    .line 9
    .line 10
    const-string v1, "A valid API key is required, currently provided key is: "

    .line 11
    .line 12
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method private static validateMapLibre()V
    .locals 1

    .line 1
    sget-object v0, Lorg/maplibre/android/MapLibre;->INSTANCE:Lorg/maplibre/android/MapLibre;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcoil3/network/HttpException;

    .line 7
    .line 8
    invoke-direct {v0}, Lcoil3/network/HttpException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0
.end method
