.class public final Lorg/wikipedia/connectivity/ConnectionStateMonitor;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final callbacks:Ljava/util/ArrayList;

.field public lastCheckedMillis:J

.field public networkCallbackRegistered:Z

.field public online:Z

.field public prevOnline:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->online:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->prevOnline:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->callbacks:Ljava/util/ArrayList;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final ensureNetworkCallbackRegistered()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->networkCallbackRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "connectivity"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v2, 0x18

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-lt v1, v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    iput-boolean v3, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->networkCallbackRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    :catch_0
    :goto_1
    return-void
.end method

.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->updateOnlineState(Ljava/lang/Boolean;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->updateOnlineState(Ljava/lang/Boolean;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final updateOnlineState(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput-boolean p1, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->online:Z

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iput-wide v2, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->lastCheckedMillis:J

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 19
    .line 20
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v2, "connectivity"

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const/16 v2, 0xc

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 48
    .line 49
    .line 50
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-ne p1, v1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move p1, v0

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    :goto_0
    move p1, v1

    .line 57
    :goto_1
    iput-boolean p1, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->online:Z

    .line 58
    .line 59
    :goto_2
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 60
    .line 61
    iget-boolean p1, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->online:Z

    .line 62
    .line 63
    sput-boolean p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->ENABLED:Z

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-static {}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$OutputBuffer;->sendAllScheduled()V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-boolean p1, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->online:Z

    .line 71
    .line 72
    iget-boolean v2, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->prevOnline:Z

    .line 73
    .line 74
    if-eq p1, v2, :cond_4

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 79
    .line 80
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getMainThreadHandler()Landroid/os/Handler;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v1, Lorg/wikipedia/connectivity/ConnectionStateMonitor$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    invoke-direct {v1, p0, v0}, Lorg/wikipedia/connectivity/ConnectionStateMonitor$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/connectivity/ConnectionStateMonitor;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 101
    .line 102
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getMainThreadHandler()Landroid/os/Handler;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v0, Lorg/wikipedia/connectivity/ConnectionStateMonitor$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/connectivity/ConnectionStateMonitor$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/connectivity/ConnectionStateMonitor;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    .line 117
    .line 118
    :goto_3
    iget-boolean p1, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->online:Z

    .line 119
    .line 120
    iput-boolean p1, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->prevOnline:Z

    .line 121
    .line 122
    :cond_4
    return-void
.end method
