.class public abstract Landroidx/media/MediaBrowserServiceCompat$Result;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final mDebug:Ljava/lang/Object;

.field public mDetachCalled:Z

.field public mFlags:I

.field public mSendResultCalled:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$Result;->mDetachCalled:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$Result;->mDetachCalled:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "detach() called when sendResult() had already been called for: "

    .line 16
    .line 17
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const-string p0, "detach() called when detach() had already been called for: "

    .line 26
    .line 27
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final isDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$Result;->mDetachCalled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    return p0
.end method

.method public abstract onResultSent(Ljava/lang/Object;)V
.end method

.method public final sendResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->onResultSent(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string p1, "sendResult() called when either sendResult() or sendError() had already been called for: "

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
