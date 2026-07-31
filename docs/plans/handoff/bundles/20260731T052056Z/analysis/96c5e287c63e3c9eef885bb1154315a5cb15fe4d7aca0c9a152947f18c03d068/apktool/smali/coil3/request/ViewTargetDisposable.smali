.class public final Lcoil3/request/ViewTargetDisposable;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/request/Disposable;


# instance fields
.field public volatile job:Ljava/lang/Object;

.field public final view:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcoil3/request/ViewTargetDisposable;->view:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lkotlinx/coroutines/DeferredCoroutine;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcoil3/request/ViewTargetDisposable;->view:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lcoil3/request/ViewTargetDisposable;->job:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getJob()Lkotlinx/coroutines/Deferred;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/request/ViewTargetDisposable;->job:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkotlinx/coroutines/DeferredCoroutine;

    .line 4
    .line 5
    return-object p0
.end method
