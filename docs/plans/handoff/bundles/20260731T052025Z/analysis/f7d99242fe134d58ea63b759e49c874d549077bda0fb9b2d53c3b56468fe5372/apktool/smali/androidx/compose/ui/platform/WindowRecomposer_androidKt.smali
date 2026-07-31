.class public abstract Landroidx/compose/ui/platform/WindowRecomposer_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final animationScale:Landroidx/collection/MutableScatterMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 2
    .line 3
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->animationScale:Landroidx/collection/MutableScatterMap;

    .line 9
    .line 10
    return-void
.end method

.method public static createLifecycleAwareWindowRecomposer$default(Landroid/view/View;Landroidx/lifecycle/Lifecycle;I)Landroidx/compose/runtime/Recomposer;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr p2, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    move-object p1, v2

    .line 9
    :cond_0
    sget-object p2, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Main$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-ne p2, v3, :cond_1

    .line 20
    .line 21
    sget-object p2, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Main$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 22
    .line 23
    invoke-virtual {p2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object p2, Landroidx/compose/ui/platform/AndroidUiDispatcher;->currentThread:Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    .line 37
    .line 38
    if-eqz p2, :cond_8

    .line 39
    .line 40
    :goto_0
    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    sget-object v3, Landroidx/compose/runtime/NeverEqualPolicy;->$$INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 45
    .line 46
    invoke-interface {p2, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroidx/compose/runtime/BroadcastFrameClock;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    new-instance v4, Landroidx/compose/runtime/BroadcastFrameClock;

    .line 55
    .line 56
    invoke-direct {v4, v3}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Landroidx/compose/runtime/BroadcastFrameClock;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v4, Landroidx/compose/runtime/BroadcastFrameClock;->queue:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Landroidx/compose/runtime/Latch;

    .line 62
    .line 63
    iget-object v5, v3, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v5

    .line 66
    const/4 v6, 0x0

    .line 67
    :try_start_0
    iput-boolean v6, v3, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    monitor-exit v5

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v5

    .line 73
    throw p0

    .line 74
    :cond_2
    move-object v4, v2

    .line 75
    :goto_1
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->$$INSTANCE:Landroidx/compose/ui/Alignment$Companion;

    .line 81
    .line 82
    invoke-interface {p2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Landroidx/compose/ui/MotionDurationScale;

    .line 87
    .line 88
    if-nez v5, :cond_3

    .line 89
    .line 90
    new-instance v5, Landroidx/compose/ui/platform/MotionDurationScaleImpl;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-direct {v5, v6}, Landroidx/compose/ui/platform/MotionDurationScaleImpl;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 104
    .line 105
    :cond_3
    if-eqz v4, :cond_4

    .line 106
    .line 107
    move-object v0, v4

    .line 108
    :cond_4
    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-interface {p2, v5}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    new-instance v0, Landroidx/compose/runtime/Recomposer;

    .line 117
    .line 118
    invoke-direct {v0, p2}, Landroidx/compose/runtime/Recomposer;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->pauseCompositionFrameClock()V

    .line 122
    .line 123
    .line 124
    invoke-static {p2}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    if-nez p1, :cond_6

    .line 129
    .line 130
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_5

    .line 135
    .line 136
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    goto :goto_2

    .line 141
    :cond_5
    move-object p1, v2

    .line 142
    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 143
    .line 144
    new-instance v2, Landroidx/core/view/insets/SystemBarStateMonitor$3;

    .line 145
    .line 146
    invoke-direct {v2, p0, v0, v1}, Landroidx/core/view/insets/SystemBarStateMonitor$3;-><init>(Landroid/view/View;Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 150
    .line 151
    .line 152
    new-instance p0, Landroidx/fragment/app/FragmentManager$6;

    .line 153
    .line 154
    invoke-direct {p0, p2, v4, v0, v3}, Landroidx/fragment/app/FragmentManager$6;-><init>(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/BroadcastFrameClock;Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 158
    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string p2, "ViewTreeLifecycleOwner not found from "

    .line 164
    .line 165
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 179
    .line 180
    .line 181
    return-object v2

    .line 182
    :cond_8
    const-string p0, "no AndroidUiDispatcher for this thread"

    .line 183
    .line 184
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-object v2
.end method

.method public static final getCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;
    .locals 1

    .line 1
    const v0, 0x7f090078

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    instance-of v0, p0, Landroidx/compose/runtime/CompositionContext;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/runtime/CompositionContext;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method
