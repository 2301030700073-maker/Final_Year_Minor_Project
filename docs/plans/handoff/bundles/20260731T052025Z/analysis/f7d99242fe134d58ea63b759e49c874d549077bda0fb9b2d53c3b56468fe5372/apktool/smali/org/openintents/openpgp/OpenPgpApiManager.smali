.class public Lorg/openintents/openpgp/OpenPgpApiManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;,
        Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;,
        Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;
    }
.end annotation


# instance fields
.field public callback:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;

.field public final context:Landroid/content/Context;

.field public openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

.field public openPgpProvider:Ljava/lang/String;

.field public openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

.field public openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

.field public userInteractionPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->UNCONFIGURED:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final callbackOpenPgpProviderError(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    const-string v1, "callback provider connection error %s"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->callback:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0, p1}, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;->onOpenPgpProviderError(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final getOpenPgpApi()Lorg/openintents/openpgp/util/OpenPgpApi;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    const-string v1, "Obtained OpenPgpApi object, but service is not bound! Inconsistent state?"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object p0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 19
    .line 20
    return-object p0
.end method

.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->setupCryptoProvider()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 3
    .line 4
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mApplicationContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 16
    .line 17
    return-void
.end method

.method public final onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->refreshConnection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final refreshConnection()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 2
    .line 3
    sget-object v1, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->OK:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-object v2, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->userInteractionPendingIntent:Landroid/app/PendingIntent;

    .line 18
    .line 19
    sget-object v0, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->ERROR:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProviderState(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;->ConnectionLost:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/OpenPgpApiManager;->callbackOpenPgpProviderError(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iput-object v2, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->userInteractionPendingIntent:Landroid/app/PendingIntent;

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->setupCryptoProvider()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v1, v0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->userInteractionPendingIntent:Landroid/app/PendingIntent;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    sget-object v0, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->UI_REQUIRED:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProviderState(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 55
    .line 56
    const-string v1, "org.openintents.openpgp.action.CHECK_PERMISSION"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->getOpenPgpApi()Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Lorg/openintents/openpgp/OpenPgpApiManager$2;

    .line 66
    .line 67
    invoke-direct {v2, p0}, Lorg/openintents/openpgp/OpenPgpApiManager$2;-><init>(Lorg/openintents/openpgp/OpenPgpApiManager;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    iput-object v2, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->userInteractionPendingIntent:Landroid/app/PendingIntent;

    .line 75
    .line 76
    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProvider:Ljava/lang/String;

    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    aput-object v1, v2, v3

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    aput-object v0, v2, v1

    .line 86
    .line 87
    const-string v0, "attempting to bind to openpgp provider: %s (%s)"

    .line 88
    .line 89
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 93
    .line 94
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->bindToService()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final setOpenPgpProvider(Ljava/lang/String;Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProvider:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v2, v1, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mApplicationContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v1, v1, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 26
    .line 27
    :cond_2
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProvider:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p2, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->callback:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->setupCryptoProvider()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final setOpenPgpProviderState(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object p1, v1, v0

    .line 13
    .line 14
    const-string v0, "callback provider status changed from %s to %s"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->callback:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;->onOpenPgpProviderStatusChanged()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final setupCryptoProvider()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProvider:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->UNCONFIGURED:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProviderState(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->refreshConnection()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    sget-object v0, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->UNINITIALIZED:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProviderState(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 36
    .line 37
    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProvider:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v2, Lorg/openintents/openpgp/OpenPgpApiManager$1;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lorg/openintents/openpgp/OpenPgpApiManager$1;-><init>(Lorg/openintents/openpgp/OpenPgpApiManager;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-direct {v0, v3, v1, v2}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->refreshConnection()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
