.class public final synthetic Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

    iput-wide p2, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

    iget-wide v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$1:J

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->lambda$onLowMemory$1$io-sentry-android-core-AppComponentsBreadcrumbsIntegration(J)V

    return-void
.end method
