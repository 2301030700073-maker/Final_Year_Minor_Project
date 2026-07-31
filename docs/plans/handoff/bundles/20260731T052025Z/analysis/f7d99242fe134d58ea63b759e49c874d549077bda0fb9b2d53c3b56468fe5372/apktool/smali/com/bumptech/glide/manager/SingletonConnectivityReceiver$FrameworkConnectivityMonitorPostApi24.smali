.class public final Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;


# instance fields
.field public final connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$1;

.field public isConnected:Z

.field public final listener:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;

.field public final networkCallback:Landroidx/work/impl/constraints/IndividualNetworkCallback;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/util/GlideSuppliers$1;Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1, p0}, Landroidx/work/impl/constraints/IndividualNetworkCallback;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->networkCallback:Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$1;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->listener:Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final register()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/util/GlideSuppliers$1;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    iput-boolean v1, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->isConnected:Z

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v0}, Lcom/bumptech/glide/util/GlideSuppliers$1;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->networkCallback:Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const/4 v0, 0x5

    .line 36
    const-string v1, "ConnectivityMonitor"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string v0, "Failed to register callback"

    .line 45
    .line 46
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    return v2
.end method

.method public final unregister()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->connectivityManager:Lcom/bumptech/glide/util/GlideSuppliers$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/util/GlideSuppliers$1;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->networkCallback:Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
