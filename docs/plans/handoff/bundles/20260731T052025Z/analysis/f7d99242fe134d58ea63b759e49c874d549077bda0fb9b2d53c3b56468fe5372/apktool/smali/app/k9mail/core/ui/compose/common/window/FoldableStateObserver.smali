.class public final Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# static fields
.field public static lastKnownState:Lapp/k9mail/core/ui/compose/common/window/FoldableState;


# instance fields
.field public final _foldableState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activity:Landroid/app/Activity;

.field public collectJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public debounceJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final foldableState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final scope:Lkotlinx/coroutines/internal/ContextScope;

.field public final windowInfoTracker:Landroidx/window/layout/FoldingFeature$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lapp/k9mail/core/ui/compose/common/window/FoldableState;->UNKNOWN:Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 2
    .line 3
    sput-object v0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->lastKnownState:Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lnet/thunderbird/core/logging/Logger;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->activity:Landroid/app/Activity;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 10
    .line 11
    sget-object p2, Landroidx/window/layout/WindowInfoTracker;->Companion:Landroidx/window/layout/WindowInfoTracker$Companion;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p2, Landroidx/window/layout/WindowInfoTracker$Companion;->extensionBackend$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 17
    .line 18
    invoke-virtual {p2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroidx/window/layout/adapter/WindowBackend;

    .line 23
    .line 24
    if-nez p2, :cond_5

    .line 25
    .line 26
    sget-object p2, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    .line 27
    .line 28
    sget-object p2, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    .line 29
    .line 30
    if-nez p2, :cond_4

    .line 31
    .line 32
    sget-object p2, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 35
    .line 36
    .line 37
    :try_start_0
    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    :try_start_1
    invoke-static {}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;->getSidecarVersion()Landroidx/window/core/Version;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sget-object v2, Landroidx/window/core/Version;->VERSION_0_1:Landroidx/window/core/Version;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v1, v1, Landroidx/window/core/Version;->bigInteger$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 55
    .line 56
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    check-cast v1, Ljava/math/BigInteger;

    .line 64
    .line 65
    iget-object v2, v2, Landroidx/window/core/Version;->bigInteger$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 66
    .line 67
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    check-cast v2, Ljava/math/BigInteger;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-ltz v1, :cond_2

    .line 81
    .line 82
    new-instance v1, Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    .line 83
    .line 84
    invoke-direct {v1, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->validateExtensionInterface()Z

    .line 88
    .line 89
    .line 90
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    if-nez p1, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    move-object v0, v1

    .line 95
    :catchall_0
    :cond_2
    :goto_0
    :try_start_2
    new-instance p1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    .line 96
    .line 97
    invoke-direct {p1, v0}, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)V

    .line 98
    .line 99
    .line 100
    sput-object p1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    :goto_1
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :goto_2
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_4
    :goto_3
    sget-object p2, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    :cond_5
    new-instance p1, Landroidx/window/layout/FoldingFeature$State;

    .line 119
    .line 120
    new-instance v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 121
    .line 122
    invoke-direct {v0}, Landroidx/window/layout/WindowMetricsCalculatorCompat;-><init>()V

    .line 123
    .line 124
    .line 125
    new-instance v1, Landroidx/collection/internal/Lock;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, v0, p2, v1}, Landroidx/window/layout/FoldingFeature$State;-><init>(Landroidx/window/layout/WindowMetricsCalculatorCompat;Landroidx/window/layout/adapter/WindowBackend;Landroidx/collection/internal/Lock;)V

    .line 134
    .line 135
    .line 136
    sget-object p2, Landroidx/window/layout/WindowInfoTracker$Companion;->decorator:Landroidx/window/layout/EmptyDecorator;

    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->windowInfoTracker:Landroidx/window/layout/FoldingFeature$State;

    .line 142
    .line 143
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 144
    .line 145
    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 146
    .line 147
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 152
    .line 153
    sget-object p1, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->lastKnownState:Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 154
    .line 155
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->_foldableState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 160
    .line 161
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/StateFlowImpl;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->foldableState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 166
    .line 167
    return-void
.end method


# virtual methods
.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    .line 1
    new-instance p1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-direct {p1, v0}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iget-object v1, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 9
    .line 10
    const-string v2, "FoldableStateObserver"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v1, v2, v3, p1, v0}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->stopObserving()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    .line 1
    new-instance p1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-direct {p1, v0}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iget-object v1, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 9
    .line 10
    const-string v2, "FoldableStateObserver"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v1, v2, v3, p1, v0}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    invoke-direct {p1, p0, v3, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    iget-object v1, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 24
    .line 25
    invoke-static {v1, v3, v3, p1, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->collectJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 30
    .line 31
    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->stopObserving()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final stopObserving()V
    .locals 5

    .line 1
    new-instance v0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    iget-object v2, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 9
    .line 10
    const-string v3, "FoldableStateObserver"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v2, v3, v4, v0, v1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->collectJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-object v4, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->collectJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 24
    .line 25
    iget-object v0, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->debounceJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput-object v4, p0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->debounceJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 33
    .line 34
    return-void
.end method
