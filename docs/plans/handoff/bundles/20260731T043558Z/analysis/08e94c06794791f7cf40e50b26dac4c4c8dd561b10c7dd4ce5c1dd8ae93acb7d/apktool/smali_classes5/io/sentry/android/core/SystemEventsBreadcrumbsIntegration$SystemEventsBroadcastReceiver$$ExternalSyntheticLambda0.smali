.class public final synthetic Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;JLandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    iput-wide p2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iput-object p5, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-boolean p6, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    iget-wide v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iget-object v4, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-boolean v5, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver$$ExternalSyntheticLambda0;->f$4:Z

    invoke-virtual/range {v0 .. v5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->lambda$onReceive$0$io-sentry-android-core-SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver(JLandroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method
