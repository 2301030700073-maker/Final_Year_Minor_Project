.class public final synthetic Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[[B

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([[BLandroid/app/Activity;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda8;->f$0:[[B

    iput-object p2, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda8;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda8;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda8;->f$0:[[B

    iget-object v1, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda8;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda8;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2}, Lio/sentry/react/RNSentryModuleImpl;->lambda$takeScreenshotOnUiThread$4([[BLandroid/app/Activity;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
