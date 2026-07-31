.class Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;
.super Ljava/lang/Object;
.source "NetworkBreadcrumbsIntegration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

.field final synthetic val$hub:Lio/sentry/IHub;

.field final synthetic val$options:Lio/sentry/SentryOptions;


# direct methods
.method constructor <init>(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    iput-object p2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->val$hub:Lio/sentry/IHub;

    iput-object p3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->val$options:Lio/sentry/SentryOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 85
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    invoke-static {v0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->access$000(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    invoke-static {v0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->access$100(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    new-instance v2, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    iget-object v3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->val$hub:Lio/sentry/IHub;

    iget-object v4, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 92
    invoke-static {v4}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->access$200(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/android/core/BuildInfoProvider;

    move-result-object v4

    iget-object v5, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->val$options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;-><init>(Lio/sentry/IHub;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/SentryDateProvider;)V

    iput-object v2, v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    .line 94
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 96
    invoke-static {v1}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->access$300(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    invoke-static {v2}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->access$400(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/ILogger;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    invoke-static {v3}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->access$200(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/android/core/BuildInfoProvider;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    iget-object v4, v4, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    .line 95
    invoke-static {v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->registerNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    invoke-static {v1}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->access$400(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "NetworkBreadcrumbsIntegration installed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const-string v1, "NetworkBreadcrumbs"

    invoke-static {v1}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$1;->this$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    invoke-static {v1}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->access$400(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "NetworkBreadcrumbsIntegration not installed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
