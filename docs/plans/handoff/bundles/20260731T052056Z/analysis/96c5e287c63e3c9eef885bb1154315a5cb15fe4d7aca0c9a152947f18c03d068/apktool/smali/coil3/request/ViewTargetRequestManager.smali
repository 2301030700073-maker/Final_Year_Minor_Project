.class public final Lcoil3/request/ViewTargetRequestManager;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public currentDisposable:Lcoil3/request/ViewTargetDisposable;

.field public currentRequest:Lcoil3/request/ViewTargetRequestDelegate;

.field public isRestart:Z

.field public pendingClear:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/request/ViewTargetRequestManager;->view:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcoil3/request/ViewTargetRequestManager;->currentRequest:Lcoil3/request/ViewTargetRequestDelegate;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcoil3/request/ViewTargetRequestManager;->isRestart:Z

    .line 8
    .line 9
    iget-object p0, p1, Lcoil3/request/ViewTargetRequestDelegate;->imageLoader:Lcoil3/RealImageLoader;

    .line 10
    .line 11
    iget-object p1, p1, Lcoil3/request/ViewTargetRequestDelegate;->initialRequest:Lcoil3/request/ImageRequest;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcoil3/RealImageLoader;->enqueue(Lcoil3/request/ImageRequest;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/request/ViewTargetRequestManager;->currentRequest:Lcoil3/request/ViewTargetRequestDelegate;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcoil3/request/ViewTargetRequestDelegate;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
