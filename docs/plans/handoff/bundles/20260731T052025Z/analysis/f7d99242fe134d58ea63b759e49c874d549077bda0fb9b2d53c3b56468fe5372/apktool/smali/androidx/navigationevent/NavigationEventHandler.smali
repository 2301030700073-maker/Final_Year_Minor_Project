.class public abstract Landroidx/navigationevent/NavigationEventHandler;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public currentInfo:Landroidx/work/OperationKt;

.field public dispatcher:Lokhttp3/Dispatcher;

.field public isBackEnabled:Z


# virtual methods
.method public abstract onBackCancelled()V
.end method

.method public abstract onBackCompleted()V
.end method

.method public abstract onBackProgressed(Landroidx/navigationevent/NavigationEvent;)V
.end method

.method public abstract onBackStarted(Landroidx/navigationevent/NavigationEvent;)V
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->dispatcher:Lokhttp3/Dispatcher;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/collection/MutableOrderedScatterSet;

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Landroidx/collection/MutableOrderedScatterSet;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v0, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroidx/navigationevent/NavigationEventProcessor;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    .line 32
    .line 33
    const/4 v3, -0x1

    .line 34
    if-eq v1, v3, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->onBackCancelled()V

    .line 38
    .line 39
    .line 40
    :goto_0
    iput-object v2, v0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    .line 44
    .line 45
    iput-object v2, v0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressInput:Landroidx/navigationevent/NavigationEventInput;

    .line 46
    .line 47
    :cond_1
    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lkotlin/collections/ArrayDeque;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Lkotlin/collections/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lkotlin/collections/ArrayDeque;

    .line 53
    .line 54
    invoke-virtual {v1, p0}, Lkotlin/collections/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Landroidx/navigationevent/NavigationEventHandler;->dispatcher:Lokhttp3/Dispatcher;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventProcessor;->refreshEnabledHandlers()V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public final setBackEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->dispatcher:Lokhttp3/Dispatcher;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroidx/navigationevent/NavigationEventProcessor;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventProcessor;->refreshEnabledHandlers()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method
