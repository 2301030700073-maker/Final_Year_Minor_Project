.class public final Landroidx/compose/animation/core/MutationInterruptedException;
.super Ljava/util/concurrent/CancellationException;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/core/internal/PlatformOptimizedCancellationException_jvmAndAndroidKt;->EmptyStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
