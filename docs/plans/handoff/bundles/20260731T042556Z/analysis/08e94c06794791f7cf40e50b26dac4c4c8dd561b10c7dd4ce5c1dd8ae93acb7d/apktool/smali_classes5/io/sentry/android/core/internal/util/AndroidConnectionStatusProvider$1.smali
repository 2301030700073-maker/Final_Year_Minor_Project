.class Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AndroidConnectionStatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->addConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

.field final synthetic val$observer:Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;


# direct methods
.method constructor <init>(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->val$observer:Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->val$observer:Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;->onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0

    .line 83
    iget-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->val$observer:Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    iget-object p2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-virtual {p2}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;->onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->val$observer:Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;->onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 93
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->val$observer:Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;->onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V

    return-void
.end method
