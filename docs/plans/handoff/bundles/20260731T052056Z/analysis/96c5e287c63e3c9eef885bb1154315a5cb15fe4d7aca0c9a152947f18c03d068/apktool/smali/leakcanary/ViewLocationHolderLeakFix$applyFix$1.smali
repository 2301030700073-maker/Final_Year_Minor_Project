.class public final Lleakcanary/ViewLocationHolderLeakFix$applyFix$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcurtains/OnRootViewRemovedListener;


# instance fields
.field public final synthetic $application:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lleakcanary/ViewLocationHolderLeakFix$applyFix$1;->$application:Landroid/app/Application;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRootViewsChanged(Landroid/view/View;Z)V
    .locals 1

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    sget-object p1, Lleakcanary/internal/HandlersKt;->mainHandler$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lleakcanary/ViewLocationHolderLeakFix$applyFix$1;->$application:Landroid/app/Application;

    .line 23
    .line 24
    invoke-static {p0}, Lorg/jsoup/select/NodeTraversor;->uncheckedClearStaticPool(Landroid/app/Application;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Lleakcanary/internal/HandlersKt;->mainHandler$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 29
    .line 30
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/os/Handler;

    .line 35
    .line 36
    new-instance p2, Landroidx/lifecycle/LiveData$1;

    .line 37
    .line 38
    const/16 v0, 0x18

    .line 39
    .line 40
    invoke-direct {p2, v0, p0}, Landroidx/lifecycle/LiveData$1;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method
