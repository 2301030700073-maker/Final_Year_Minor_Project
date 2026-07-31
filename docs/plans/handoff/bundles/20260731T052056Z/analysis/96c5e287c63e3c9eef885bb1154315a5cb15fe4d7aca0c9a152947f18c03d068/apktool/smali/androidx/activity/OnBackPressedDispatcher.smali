.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final eventInput$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final fallbackOnBackPressed:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->fallbackOnBackPressed:Ljava/lang/Runnable;

    .line 5
    .line 6
    new-instance p1, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0, p0}, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->eventInput$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final addCallback(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    .line 10
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v1, Landroidx/activity/OnBackPressedCallbackInfo;

    .line 16
    .line 17
    invoke-direct {v1, p1, p2}, Landroidx/activity/OnBackPressedCallbackInfo;-><init>(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    .line 21
    .line 22
    invoke-direct {p2, p1, v1}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;-><init>(Landroidx/fragment/app/FragmentManager$1;Landroidx/activity/OnBackPressedCallbackInfo;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p1, Landroidx/fragment/app/FragmentManager$1;->eventHandlers:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p2, v1}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->setLifecycleActive(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->getEventInput()Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->dispatcher:Lcoil3/ImageLoader$Builder;

    .line 39
    .line 40
    invoke-static {v1, p2}, Lcoil3/ImageLoader$Builder;->addHandler$default(Lcoil3/ImageLoader$Builder;Landroidx/navigationevent/NavigationEventHandler;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    .line 44
    .line 45
    invoke-direct {v1, p2, p0, v0}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleRegistry;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    invoke-direct {p0, v0, v1}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/DefaultLifecycleObserverAdapter;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager$1;->closeables:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final getEventInput()Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->eventInput$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->getEventInput()Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventInput;->dispatchOnBackCompleted()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->getEventInput()Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->dispatcher:Lcoil3/ImageLoader$Builder;

    .line 6
    .line 7
    new-instance v1, Landroidx/navigationevent/OnBackInvokedDefaultInput;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, v2}, Landroidx/navigationevent/OnBackInvokedInput;-><init>(Landroid/window/OnBackInvokedDispatcher;I)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v1, v3}, Lcoil3/ImageLoader$Builder;->addInput(Landroidx/navigationevent/OnBackInvokedInput;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->getEventInput()Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->dispatcher:Lcoil3/ImageLoader$Builder;

    .line 22
    .line 23
    new-instance v0, Landroidx/navigationevent/OnBackInvokedDefaultInput;

    .line 24
    .line 25
    const v1, 0xf4240

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1, v1}, Landroidx/navigationevent/OnBackInvokedInput;-><init>(Landroid/window/OnBackInvokedDispatcher;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v2}, Lcoil3/ImageLoader$Builder;->addInput(Landroidx/navigationevent/OnBackInvokedInput;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
