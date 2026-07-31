.class public abstract Landroidx/navigationevent/NavigationEventInput;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public dispatcher:Lcoil3/ImageLoader$Builder;

.field public isPredictiveBackInProgress:Z


# virtual methods
.method public final dispatchOnBackCompleted()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Lcoil3/ImageLoader$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveBackInProgress:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p0, v2}, Lcoil3/ImageLoader$Builder;->dispatchOnStarted$navigationevent(Landroidx/navigationevent/NavigationEventInput;Landroidx/navigationevent/NavigationEvent;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroidx/navigationevent/NavigationEventProcessor;

    .line 16
    .line 17
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    iget-object v3, v1, Landroidx/navigationevent/NavigationEventProcessor;->inProgressInput:Landroidx/navigationevent/NavigationEventInput;

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    iget v3, v1, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    .line 31
    .line 32
    const/4 v5, -0x1

    .line 33
    if-eq v5, v3, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v3, v1, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1, v5}, Landroidx/navigationevent/NavigationEventProcessor;->resolveEnabledHandler(I)Landroidx/navigationevent/NavigationEventHandler;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_2
    iput-object v2, v1, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    .line 45
    .line 46
    iput v4, v1, Landroidx/navigationevent/NavigationEventProcessor;->inProgressDirection:I

    .line 47
    .line 48
    iput-object v2, v1, Landroidx/navigationevent/NavigationEventProcessor;->inProgressInput:Landroidx/navigationevent/NavigationEventInput;

    .line 49
    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    .line 55
    .line 56
    iget-object v0, v0, Landroidx/activity/OnBackPressedDispatcher;->fallbackOnBackPressed:Ljava/lang/Runnable;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {v3}, Landroidx/navigationevent/NavigationEventHandler;->onBackCompleted()V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object v0, v1, Landroidx/navigationevent/NavigationEventProcessor;->_transitionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 66
    .line 67
    sget-object v1, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->INSTANCE:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_1
    iput-boolean v4, p0, Landroidx/navigationevent/NavigationEventInput;->isPredictiveBackInProgress:Z

    .line 73
    .line 74
    return-void

    .line 75
    :cond_5
    const-string p0, "This input is not added to any dispatcher."

    .line 76
    .line 77
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public onHasEnabledHandlersChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method
