.class public final synthetic Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/ScreenshotRecorder;

.field public final synthetic f$1:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/ScreenshotRecorder;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/replay/ScreenshotRecorder;

    iput-object p2, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;->f$1:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/replay/ScreenshotRecorder;

    iget-object v1, p0, Lio/sentry/android/replay/ScreenshotRecorder$$ExternalSyntheticLambda2;->f$1:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-static {v0, v1}, Lio/sentry/android/replay/ScreenshotRecorder;->$r8$lambda$it1SORCrZn5i5AZYweRgi9xAP38(Lio/sentry/android/replay/ScreenshotRecorder;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V

    return-void
.end method
