.class public final Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;


# instance fields
.field public final _result:Lkotlinx/coroutines/CompletableDeferredImpl;

.field public final exitCondition:Lkotlin/jvm/functions/Function1;

.field public final frameLimit:Ljava/lang/Integer;

.field public volatile frameNumberOfFirstUpdate:Landroidx/camera/camera2/pipe/FrameNumber;

.field public initialRequestNumber:Landroidx/camera/camera2/pipe/RequestNumber;

.field public final timeLimitNs:Ljava/lang/Long;

.field public volatile timestampOfFirstUpdateNs:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->exitCondition:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->frameLimit:Ljava/lang/Integer;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timeLimitNs:Ljava/lang/Long;

    .line 12
    .line 13
    new-instance p1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 14
    .line 15
    invoke-direct {p1}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onGraphShutdown()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/camera2/pipe/Result3A;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onGraphStopped()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/camera2/pipe/Result3A;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onStopRepeating()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/camera2/pipe/Result3A;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
