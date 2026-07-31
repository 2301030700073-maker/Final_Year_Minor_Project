.class public final Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;
.super Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public onNextFrameEnd:Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;->onNextFrameEnd:Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 3
    .line 4
    return-void
.end method

.method public final resumeWithException(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    throw p1
.end method
