.class public final Lnet/thunderbird/app/common/activity/DefaultActivityProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public volatile lastResumedRef:Ljava/lang/ref/WeakReference;

.field public final logger:Lnet/thunderbird/core/logging/Logger;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lnet/thunderbird/core/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 5
    .line 6
    sget-object p2, Landroidx/lifecycle/ProcessLifecycleOwner;->newInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 7
    .line 8
    iget-object p2, p2, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->lastResumedRef:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/Activity;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    if-ne v0, p1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 20
    .line 21
    new-instance v2, Lnet/thunderbird/app/common/activity/DefaultActivityProvider$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-direct {v2, p1, v3}, Lnet/thunderbird/app/common/activity/DefaultActivityProvider$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;I)V

    .line 25
    .line 26
    .line 27
    const-string p1, "DefaultActivityProvider"

    .line 28
    .line 29
    invoke-static {v0, p1, v1, v2, v3}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->lastResumedRef:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->lastResumedRef:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/Activity;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    if-ne v0, p1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 20
    .line 21
    new-instance v2, Lnet/thunderbird/app/common/activity/DefaultActivityProvider$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, p1, v3}, Lnet/thunderbird/app/common/activity/DefaultActivityProvider$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;I)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    const-string v3, "DefaultActivityProvider"

    .line 29
    .line 30
    invoke-static {v0, v3, v1, v2, p1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->lastResumedRef:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 5
    .line 6
    new-instance v1, Lnet/thunderbird/app/common/activity/DefaultActivityProvider$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p1, v2}, Lnet/thunderbird/app/common/activity/DefaultActivityProvider$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;I)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const-string v3, "DefaultActivityProvider"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v0, v3, v4, v1, v2}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->lastResumedRef:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
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
    .locals 3

    .line 1
    new-instance p1, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v0, 0x1a

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iget-object p0, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 10
    .line 11
    const-string v1, "DefaultActivityProvider"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p0, v1, v2, p1, v0}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 2
    .line 3
    new-instance v0, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/16 v1, 0x1b

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    const-string v2, "DefaultActivityProvider"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p1, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 15
    .line 16
    .line 17
    iput-object v3, p0, Lnet/thunderbird/app/common/activity/DefaultActivityProvider;->lastResumedRef:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    return-void
.end method
