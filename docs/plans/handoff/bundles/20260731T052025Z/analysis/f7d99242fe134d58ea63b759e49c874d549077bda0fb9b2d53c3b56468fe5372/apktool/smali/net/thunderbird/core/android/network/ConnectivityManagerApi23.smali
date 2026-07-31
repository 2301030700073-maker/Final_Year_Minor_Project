.class public final Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;
.super Lnet/thunderbird/core/android/network/ConnectivityManagerBase;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public isRunning:Z

.field public lastActiveNetwork:Landroid/net/Network;

.field public final networkCallback:Landroidx/work/impl/constraints/IndividualNetworkCallback;

.field public final systemConnectivityManager:Landroid/net/ConnectivityManager;

.field public wasConnected:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->systemConnectivityManager:Landroid/net/ConnectivityManager;

    .line 5
    .line 6
    new-instance p1, Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-direct {p1, v0, p0}, Landroidx/work/impl/constraints/IndividualNetworkCallback;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->networkCallback:Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final isNetworkAvailable()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->systemConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0xc

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 v0, 0x1

    .line 24
    if-ne p0, v0, :cond_1

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    return v1
.end method

.method public final declared-synchronized start()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->isRunning:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->isRunning:Z

    .line 8
    .line 9
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->systemConnectivityManager:Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    iget-object v2, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->networkCallback:Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->isRunning:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->isRunning:Z

    .line 8
    .line 9
    iget-object v0, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->systemConnectivityManager:Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    iget-object v1, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->networkCallback:Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method
