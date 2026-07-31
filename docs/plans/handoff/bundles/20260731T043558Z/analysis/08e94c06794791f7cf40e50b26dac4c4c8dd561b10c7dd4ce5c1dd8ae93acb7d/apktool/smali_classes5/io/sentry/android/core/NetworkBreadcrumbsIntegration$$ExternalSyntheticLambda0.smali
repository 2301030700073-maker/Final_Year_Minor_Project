.class public final synthetic Lio/sentry/android/core/NetworkBreadcrumbsIntegration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    invoke-virtual {v0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->lambda$close$0$io-sentry-android-core-NetworkBreadcrumbsIntegration()V

    return-void
.end method
