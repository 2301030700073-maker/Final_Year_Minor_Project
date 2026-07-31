.class public final Landroidx/navigation/internal/NavControllerImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final _currentBackStack:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _currentBackStackEntryFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public _graph:Landroidx/navigation/NavGraph;

.field public final _navigatorProvider:Landroidx/navigation/NavigatorProvider;

.field public final _visibleEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public addToBackStackHandler:Lkotlin/jvm/functions/Function1;

.field public final backQueue:Lkotlin/collections/ArrayDeque;

.field public final backStackEntriesToDispatch:Ljava/util/ArrayList;

.field public final backStackMap:Ljava/util/LinkedHashMap;

.field public final backStackStates:Ljava/util/LinkedHashMap;

.field public backStackToRestore:[Landroid/os/Bundle;

.field public final childToParentEntries:Ljava/util/LinkedHashMap;

.field public dispatchReentrantCount:I

.field public final entrySavedState:Ljava/util/LinkedHashMap;

.field public hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

.field public final lifecycleObserver:Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;

.field public lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final navController:Landroidx/navigation/NavHostController;

.field public final navigatorState:Ljava/util/LinkedHashMap;

.field public navigatorStateToRestore:Landroid/os/Bundle;

.field public final onDestinationChangedListeners:Ljava/util/ArrayList;

.field public final parentToChildCount:Ljava/util/LinkedHashMap;

.field public popFromBackStackHandler:Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;

.field public final updateOnBackPressedCallbackEnabledCallback:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

.field public viewModel:Landroidx/navigation/NavControllerViewModel;

.field public final visibleEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavController$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavHostController;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->updateOnBackPressedCallbackEnabledCallback:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    new-instance p1, Lkotlin/collections/ArrayDeque;

    .line 9
    .line 10
    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 14
    .line 15
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->_currentBackStack:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_visibleEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/StateFlowImpl;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->visibleEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 34
    .line 35
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->childToParentEntries:Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    new-instance p1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->onDestinationChangedListeners:Ljava/util/ArrayList;

    .line 69
    .line 70
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 71
    .line 72
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 73
    .line 74
    new-instance p1, Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    const/4 p2, 0x2

    .line 77
    invoke-direct {p1, p2, p0}, Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleObserver:Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    new-instance p1, Landroidx/navigation/NavigatorProvider;

    .line 83
    .line 84
    invoke-direct {p1}, Landroidx/navigation/NavigatorProvider;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 88
    .line 89
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->entrySavedState:Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    new-instance p1, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackEntriesToDispatch:Ljava/util/ArrayList;

    .line 109
    .line 110
    const/4 p1, 0x0

    .line 111
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 112
    .line 113
    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_currentBackStackEntryFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 118
    .line 119
    return-void
.end method

.method public static findDestinationComprehensive$navigation_runtime_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 2
    .line 3
    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 4
    .line 5
    if-ne v0, p0, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 16
    .line 17
    iget-object v1, p2, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    return-object p1

    .line 26
    :cond_1
    instance-of v0, p1, Landroidx/navigation/NavGraph;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    move-object v0, p1

    .line 31
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-object p1, v0, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 43
    .line 44
    invoke-virtual {p1, p0, v0, p2, p3}, Lorg/apache/james/mime4j/stream/RawField;->findNodeComprehensive$navigation_common_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static synthetic popEntryFromBackStack$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1, v0}, Landroidx/navigation/internal/NavControllerImpl;->popEntryFromBackStack$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavHostController;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/navigation/NavHostController;->navContext:Landroidx/navigation/internal/NavContext;

    .line 4
    .line 5
    iget-object v1, p3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 6
    .line 7
    instance-of v2, v1, Landroidx/navigation/FloatingWindow;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    iget-object v4, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 27
    .line 28
    instance-of v2, v2, Landroidx/navigation/FloatingWindow;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 37
    .line 38
    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 39
    .line 40
    iget-object v2, v2, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 41
    .line 42
    iget v2, v2, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-virtual {p0, v2, v3, v5}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    :cond_1
    new-instance v2, Lkotlin/collections/ArrayDeque;

    .line 52
    .line 53
    invoke-direct {v2}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 54
    .line 55
    .line 56
    instance-of v5, p1, Landroidx/navigation/NavGraph;

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    if-eqz v5, :cond_7

    .line 60
    .line 61
    move-object v5, v1

    .line 62
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v5, v5, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 66
    .line 67
    if-eqz v5, :cond_6

    .line 68
    .line 69
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    invoke-interface {p4, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    :cond_3
    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_4

    .line 82
    .line 83
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    move-object v9, v8

    .line 88
    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    .line 89
    .line 90
    iget-object v9, v9, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 91
    .line 92
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_3

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    move-object v8, v6

    .line 100
    :goto_0
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 101
    .line 102
    if-nez v8, :cond_5

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    iget-object v8, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    .line 109
    .line 110
    invoke-static {v0, v5, p2, v7, v8}, Landroidx/collection/internal/Lock;->create$default(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    :cond_5
    invoke-virtual {v2, v8}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-nez v7, :cond_6

    .line 122
    .line 123
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 128
    .line 129
    iget-object v7, v7, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 130
    .line 131
    if-ne v7, v5, :cond_6

    .line 132
    .line 133
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 138
    .line 139
    invoke-static {p0, v7}, Landroidx/navigation/internal/NavControllerImpl;->popEntryFromBackStack$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    if-eqz v5, :cond_7

    .line 143
    .line 144
    if-ne v5, p1, :cond_2

    .line 145
    .line 146
    :cond_7
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_8

    .line 151
    .line 152
    move-object v5, v1

    .line 153
    goto :goto_1

    .line 154
    :cond_8
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 159
    .line 160
    iget-object v5, v5, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 161
    .line 162
    :cond_9
    :goto_1
    if-eqz v5, :cond_e

    .line 163
    .line 164
    iget-object v7, v5, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 165
    .line 166
    iget v7, v7, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 167
    .line 168
    invoke-virtual {p0, v7, v5}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    if-eq v7, v5, :cond_e

    .line 173
    .line 174
    iget-object v5, v5, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 175
    .line 176
    if-eqz v5, :cond_9

    .line 177
    .line 178
    if-eqz p2, :cond_a

    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-ne v7, v3, :cond_a

    .line 185
    .line 186
    move-object v7, v6

    .line 187
    goto :goto_2

    .line 188
    :cond_a
    move-object v7, p2

    .line 189
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    invoke-interface {p4, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    :cond_b
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-eqz v9, :cond_c

    .line 202
    .line 203
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    move-object v10, v9

    .line 208
    check-cast v10, Landroidx/navigation/NavBackStackEntry;

    .line 209
    .line 210
    iget-object v10, v10, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 211
    .line 212
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-eqz v10, :cond_b

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_c
    move-object v9, v6

    .line 220
    :goto_3
    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    .line 221
    .line 222
    if-nez v9, :cond_d

    .line 223
    .line 224
    invoke-virtual {v5, v7}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    iget-object v9, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    .line 233
    .line 234
    invoke-static {v0, v5, v7, v8, v9}, Landroidx/collection/internal/Lock;->create$default(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    :cond_d
    invoke-virtual {v2, v9}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_e
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_f

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_f
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 254
    .line 255
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 256
    .line 257
    :goto_4
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-nez v3, :cond_10

    .line 262
    .line 263
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 268
    .line 269
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 270
    .line 271
    instance-of v3, v3, Landroidx/navigation/NavGraph;

    .line 272
    .line 273
    if-eqz v3, :cond_10

    .line 274
    .line 275
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 280
    .line 281
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    check-cast v3, Landroidx/navigation/NavGraph;

    .line 287
    .line 288
    iget-object v3, v3, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 289
    .line 290
    iget-object v3, v3, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v3, Landroidx/collection/SparseArrayCompat;

    .line 293
    .line 294
    iget-object v5, v1, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 295
    .line 296
    iget v5, v5, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 297
    .line 298
    invoke-virtual {v3, v5}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    if-nez v3, :cond_10

    .line 303
    .line 304
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 309
    .line 310
    invoke-static {p0, v3}, Landroidx/navigation/internal/NavControllerImpl;->popEntryFromBackStack$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_10
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 319
    .line 320
    if-nez v1, :cond_11

    .line 321
    .line 322
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 327
    .line 328
    :cond_11
    if-eqz v1, :cond_12

    .line 329
    .line 330
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_12
    move-object v1, v6

    .line 334
    :goto_5
    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 335
    .line 336
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_16

    .line 341
    .line 342
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    invoke-interface {p4, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 347
    .line 348
    .line 349
    move-result-object p4

    .line 350
    :cond_13
    invoke-interface {p4}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_14

    .line 355
    .line 356
    invoke-interface {p4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    move-object v3, v1

    .line 361
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 362
    .line 363
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 364
    .line 365
    iget-object v5, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 366
    .line 367
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    if-eqz v3, :cond_13

    .line 375
    .line 376
    move-object v6, v1

    .line 377
    :cond_14
    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 378
    .line 379
    if-nez v6, :cond_15

    .line 380
    .line 381
    iget-object p4, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 382
    .line 383
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, p2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 392
    .line 393
    .line 394
    move-result-object p2

    .line 395
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    .line 400
    .line 401
    invoke-static {v0, p4, p2, v1, v3}, Landroidx/collection/internal/Lock;->create$default(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    :cond_15
    invoke-virtual {v2, v6}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    :cond_16
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object p2

    .line 412
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result p4

    .line 416
    if-eqz p4, :cond_18

    .line 417
    .line 418
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object p4

    .line 422
    check-cast p4, Landroidx/navigation/NavBackStackEntry;

    .line 423
    .line 424
    iget-object v0, p4, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 425
    .line 426
    iget-object v0, v0, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 427
    .line 428
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 429
    .line 430
    invoke-virtual {v1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/LinkedHashMap;

    .line 435
    .line 436
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    if-eqz v0, :cond_17

    .line 441
    .line 442
    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 443
    .line 444
    invoke-virtual {v0, p4}, Landroidx/navigation/NavController$NavControllerNavigatorState;->addInternal(Landroidx/navigation/NavBackStackEntry;)V

    .line 445
    .line 446
    .line 447
    goto :goto_6

    .line 448
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    const-string p2, "NavigatorBackStack for "

    .line 451
    .line 452
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-object p1, p1, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 456
    .line 457
    const-string p2, " should already be created"

    .line 458
    .line 459
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :cond_18
    invoke-virtual {v4, v2}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4, p3}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    invoke-static {v2, p3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    :cond_19
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    .line 483
    .line 484
    move-result p2

    .line 485
    if-eqz p2, :cond_1a

    .line 486
    .line 487
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object p2

    .line 491
    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 492
    .line 493
    iget-object p3, p2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 494
    .line 495
    iget-object p3, p3, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 496
    .line 497
    if-eqz p3, :cond_19

    .line 498
    .line 499
    iget-object p3, p3, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 500
    .line 501
    iget p3, p3, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 502
    .line 503
    invoke-virtual {p0, p3}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(I)Landroidx/navigation/NavBackStackEntry;

    .line 504
    .line 505
    .line 506
    move-result-object p3

    .line 507
    invoke-virtual {p0, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->linkChildToParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 508
    .line 509
    .line 510
    goto :goto_7

    .line 511
    :cond_1a
    return-void
.end method

.method public final dispatchOnDestinationChanged$navigation_runtime_release()Z
    .locals 10

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 16
    .line 17
    instance-of v1, v1, Landroidx/navigation/NavGraph;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/navigation/internal/NavControllerImpl;->popEntryFromBackStack$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackEntriesToDispatch:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    iget v3, p0, Landroidx/navigation/internal/NavControllerImpl;->dispatchReentrantCount:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    add-int/2addr v3, v4

    .line 48
    iput v3, p0, Landroidx/navigation/internal/NavControllerImpl;->dispatchReentrantCount:I

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->updateBackStackLifecycle$navigation_runtime_release()V

    .line 51
    .line 52
    .line 53
    iget v3, p0, Landroidx/navigation/internal/NavControllerImpl;->dispatchReentrantCount:I

    .line 54
    .line 55
    add-int/lit8 v3, v3, -0x1

    .line 56
    .line 57
    iput v3, p0, Landroidx/navigation/internal/NavControllerImpl;->dispatchReentrantCount:I

    .line 58
    .line 59
    if-nez v3, :cond_4

    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 83
    .line 84
    iget-object v5, p0, Landroidx/navigation/internal/NavControllerImpl;->onDestinationChangedListeners:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_2

    .line 99
    .line 100
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;

    .line 105
    .line 106
    iget-object v7, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 107
    .line 108
    iget-object v8, v3, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 109
    .line 110
    invoke-virtual {v8}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    iget-object v9, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavHostController;

    .line 115
    .line 116
    invoke-virtual {v6, v9, v7, v8}, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavHostController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    iget-object v5, p0, Landroidx/navigation/internal/NavControllerImpl;->_currentBackStackEntryFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 121
    .line 122
    invoke-virtual {v5, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_currentBackStack:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    invoke-virtual {v0, v3, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->populateVisibleEntries$navigation_runtime_release()Ljava/util/ArrayList;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_visibleEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v3, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_4
    if-eqz v1, :cond_5

    .line 153
    .line 154
    return v4

    .line 155
    :cond_5
    const/4 p0, 0x0

    .line 156
    return p0
.end method

.method public final executePopOperations$navigation_runtime_release(Ljava/util/ArrayList;Landroidx/navigation/NavDestination;ZZ)Z
    .locals 9

    .line 1
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v5, Lkotlin/collections/ArrayDeque;

    .line 7
    .line 8
    invoke-direct {v5}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v7, v0

    .line 27
    check-cast v7, Landroidx/navigation/Navigator;

    .line 28
    .line 29
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 35
    .line 36
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v8, v0

    .line 41
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 42
    .line 43
    new-instance v0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    move-object v3, p0

    .line 46
    move v4, p4

    .line 47
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/internal/NavControllerImpl;ZLkotlin/collections/ArrayDeque;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iput-object v0, v3, Landroidx/navigation/internal/NavControllerImpl;->popFromBackStackHandler:Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-virtual {v7, v8, v4}, Landroidx/navigation/Navigator;->popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 59
    .line 60
    .line 61
    iput-object v6, v3, Landroidx/navigation/internal/NavControllerImpl;->popFromBackStackHandler:Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    iget-boolean p0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 64
    .line 65
    if-nez p0, :cond_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    move-object p0, v3

    .line 69
    move p4, v4

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move-object v3, p0

    .line 72
    move v4, p4

    .line 73
    :goto_1
    if-eqz v4, :cond_5

    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    iget-object p1, v3, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    if-nez p3, :cond_3

    .line 79
    .line 80
    new-instance p3, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    const/16 p4, 0x1a

    .line 83
    .line 84
    invoke-direct {p3, p4}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-static {p2, p3}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    new-instance p3, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda4;

    .line 92
    .line 93
    invoke-direct {p3, v3, p0}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda4;-><init>(Landroidx/navigation/internal/NavControllerImpl;I)V

    .line 94
    .line 95
    .line 96
    new-instance p4, Lkotlin/sequences/TakeWhileSequence;

    .line 97
    .line 98
    invoke-direct {p4, p2, p3, p0}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 99
    .line 100
    .line 101
    new-instance p2, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 102
    .line 103
    invoke-direct {p2, p4}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    invoke-virtual {p2}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-eqz p3, :cond_3

    .line 111
    .line 112
    invoke-virtual {p2}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    check-cast p3, Landroidx/navigation/NavDestination;

    .line 117
    .line 118
    iget-object p3, p3, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 119
    .line 120
    iget p3, p3, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 121
    .line 122
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p4

    .line 130
    check-cast p4, Landroidx/navigation/NavBackStackEntryState;

    .line 131
    .line 132
    if-eqz p4, :cond_2

    .line 133
    .line 134
    iget-object p4, p4, Landroidx/navigation/NavBackStackEntryState;->impl:Lkotlinx/coroutines/flow/SharingConfig;

    .line 135
    .line 136
    iget-object p4, p4, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p4, Ljava/lang/String;

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_2
    move-object p4, v6

    .line 142
    :goto_3
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-nez p2, :cond_5

    .line 151
    .line 152
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, Landroidx/navigation/NavBackStackEntryState;

    .line 157
    .line 158
    iget-object p2, p2, Landroidx/navigation/NavBackStackEntryState;->impl:Lkotlinx/coroutines/flow/SharingConfig;

    .line 159
    .line 160
    iget p3, p2, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 161
    .line 162
    invoke-virtual {v3, p3, v6}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    new-instance p4, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    const/16 v0, 0x1b

    .line 169
    .line 170
    invoke-direct {p4, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 171
    .line 172
    .line 173
    invoke-static {p3, p4}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    new-instance p4, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda4;

    .line 178
    .line 179
    const/4 v0, 0x1

    .line 180
    invoke-direct {p4, v3, v0}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda4;-><init>(Landroidx/navigation/internal/NavControllerImpl;I)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lkotlin/sequences/TakeWhileSequence;

    .line 184
    .line 185
    invoke-direct {v0, p3, p4, p0}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 186
    .line 187
    .line 188
    new-instance p0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 189
    .line 190
    invoke-direct {p0, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    .line 191
    .line 192
    .line 193
    :goto_4
    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    if-eqz p3, :cond_4

    .line 198
    .line 199
    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    check-cast p3, Landroidx/navigation/NavDestination;

    .line 204
    .line 205
    iget-object p3, p3, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 206
    .line 207
    iget p3, p3, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 208
    .line 209
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    iget-object p4, p2, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p4, Ljava/lang/String;

    .line 216
    .line 217
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_4
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    iget-object p1, p2, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast p1, Ljava/lang/String;

    .line 228
    .line 229
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    if-eqz p0, :cond_5

    .line 234
    .line 235
    iget-object p0, p2, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast p0, Ljava/lang/String;

    .line 238
    .line 239
    iget-object p1, v3, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/LinkedHashMap;

    .line 240
    .line 241
    invoke-interface {p1, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    :cond_5
    iget-object p0, v3, Landroidx/navigation/internal/NavControllerImpl;->updateOnBackPressedCallbackEnabledCallback:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 245
    .line 246
    invoke-virtual {p0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    iget-boolean p0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 250
    .line 251
    return p0
.end method

.method public final findDestination$navigation_runtime_release(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object v1, v0, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 8
    .line 9
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 10
    .line 11
    if-ne v1, p1, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p2, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    return-object v0

    .line 29
    :cond_2
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 40
    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :cond_4
    const/4 p0, 0x0

    .line 49
    invoke-static {p1, v0, p2, p0}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public final getBackStackEntry$navigation_runtime_release(I)Landroidx/navigation/NavBackStackEntry;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v2, v1

    .line 22
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 23
    .line 24
    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 27
    .line 28
    iget v2, v2, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 29
    .line 30
    if-ne v2, p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_0
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_2
    const-string v0, "No destination with ID "

    .line 40
    .line 41
    const-string v1, " is on the NavController\'s back stack. The current destination is "

    .line 42
    .line 43
    invoke-static {p1, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public final getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string p0, "You must call setGraph() before calling getGraph()"

    .line 10
    .line 11
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :cond_1
    instance-of p0, v0, Landroidx/navigation/NavGraph;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    move-object p0, v0

    .line 25
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p0, 0x0

    .line 29
    :goto_0
    if-nez p0, :cond_3

    .line 30
    .line 31
    iget-object p0, v0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :cond_3
    return-object p0
.end method

.method public final linkChildToParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->childToParentEntries:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Landroidx/navigation/internal/AtomicInt;

    .line 15
    .line 16
    invoke-direct {p1}, Landroidx/navigation/internal/AtomicInt;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    check-cast p0, Landroidx/navigation/internal/AtomicInt;

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/navigation/internal/AtomicInt;->atomicInt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V
    .locals 25

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v6, p3

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, v3, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 11
    .line 12
    iget-object v7, v2, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 36
    .line 37
    iput-boolean v5, v4, Landroidx/navigation/NavController$NavControllerNavigatorState;->isNavigating:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v4, -0x1

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    iget-boolean v9, v6, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 49
    .line 50
    iget-boolean v10, v6, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 51
    .line 52
    iget-object v11, v6, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v11, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2, v11, v10, v9}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(Ljava/lang/String;ZZ)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget v11, v6, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 62
    .line 63
    if-eq v11, v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2, v11, v10, v9}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 v9, 0x0

    .line 71
    :goto_1
    invoke-virtual/range {p1 .. p2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    iget-boolean v11, v6, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 78
    .line 79
    if-ne v11, v5, :cond_3

    .line 80
    .line 81
    iget v11, v0, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 82
    .line 83
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    iget-object v12, v2, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/LinkedHashMap;

    .line 88
    .line 89
    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    if-eqz v11, :cond_3

    .line 94
    .line 95
    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 96
    .line 97
    invoke-virtual {v2, v0, v10, v6}, Landroidx/navigation/internal/NavControllerImpl;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 102
    .line 103
    const/16 v23, 0x0

    .line 104
    .line 105
    goto/16 :goto_9

    .line 106
    .line 107
    :cond_3
    iget-object v11, v2, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 108
    .line 109
    if-eqz v6, :cond_f

    .line 110
    .line 111
    iget-boolean v12, v6, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 112
    .line 113
    if-ne v12, v5, :cond_f

    .line 114
    .line 115
    iget-object v12, v2, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 116
    .line 117
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    check-cast v13, Landroidx/navigation/NavBackStackEntry;

    .line 122
    .line 123
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    invoke-virtual {v12, v14}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    :cond_4
    invoke-interface {v14}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    if-eqz v15, :cond_5

    .line 136
    .line 137
    invoke-interface {v14}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    check-cast v15, Landroidx/navigation/NavBackStackEntry;

    .line 142
    .line 143
    iget-object v15, v15, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 144
    .line 145
    if-ne v15, v3, :cond_4

    .line 146
    .line 147
    invoke-interface {v14}, Ljava/util/ListIterator;->nextIndex()I

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    goto :goto_2

    .line 152
    :cond_5
    move v14, v4

    .line 153
    :goto_2
    if-ne v14, v4, :cond_6

    .line 154
    .line 155
    goto/16 :goto_7

    .line 156
    .line 157
    :cond_6
    instance-of v4, v3, Landroidx/navigation/NavGraph;

    .line 158
    .line 159
    if-eqz v4, :cond_9

    .line 160
    .line 161
    sget v0, Landroidx/navigation/NavGraph;->$r8$clinit:I

    .line 162
    .line 163
    move-object v0, v3

    .line 164
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 165
    .line 166
    new-instance v4, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    const/16 v13, 0xf

    .line 169
    .line 170
    invoke-direct {v4, v13}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v4}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-instance v4, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    const/16 v13, 0x1c

    .line 180
    .line 181
    invoke-direct {v4, v13}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 182
    .line 183
    .line 184
    new-instance v13, Lkotlin/sequences/TakeWhileSequence;

    .line 185
    .line 186
    const/4 v15, 0x2

    .line 187
    invoke-direct {v13, v0, v4, v15}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 188
    .line 189
    .line 190
    invoke-static {v13}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget v4, v12, Lkotlin/collections/ArrayDeque;->size:I

    .line 195
    .line 196
    sub-int/2addr v4, v14

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-eq v4, v13, :cond_7

    .line 202
    .line 203
    goto/16 :goto_7

    .line 204
    .line 205
    :cond_7
    iget v4, v12, Lkotlin/collections/ArrayDeque;->size:I

    .line 206
    .line 207
    invoke-virtual {v12, v14, v4}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    new-instance v13, Ljava/util/ArrayList;

    .line 212
    .line 213
    const/16 v15, 0xa

    .line 214
    .line 215
    invoke-static {v4, v15}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    if-eqz v15, :cond_8

    .line 231
    .line 232
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v15

    .line 236
    check-cast v15, Landroidx/navigation/NavBackStackEntry;

    .line 237
    .line 238
    iget-object v15, v15, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 239
    .line 240
    iget-object v15, v15, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 241
    .line 242
    iget v15, v15, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 243
    .line 244
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_8
    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_a

    .line 257
    .line 258
    goto/16 :goto_7

    .line 259
    .line 260
    :cond_9
    if-eqz v13, :cond_f

    .line 261
    .line 262
    iget-object v4, v13, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 263
    .line 264
    if-eqz v4, :cond_f

    .line 265
    .line 266
    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 267
    .line 268
    iget-object v4, v4, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 269
    .line 270
    iget v4, v4, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 271
    .line 272
    if-ne v0, v4, :cond_f

    .line 273
    .line 274
    :cond_a
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 275
    .line 276
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 277
    .line 278
    .line 279
    :goto_4
    invoke-virtual {v12}, Lkotlin/collections/AbstractMutableList;->size()I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    sub-int/2addr v4, v5

    .line 284
    if-lt v4, v14, :cond_b

    .line 285
    .line 286
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 291
    .line 292
    invoke-virtual {v2, v4}, Landroidx/navigation/internal/NavControllerImpl;->unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)V

    .line 293
    .line 294
    .line 295
    new-instance v15, Landroidx/navigation/NavBackStackEntry;

    .line 296
    .line 297
    iget-object v13, v4, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 298
    .line 299
    move-object/from16 v5, p2

    .line 300
    .line 301
    invoke-virtual {v13, v5}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 302
    .line 303
    .line 304
    move-result-object v18

    .line 305
    iget-object v13, v4, Landroidx/navigation/NavBackStackEntry;->context:Landroidx/navigation/internal/NavContext;

    .line 306
    .line 307
    iget-object v8, v4, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 308
    .line 309
    move-object/from16 v24, v1

    .line 310
    .line 311
    iget-object v1, v4, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 312
    .line 313
    move-object/from16 v19, v1

    .line 314
    .line 315
    iget-object v1, v4, Landroidx/navigation/NavBackStackEntry;->viewModelStoreProvider:Landroidx/navigation/NavControllerViewModel;

    .line 316
    .line 317
    move-object/from16 v20, v1

    .line 318
    .line 319
    iget-object v1, v4, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 320
    .line 321
    move-object/from16 v21, v1

    .line 322
    .line 323
    iget-object v1, v4, Landroidx/navigation/NavBackStackEntry;->savedState:Landroid/os/Bundle;

    .line 324
    .line 325
    move-object/from16 v22, v1

    .line 326
    .line 327
    move-object/from16 v17, v8

    .line 328
    .line 329
    move-object/from16 v16, v13

    .line 330
    .line 331
    invoke-direct/range {v15 .. v22}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 332
    .line 333
    .line 334
    iget-object v1, v4, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 335
    .line 336
    iget-object v8, v15, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 337
    .line 338
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    iput-object v1, v8, Landroidx/navigation/internal/NavBackStackEntryImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 345
    .line 346
    iget-object v1, v4, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 347
    .line 348
    iget-object v1, v1, Landroidx/navigation/internal/NavBackStackEntryImpl;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    .line 349
    .line 350
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    iput-object v1, v8, Landroidx/navigation/internal/NavBackStackEntryImpl;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    .line 354
    .line 355
    invoke-virtual {v8}, Landroidx/navigation/internal/NavBackStackEntryImpl;->updateState$navigation_common_release()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v15}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    move-object/from16 v1, v24

    .line 362
    .line 363
    const/4 v5, 0x1

    .line 364
    goto :goto_4

    .line 365
    :cond_b
    move-object/from16 v24, v1

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-eqz v4, :cond_d

    .line 376
    .line 377
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 382
    .line 383
    iget-object v5, v4, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 384
    .line 385
    iget-object v5, v5, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 386
    .line 387
    if-eqz v5, :cond_c

    .line 388
    .line 389
    iget-object v5, v5, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 390
    .line 391
    iget v5, v5, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 392
    .line 393
    invoke-virtual {v2, v5}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(I)Landroidx/navigation/NavBackStackEntry;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    invoke-virtual {v2, v4, v5}, Landroidx/navigation/internal/NavControllerImpl;->linkChildToParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 398
    .line 399
    .line 400
    :cond_c
    invoke-virtual {v12, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_d
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_e

    .line 413
    .line 414
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 419
    .line 420
    iget-object v4, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 421
    .line 422
    iget-object v4, v4, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 423
    .line 424
    invoke-virtual {v11, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-virtual {v4, v1}, Landroidx/navigation/Navigator;->onLaunchSingleTop(Landroidx/navigation/NavBackStackEntry;)V

    .line 429
    .line 430
    .line 431
    goto :goto_6

    .line 432
    :cond_e
    const/16 v23, 0x1

    .line 433
    .line 434
    goto :goto_8

    .line 435
    :cond_f
    :goto_7
    move-object/from16 v24, v1

    .line 436
    .line 437
    const/16 v23, 0x0

    .line 438
    .line 439
    :goto_8
    if-nez v23, :cond_10

    .line 440
    .line 441
    iget-object v0, v2, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavHostController;

    .line 442
    .line 443
    iget-object v0, v0, Landroidx/navigation/NavHostController;->navContext:Landroidx/navigation/internal/NavContext;

    .line 444
    .line 445
    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    iget-object v4, v2, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    .line 450
    .line 451
    invoke-static {v0, v3, v10, v1, v4}, Landroidx/collection/internal/Lock;->create$default(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    iget-object v1, v3, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 456
    .line 457
    invoke-virtual {v11, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 458
    .line 459
    .line 460
    move-result-object v8

    .line 461
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 462
    .line 463
    .line 464
    move-result-object v11

    .line 465
    new-instance v0, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;

    .line 466
    .line 467
    const/4 v5, 0x0

    .line 468
    move-object v4, v10

    .line 469
    move-object/from16 v1, v24

    .line 470
    .line 471
    invoke-direct/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 472
    .line 473
    .line 474
    iput-object v0, v2, Landroidx/navigation/internal/NavControllerImpl;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 475
    .line 476
    invoke-virtual {v8, v11, v6}, Landroidx/navigation/Navigator;->navigate(Ljava/util/List;Landroidx/navigation/NavOptions;)V

    .line 477
    .line 478
    .line 479
    const/4 v0, 0x0

    .line 480
    iput-object v0, v2, Landroidx/navigation/internal/NavControllerImpl;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 481
    .line 482
    goto :goto_9

    .line 483
    :cond_10
    move-object/from16 v1, v24

    .line 484
    .line 485
    :goto_9
    iget-object v0, v2, Landroidx/navigation/internal/NavControllerImpl;->updateOnBackPressedCallbackEnabledCallback:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 486
    .line 487
    invoke-virtual {v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    check-cast v0, Ljava/lang/Iterable;

    .line 495
    .line 496
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    if-eqz v3, :cond_11

    .line 505
    .line 506
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    check-cast v3, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 511
    .line 512
    const/4 v4, 0x0

    .line 513
    iput-boolean v4, v3, Landroidx/navigation/NavController$NavControllerNavigatorState;->isNavigating:Z

    .line 514
    .line 515
    goto :goto_a

    .line 516
    :cond_11
    if-nez v9, :cond_13

    .line 517
    .line 518
    iget-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 519
    .line 520
    if-nez v0, :cond_13

    .line 521
    .line 522
    if-eqz v23, :cond_12

    .line 523
    .line 524
    goto :goto_b

    .line 525
    :cond_12
    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->updateBackStackLifecycle$navigation_runtime_release()V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :cond_13
    :goto_b
    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    .line 530
    .line 531
    .line 532
    return-void
.end method

.method public final navigate$navigation_runtime_release(Ljava/lang/String;Landroidx/navigation/NavOptions;)V
    .locals 4

    .line 533
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_3

    .line 534
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v0

    const/4 v1, 0x1

    .line 535
    invoke-virtual {v0, p1, v1, v0}, Landroidx/navigation/NavGraph;->matchRouteComprehensive(Ljava/lang/String;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 536
    iget-object p1, v0, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    .line 537
    iget-object v0, v0, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 538
    invoke-virtual {p1, v0}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 539
    new-array v1, v0, [Lkotlin/Pair;

    .line 540
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 541
    :cond_0
    sget v1, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 542
    iget-object v1, p1, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 543
    iget-object v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->route:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 544
    const-string v2, "android-app://androidx.navigation/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 545
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    .line 547
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v1, "android-support-nav:controller:deepLinkIntent"

    .line 550
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 551
    invoke-virtual {p0, p1, v0, p2}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    return-void

    .line 552
    :cond_2
    const-string p2, "Navigation destination that matches route "

    const-string v0, " cannot be found in the navigation graph "

    .line 553
    invoke-static {p2, p1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 554
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 555
    invoke-static {p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void

    .line 556
    :cond_3
    const-string p2, ". Navigation graph has not been set for NavController "

    const/16 v0, 0x2e

    .line 557
    const-string v1, "Cannot navigate to "

    invoke-static {v1, p1, p2, p0, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public final popBackStackInternal$navigation_runtime_release(IZZ)Z
    .locals 7

    .line 245
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 246
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 248
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 250
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 251
    iget-object v4, v3, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    iget-object v5, v3, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 252
    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v6, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v4

    if-nez p2, :cond_2

    .line 253
    iget v6, v5, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    if-eq v6, p1, :cond_3

    .line 254
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_3
    iget v4, v5, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    if-ne v4, p1, :cond_1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_5

    .line 256
    sget p2, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 257
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavHostController;

    .line 258
    iget-object p0, p0, Landroidx/navigation/NavHostController;->navContext:Landroidx/navigation/internal/NavContext;

    .line 259
    invoke-static {p0, p1}, Landroidx/work/OperationKt;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object p0

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring popBackStack to destination "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as it was not found on the current back stack"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 261
    const-string p1, "NavController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 262
    :cond_5
    invoke-virtual {p0, v1, v3, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->executePopOperations$navigation_runtime_release(Ljava/util/ArrayList;Landroidx/navigation/NavDestination;ZZ)Z

    move-result p0

    return p0
.end method

.method public final popBackStackInternal$navigation_runtime_release(Ljava/lang/String;ZZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return v5

    .line 20
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-virtual {v3, v6}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v6, :cond_f

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    move-object v8, v6

    .line 45
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 46
    .line 47
    iget-object v9, v8, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 48
    .line 49
    iget-object v10, v8, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 50
    .line 51
    invoke-virtual {v10}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v9, v9, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 59
    .line 60
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v11, v9, Landroidx/navigation/internal/NavDestinationImpl;->route:Ljava/io/Serializable;

    .line 64
    .line 65
    check-cast v11, Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-eqz v11, :cond_2

    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_2
    invoke-virtual {v9, v1}, Landroidx/navigation/internal/NavDestinationImpl;->matchRoute$navigation_common_release(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    iget-object v9, v9, Landroidx/navigation/internal/NavDestinationImpl;->destination:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v9, Landroidx/navigation/NavDestination;

    .line 82
    .line 83
    if-eqz v11, :cond_3

    .line 84
    .line 85
    iget-object v12, v11, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move-object v12, v7

    .line 89
    :goto_0
    invoke-virtual {v9, v12}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-nez v9, :cond_4

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_4
    iget-object v9, v11, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 97
    .line 98
    if-eqz v10, :cond_c

    .line 99
    .line 100
    if-nez v9, :cond_5

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_5
    invoke-virtual {v9}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    check-cast v12, Ljava/lang/Iterable;

    .line 111
    .line 112
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    if-eqz v13, :cond_b

    .line 121
    .line 122
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    check-cast v13, Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10, v13}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    if-nez v14, :cond_7

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_7
    iget-object v14, v11, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    .line 139
    .line 140
    invoke-virtual {v14}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    check-cast v14, Landroidx/navigation/NavArgument;

    .line 149
    .line 150
    if-eqz v14, :cond_8

    .line 151
    .line 152
    iget-object v14, v14, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_8
    move-object v14, v7

    .line 156
    :goto_1
    if-eqz v14, :cond_9

    .line 157
    .line 158
    invoke-virtual {v14, v13, v9}, Landroidx/navigation/NavType;->get(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v15

    .line 162
    goto :goto_2

    .line 163
    :cond_9
    move-object v15, v7

    .line 164
    :goto_2
    if-eqz v14, :cond_a

    .line 165
    .line 166
    invoke-virtual {v14, v13, v10}, Landroidx/navigation/NavType;->get(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    goto :goto_3

    .line 171
    :cond_a
    move-object v13, v7

    .line 172
    :goto_3
    if-eqz v14, :cond_6

    .line 173
    .line 174
    invoke-virtual {v14, v15, v13}, Landroidx/navigation/NavType;->valueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v13

    .line 178
    if-nez v13, :cond_6

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_b
    :goto_4
    const/4 v9, 0x1

    .line 182
    goto :goto_6

    .line 183
    :cond_c
    :goto_5
    move v9, v5

    .line 184
    :goto_6
    if-nez v2, :cond_d

    .line 185
    .line 186
    if-nez v9, :cond_e

    .line 187
    .line 188
    :cond_d
    iget-object v8, v8, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 189
    .line 190
    iget-object v8, v8, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v10, v0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 193
    .line 194
    invoke-virtual {v10, v8}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_e
    if-eqz v9, :cond_1

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_f
    move-object v6, v7

    .line 205
    :goto_7
    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 206
    .line 207
    if-eqz v6, :cond_10

    .line 208
    .line 209
    iget-object v7, v6, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 210
    .line 211
    :cond_10
    if-nez v7, :cond_11

    .line 212
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v2, "Ignoring popBackStack to route "

    .line 216
    .line 217
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v1, " as it was not found on the current back stack"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const-string v1, "NavController"

    .line 233
    .line 234
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    return v5

    .line 238
    :cond_11
    move/from16 v1, p3

    .line 239
    .line 240
    invoke-virtual {v0, v4, v7, v2, v1}, Landroidx/navigation/internal/NavControllerImpl;->executePopOperations$navigation_runtime_release(Ljava/util/ArrayList;Landroidx/navigation/NavDestination;ZZ)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    return v0
.end method

.method public final popEntryFromBackStack$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 11
    .line 12
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p1, Landroidx/navigation/NavController$NavControllerNavigatorState;->transitionsInProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 47
    .line 48
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/util/Set;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-ne p1, v0, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 73
    :goto_0
    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 74
    .line 75
    iget-object p1, p1, Landroidx/navigation/internal/NavBackStackEntryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 76
    .line 77
    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 78
    .line 79
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-ltz p1, :cond_4

    .line 86
    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Landroidx/navigation/NavBackStackEntryState;

    .line 93
    .line 94
    invoke-direct {p1, v1}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    if-nez v0, :cond_3

    .line 101
    .line 102
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Landroidx/navigation/internal/NavControllerImpl;->unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {v1, v2}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    :goto_1
    if-nez p2, :cond_5

    .line 115
    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    .line 119
    .line 120
    if-eqz p0, :cond_5

    .line 121
    .line 122
    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Landroidx/navigation/NavControllerViewModel;->viewModelStores:Ljava/util/LinkedHashMap;

    .line 128
    .line 129
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Landroidx/lifecycle/ViewModelStore;

    .line 134
    .line 135
    if-eqz p0, :cond_5

    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 138
    .line 139
    .line 140
    :cond_5
    return-void

    .line 141
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string p2, "Attempted to pop "

    .line 144
    .line 145
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 154
    .line 155
    const-string p2, ", which is not the top of the back stack ("

    .line 156
    .line 157
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const/16 p1, 0x29

    .line 164
    .line 165
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1
.end method

.method public final populateVisibleEntries$navigation_runtime_release()Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 31
    .line 32
    iget-object v2, v2, Landroidx/navigation/NavController$NavControllerNavigatorState;->transitionsInProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 33
    .line 34
    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 35
    .line 36
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Iterable;

    .line 41
    .line 42
    new-instance v4, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    move-object v6, v5

    .line 62
    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 63
    .line 64
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_0

    .line 69
    .line 70
    iget-object v6, v6, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 71
    .line 72
    iget-object v6, v6, Landroidx/navigation/internal/NavBackStackEntryImpl;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    .line 73
    .line 74
    invoke-virtual {v6, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-ltz v6, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    move-object v4, v2

    .line 111
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 112
    .line 113
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_4

    .line 118
    .line 119
    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 120
    .line 121
    iget-object v4, v4, Landroidx/navigation/internal/NavBackStackEntryImpl;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    .line 122
    .line 123
    invoke-virtual {v4, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-ltz v4, :cond_4

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 134
    .line 135
    .line 136
    new-instance p0, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_7

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    move-object v2, v1

    .line 156
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 157
    .line 158
    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 159
    .line 160
    instance-of v2, v2, Landroidx/navigation/NavGraph;

    .line 161
    .line 162
    if-nez v2, :cond_6

    .line 163
    .line 164
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    return-object p0
.end method

.method public final restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)Z
    .locals 15

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Iterable;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-ne v3, v4, :cond_1

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lkotlin/collections/ArrayDeque;

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavHostController;

    .line 74
    .line 75
    iget-object v6, v1, Landroidx/navigation/NavHostController;->navContext:Landroidx/navigation/internal/NavContext;

    .line 76
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 83
    .line 84
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 89
    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 93
    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    :cond_3
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    :cond_4
    const/4 v14, 0x0

    .line 101
    if-eqz v0, :cond_8

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_8

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Landroidx/navigation/NavBackStackEntryState;

    .line 118
    .line 119
    iget-object v7, v5, Landroidx/navigation/NavBackStackEntryState;->impl:Lkotlinx/coroutines/flow/SharingConfig;

    .line 120
    .line 121
    iget-object v5, v5, Landroidx/navigation/NavBackStackEntryState;->impl:Lkotlinx/coroutines/flow/SharingConfig;

    .line 122
    .line 123
    iget v7, v7, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 124
    .line 125
    invoke-static {v7, v3, v14, v4}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    if-eqz v7, :cond_7

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    iget-object v10, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object v3, v5, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v3, Landroid/os/Bundle;

    .line 146
    .line 147
    if-eqz v3, :cond_6

    .line 148
    .line 149
    iget-object v8, v6, Landroidx/navigation/internal/NavContext;->context:Landroid/content/Context;

    .line 150
    .line 151
    if-eqz v8, :cond_5

    .line 152
    .line 153
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    goto :goto_2

    .line 158
    :cond_5
    move-object v8, v14

    .line 159
    :goto_2
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 160
    .line 161
    .line 162
    move-object v8, v3

    .line 163
    goto :goto_3

    .line 164
    :cond_6
    move-object v8, v14

    .line 165
    :goto_3
    iget-object v3, v5, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 166
    .line 167
    move-object v11, v3

    .line 168
    check-cast v11, Ljava/lang/String;

    .line 169
    .line 170
    iget-object v3, v5, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 171
    .line 172
    move-object v12, v3

    .line 173
    check-cast v12, Landroid/os/Bundle;

    .line 174
    .line 175
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    new-instance v5, Landroidx/navigation/NavBackStackEntry;

    .line 179
    .line 180
    invoke-direct/range {v5 .. v12}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-object v3, v7

    .line 187
    goto :goto_1

    .line 188
    :cond_7
    sget p0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 189
    .line 190
    iget p0, v5, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 191
    .line 192
    invoke-static {v6, p0}, Landroidx/work/OperationKt;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    const-string v0, "Restore State failed: destination "

    .line 197
    .line 198
    const-string v1, " cannot be found from the current destination "

    .line 199
    .line 200
    invoke-static {v0, p0, v1, v3}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return v2

    .line 204
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    new-instance v3, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_a

    .line 223
    .line 224
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    move-object v7, v6

    .line 229
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 230
    .line 231
    iget-object v7, v7, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 232
    .line 233
    instance-of v7, v7, Landroidx/navigation/NavGraph;

    .line 234
    .line 235
    if-nez v7, :cond_9

    .line 236
    .line 237
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_d

    .line 250
    .line 251
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 256
    .line 257
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    check-cast v6, Ljava/util/List;

    .line 262
    .line 263
    if-eqz v6, :cond_b

    .line 264
    .line 265
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 270
    .line 271
    if-eqz v7, :cond_b

    .line 272
    .line 273
    iget-object v7, v7, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 274
    .line 275
    if-eqz v7, :cond_b

    .line 276
    .line 277
    iget-object v7, v7, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_b
    move-object v7, v14

    .line 281
    :goto_6
    iget-object v8, v5, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 282
    .line 283
    iget-object v8, v8, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 284
    .line 285
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    if-eqz v7, :cond_c

    .line 290
    .line 291
    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_c
    new-array v6, v4, [Landroidx/navigation/NavBackStackEntry;

    .line 296
    .line 297
    aput-object v5, v6, v2

    .line 298
    .line 299
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_d
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 308
    .line 309
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eqz v2, :cond_e

    .line 321
    .line 322
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    check-cast v2, Ljava/util/List;

    .line 327
    .line 328
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 333
    .line 334
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 335
    .line 336
    iget-object v3, v3, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 337
    .line 338
    iget-object v4, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 339
    .line 340
    invoke-virtual {v4, v3}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    .line 345
    .line 346
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 347
    .line 348
    .line 349
    new-instance v7, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;

    .line 350
    .line 351
    const/4 v13, 0x5

    .line 352
    move-object v11, p0

    .line 353
    move-object/from16 v12, p2

    .line 354
    .line 355
    move-object v9, v1

    .line 356
    invoke-direct/range {v7 .. v13}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 357
    .line 358
    .line 359
    iput-object v7, p0, Landroidx/navigation/internal/NavControllerImpl;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 360
    .line 361
    move-object/from16 v1, p3

    .line 362
    .line 363
    invoke-virtual {v3, v2, v1}, Landroidx/navigation/Navigator;->navigate(Ljava/util/List;Landroidx/navigation/NavOptions;)V

    .line 364
    .line 365
    .line 366
    iput-object v14, p0, Landroidx/navigation/internal/NavControllerImpl;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 367
    .line 368
    move-object v1, v9

    .line 369
    goto :goto_7

    .line 370
    :cond_e
    iget-boolean p0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 371
    .line 372
    return p0
.end method

.method public final setGraph$navigation_runtime_release(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 9
    .line 10
    iget-object v3, v1, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 23
    .line 24
    if-eq v4, v5, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "You cannot set a new graph on a NavController with entries on the back stack after the NavController has been destroyed. Please ensure that your NavHost has the same lifetime as your NavController."

    .line 28
    .line 29
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    iget-object v4, v1, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 34
    .line 35
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v6, 0x0

    .line 40
    if-nez v4, :cond_39

    .line 41
    .line 42
    iget-object v2, v1, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 43
    .line 44
    iget-object v4, v1, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    const/4 v15, 0x0

    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    new-instance v5, Ljava/util/ArrayList;

    .line 51
    .line 52
    iget-object v8, v1, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Ljava/util/Collection;

    .line 59
    .line 60
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v16

    .line 67
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_5

    .line 72
    .line 73
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    check-cast v8, Ljava/lang/Iterable;

    .line 91
    .line 92
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_2

    .line 101
    .line 102
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    check-cast v9, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 107
    .line 108
    iput-boolean v7, v9, Landroidx/navigation/NavController$NavControllerNavigatorState;->isNavigating:Z

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    new-instance v8, Landroidx/navigation/NavOptions;

    .line 112
    .line 113
    const/4 v13, -0x1

    .line 114
    const/4 v14, -0x1

    .line 115
    move v9, v5

    .line 116
    move-object v5, v8

    .line 117
    const/4 v8, -0x1

    .line 118
    const/4 v11, -0x1

    .line 119
    move v10, v9

    .line 120
    move v9, v6

    .line 121
    move v12, v10

    .line 122
    move v10, v6

    .line 123
    move/from16 v17, v12

    .line 124
    .line 125
    move v12, v11

    .line 126
    move-object/from16 v18, v3

    .line 127
    .line 128
    move/from16 v3, v17

    .line 129
    .line 130
    invoke-direct/range {v5 .. v14}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v3, v15, v5}, Landroidx/navigation/internal/NavControllerImpl;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    check-cast v8, Ljava/lang/Iterable;

    .line 142
    .line 143
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    if-eqz v9, :cond_3

    .line 152
    .line 153
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    check-cast v9, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 158
    .line 159
    iput-boolean v6, v9, Landroidx/navigation/NavController$NavControllerNavigatorState;->isNavigating:Z

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    if-eqz v5, :cond_4

    .line 163
    .line 164
    invoke-virtual {v1, v3, v7, v6}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    :cond_4
    move-object/from16 v3, v18

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_5
    move-object/from16 v18, v3

    .line 172
    .line 173
    iget-object v2, v2, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 174
    .line 175
    iget v2, v2, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 176
    .line 177
    const/4 v3, 0x1

    .line 178
    const/4 v5, 0x0

    .line 179
    invoke-virtual {v1, v2, v3, v5}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    move-object/from16 v18, v3

    .line 184
    .line 185
    :goto_4
    iput-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 186
    .line 187
    iget-object v2, v1, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavHostController;

    .line 188
    .line 189
    iget-object v3, v2, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 190
    .line 191
    iget-object v5, v2, Landroidx/navigation/NavHostController;->navContext:Landroidx/navigation/internal/NavContext;

    .line 192
    .line 193
    iget-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->navigatorStateToRestore:Landroid/os/Bundle;

    .line 194
    .line 195
    iget-object v8, v1, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 196
    .line 197
    if-eqz v0, :cond_a

    .line 198
    .line 199
    const-string v9, "android-support-nav:controller:navigatorState:names"

    .line 200
    .line 201
    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-eqz v10, :cond_a

    .line 206
    .line 207
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    if-eqz v10, :cond_9

    .line 212
    .line 213
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    :cond_7
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-eqz v10, :cond_a

    .line 222
    .line 223
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    check-cast v10, Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v8, v10}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    invoke-virtual {v0, v10}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    if-eqz v12, :cond_7

    .line 238
    .line 239
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    if-eqz v12, :cond_8

    .line 244
    .line 245
    invoke-virtual {v11, v12}, Landroidx/navigation/Navigator;->onRestoreState(Landroid/os/Bundle;)V

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_8
    invoke-static {v10}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v15

    .line 253
    :cond_9
    invoke-static {v9}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v15

    .line 257
    :cond_a
    iget-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->backStackToRestore:[Landroid/os/Bundle;

    .line 258
    .line 259
    const-string v9, " cannot be found from the current destination "

    .line 260
    .line 261
    if-eqz v0, :cond_12

    .line 262
    .line 263
    array-length v10, v0

    .line 264
    move v11, v6

    .line 265
    :goto_6
    if-ge v11, v10, :cond_11

    .line 266
    .line 267
    aget-object v12, v0, v11

    .line 268
    .line 269
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    const-class v13, Landroidx/navigation/NavBackStackEntryState;

    .line 273
    .line 274
    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 279
    .line 280
    .line 281
    const-string v13, "nav-entry-state:id"

    .line 282
    .line 283
    invoke-static {v13, v12}, Landroidx/work/Operation$State;->getString-impl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v25

    .line 287
    const-string v13, "nav-entry-state:destination-id"

    .line 288
    .line 289
    invoke-static {v13, v12}, Landroidx/work/Operation$State;->getInt-impl(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 290
    .line 291
    .line 292
    move-result v13

    .line 293
    const-string v14, "nav-entry-state:args"

    .line 294
    .line 295
    move/from16 v16, v7

    .line 296
    .line 297
    invoke-virtual {v12, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    if-eqz v7, :cond_10

    .line 302
    .line 303
    const-string v14, "nav-entry-state:saved-state"

    .line 304
    .line 305
    invoke-virtual {v12, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 306
    .line 307
    .line 308
    move-result-object v26

    .line 309
    if-eqz v26, :cond_f

    .line 310
    .line 311
    invoke-virtual {v1, v13, v15}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    .line 312
    .line 313
    .line 314
    move-result-object v21

    .line 315
    if-eqz v21, :cond_e

    .line 316
    .line 317
    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    .line 318
    .line 319
    .line 320
    move-result-object v23

    .line 321
    iget-object v12, v1, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    .line 322
    .line 323
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    iget-object v13, v5, Landroidx/navigation/internal/NavContext;->context:Landroid/content/Context;

    .line 330
    .line 331
    if-eqz v13, :cond_b

    .line 332
    .line 333
    invoke-virtual {v13}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 334
    .line 335
    .line 336
    move-result-object v13

    .line 337
    goto :goto_7

    .line 338
    :cond_b
    move-object v13, v15

    .line 339
    :goto_7
    invoke-virtual {v7, v13}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 340
    .line 341
    .line 342
    new-instance v19, Landroidx/navigation/NavBackStackEntry;

    .line 343
    .line 344
    move-object/from16 v20, v5

    .line 345
    .line 346
    move-object/from16 v22, v7

    .line 347
    .line 348
    move-object/from16 v24, v12

    .line 349
    .line 350
    invoke-direct/range {v19 .. v26}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v12, v19

    .line 354
    .line 355
    move-object/from16 v7, v21

    .line 356
    .line 357
    iget-object v7, v7, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v8, v7}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v13

    .line 367
    if-nez v13, :cond_c

    .line 368
    .line 369
    new-instance v13, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 370
    .line 371
    invoke-direct {v13, v2, v7}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/Navigator;)V

    .line 372
    .line 373
    .line 374
    invoke-interface {v4, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    :cond_c
    check-cast v13, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 378
    .line 379
    move-object/from16 v7, v18

    .line 380
    .line 381
    invoke-virtual {v7, v12}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v13, v12}, Landroidx/navigation/NavController$NavControllerNavigatorState;->addInternal(Landroidx/navigation/NavBackStackEntry;)V

    .line 385
    .line 386
    .line 387
    iget-object v13, v12, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 388
    .line 389
    iget-object v13, v13, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 390
    .line 391
    if-eqz v13, :cond_d

    .line 392
    .line 393
    iget-object v13, v13, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 394
    .line 395
    iget v13, v13, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 396
    .line 397
    invoke-virtual {v1, v13}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(I)Landroidx/navigation/NavBackStackEntry;

    .line 398
    .line 399
    .line 400
    move-result-object v13

    .line 401
    invoke-virtual {v1, v12, v13}, Landroidx/navigation/internal/NavControllerImpl;->linkChildToParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 402
    .line 403
    .line 404
    :cond_d
    add-int/lit8 v11, v11, 0x1

    .line 405
    .line 406
    move-object/from16 v18, v7

    .line 407
    .line 408
    move/from16 v7, v16

    .line 409
    .line 410
    goto/16 :goto_6

    .line 411
    .line 412
    :cond_e
    sget v0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 413
    .line 414
    invoke-static {v5, v13}, Landroidx/work/OperationKt;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    const-string v2, "Restoring the Navigation back stack failed: destination "

    .line 419
    .line 420
    invoke-static {v2, v0, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 429
    .line 430
    .line 431
    return-void

    .line 432
    :cond_f
    invoke-static {v14}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw v15

    .line 436
    :cond_10
    invoke-static {v14}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v15

    .line 440
    :cond_11
    move/from16 v16, v7

    .line 441
    .line 442
    move-object/from16 v7, v18

    .line 443
    .line 444
    iget-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->updateOnBackPressedCallbackEnabledCallback:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 445
    .line 446
    invoke-virtual {v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    iput-object v15, v1, Landroidx/navigation/internal/NavControllerImpl;->backStackToRestore:[Landroid/os/Bundle;

    .line 450
    .line 451
    goto :goto_8

    .line 452
    :cond_12
    move/from16 v16, v7

    .line 453
    .line 454
    move-object/from16 v7, v18

    .line 455
    .line 456
    :goto_8
    iget-object v0, v8, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/LinkedHashMap;

    .line 457
    .line 458
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    check-cast v0, Ljava/lang/Iterable;

    .line 467
    .line 468
    new-instance v8, Ljava/util/ArrayList;

    .line 469
    .line 470
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .line 472
    .line 473
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    :cond_13
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 478
    .line 479
    .line 480
    move-result v10

    .line 481
    if-eqz v10, :cond_14

    .line 482
    .line 483
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v10

    .line 487
    move-object v11, v10

    .line 488
    check-cast v11, Landroidx/navigation/Navigator;

    .line 489
    .line 490
    iget-boolean v11, v11, Landroidx/navigation/Navigator;->isAttached:Z

    .line 491
    .line 492
    if-nez v11, :cond_13

    .line 493
    .line 494
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    goto :goto_9

    .line 498
    :cond_14
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 503
    .line 504
    .line 505
    move-result v8

    .line 506
    if-eqz v8, :cond_16

    .line 507
    .line 508
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v8

    .line 512
    check-cast v8, Landroidx/navigation/Navigator;

    .line 513
    .line 514
    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v10

    .line 518
    if-nez v10, :cond_15

    .line 519
    .line 520
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    new-instance v10, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 524
    .line 525
    invoke-direct {v10, v2, v8}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/Navigator;)V

    .line 526
    .line 527
    .line 528
    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    :cond_15
    check-cast v10, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 532
    .line 533
    invoke-virtual {v8, v10}, Landroidx/navigation/Navigator;->onAttach(Landroidx/navigation/NavController$NavControllerNavigatorState;)V

    .line 534
    .line 535
    .line 536
    goto :goto_a

    .line 537
    :cond_16
    iget-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 538
    .line 539
    if-eqz v0, :cond_38

    .line 540
    .line 541
    invoke-virtual {v7}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    if-eqz v0, :cond_38

    .line 546
    .line 547
    iget-object v4, v2, Landroidx/navigation/NavHostController;->activity:Landroid/app/Activity;

    .line 548
    .line 549
    iget-boolean v0, v2, Landroidx/navigation/NavHostController;->deepLinkHandled:Z

    .line 550
    .line 551
    if-nez v0, :cond_37

    .line 552
    .line 553
    if-eqz v4, :cond_37

    .line 554
    .line 555
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    if-nez v7, :cond_17

    .line 560
    .line 561
    goto/16 :goto_19

    .line 562
    .line 563
    :cond_17
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 564
    .line 565
    .line 566
    move-result-object v8

    .line 567
    const-string v10, "NavController"

    .line 568
    .line 569
    if-eqz v8, :cond_18

    .line 570
    .line 571
    :try_start_0
    const-string v0, "android-support-nav:controller:deepLinkIds"

    .line 572
    .line 573
    invoke-virtual {v8, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 574
    .line 575
    .line 576
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    goto :goto_b

    .line 578
    :catch_0
    move-exception v0

    .line 579
    new-instance v11, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    const-string v12, "handleDeepLink() could not extract deepLink from "

    .line 582
    .line 583
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v11

    .line 593
    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    .line 595
    .line 596
    :cond_18
    move-object v0, v15

    .line 597
    :goto_b
    if-eqz v8, :cond_19

    .line 598
    .line 599
    const-string v11, "android-support-nav:controller:deepLinkArgs"

    .line 600
    .line 601
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 602
    .line 603
    .line 604
    move-result-object v11

    .line 605
    goto :goto_c

    .line 606
    :cond_19
    move-object v11, v15

    .line 607
    :goto_c
    new-array v12, v6, [Lkotlin/Pair;

    .line 608
    .line 609
    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v12

    .line 613
    check-cast v12, [Lkotlin/Pair;

    .line 614
    .line 615
    invoke-static {v12}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 616
    .line 617
    .line 618
    move-result-object v12

    .line 619
    if-eqz v8, :cond_1a

    .line 620
    .line 621
    const-string v13, "android-support-nav:controller:deepLinkExtras"

    .line 622
    .line 623
    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 624
    .line 625
    .line 626
    move-result-object v8

    .line 627
    goto :goto_d

    .line 628
    :cond_1a
    move-object v8, v15

    .line 629
    :goto_d
    if-eqz v8, :cond_1b

    .line 630
    .line 631
    invoke-virtual {v12, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 632
    .line 633
    .line 634
    :cond_1b
    if-eqz v0, :cond_1c

    .line 635
    .line 636
    array-length v8, v0

    .line 637
    if-nez v8, :cond_1e

    .line 638
    .line 639
    :cond_1c
    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    .line 640
    .line 641
    .line 642
    move-result-object v8

    .line 643
    new-instance v13, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 644
    .line 645
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 646
    .line 647
    .line 648
    move-result-object v14

    .line 649
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v6

    .line 653
    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v15

    .line 657
    invoke-direct {v13, v14, v6, v15}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v8, v13, v8}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Lcom/fsck/k9/backend/imap/ImapSync;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 661
    .line 662
    .line 663
    move-result-object v6

    .line 664
    if-eqz v6, :cond_1e

    .line 665
    .line 666
    iget-object v0, v6, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    .line 667
    .line 668
    const/4 v8, 0x0

    .line 669
    invoke-virtual {v0, v8}, Landroidx/navigation/NavDestination;->buildDeepLinkIds(Landroidx/navigation/NavDestination;)[I

    .line 670
    .line 671
    .line 672
    move-result-object v11

    .line 673
    iget-object v6, v6, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 674
    .line 675
    invoke-virtual {v0, v6}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    if-eqz v0, :cond_1d

    .line 680
    .line 681
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 682
    .line 683
    .line 684
    :cond_1d
    move-object v0, v11

    .line 685
    const/4 v11, 0x0

    .line 686
    :cond_1e
    if-eqz v0, :cond_37

    .line 687
    .line 688
    array-length v6, v0

    .line 689
    if-nez v6, :cond_1f

    .line 690
    .line 691
    goto/16 :goto_19

    .line 692
    .line 693
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    .line 695
    .line 696
    iget-object v6, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 697
    .line 698
    array-length v8, v0

    .line 699
    move-object v13, v6

    .line 700
    const/4 v6, 0x0

    .line 701
    :goto_e
    if-ge v6, v8, :cond_25

    .line 702
    .line 703
    aget v14, v0, v6

    .line 704
    .line 705
    if-nez v6, :cond_21

    .line 706
    .line 707
    iget-object v15, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 708
    .line 709
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    iget-object v15, v15, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 713
    .line 714
    iget v15, v15, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 715
    .line 716
    if-ne v15, v14, :cond_20

    .line 717
    .line 718
    iget-object v15, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 719
    .line 720
    goto :goto_f

    .line 721
    :cond_20
    const/4 v15, 0x0

    .line 722
    goto :goto_f

    .line 723
    :cond_21
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    iget-object v15, v13, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 727
    .line 728
    invoke-virtual {v15, v14}, Lorg/apache/james/mime4j/stream/RawField;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 729
    .line 730
    .line 731
    move-result-object v15

    .line 732
    :goto_f
    if-nez v15, :cond_22

    .line 733
    .line 734
    sget v6, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 735
    .line 736
    iget-object v6, v3, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavHostController;

    .line 737
    .line 738
    iget-object v6, v6, Landroidx/navigation/NavHostController;->navContext:Landroidx/navigation/internal/NavContext;

    .line 739
    .line 740
    invoke-static {v6, v14}, Landroidx/work/OperationKt;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v6

    .line 744
    goto :goto_11

    .line 745
    :cond_22
    array-length v14, v0

    .line 746
    add-int/lit8 v14, v14, -0x1

    .line 747
    .line 748
    if-eq v6, v14, :cond_24

    .line 749
    .line 750
    instance-of v14, v15, Landroidx/navigation/NavGraph;

    .line 751
    .line 752
    if-eqz v14, :cond_24

    .line 753
    .line 754
    check-cast v15, Landroidx/navigation/NavGraph;

    .line 755
    .line 756
    :goto_10
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 757
    .line 758
    .line 759
    iget-object v13, v15, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 760
    .line 761
    iget v14, v13, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 762
    .line 763
    invoke-virtual {v13, v14}, Lorg/apache/james/mime4j/stream/RawField;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 764
    .line 765
    .line 766
    move-result-object v14

    .line 767
    instance-of v14, v14, Landroidx/navigation/NavGraph;

    .line 768
    .line 769
    if-eqz v14, :cond_23

    .line 770
    .line 771
    iget v14, v13, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 772
    .line 773
    invoke-virtual {v13, v14}, Lorg/apache/james/mime4j/stream/RawField;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 774
    .line 775
    .line 776
    move-result-object v13

    .line 777
    move-object v15, v13

    .line 778
    check-cast v15, Landroidx/navigation/NavGraph;

    .line 779
    .line 780
    goto :goto_10

    .line 781
    :cond_23
    move-object v13, v15

    .line 782
    :cond_24
    add-int/lit8 v6, v6, 0x1

    .line 783
    .line 784
    goto :goto_e

    .line 785
    :cond_25
    const/4 v6, 0x0

    .line 786
    :goto_11
    if-eqz v6, :cond_26

    .line 787
    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    .line 789
    .line 790
    const-string v2, "Could not find destination "

    .line 791
    .line 792
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    const-string v2, " in the navigation graph, ignoring the deep link from "

    .line 799
    .line 800
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .line 812
    .line 813
    goto/16 :goto_19

    .line 814
    .line 815
    :cond_26
    const-string v1, "android-support-nav:controller:deepLinkIntent"

    .line 816
    .line 817
    invoke-virtual {v12, v1, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 818
    .line 819
    .line 820
    array-length v1, v0

    .line 821
    new-array v6, v1, [Landroid/os/Bundle;

    .line 822
    .line 823
    const/4 v8, 0x0

    .line 824
    :goto_12
    if-ge v8, v1, :cond_28

    .line 825
    .line 826
    const/4 v10, 0x0

    .line 827
    new-array v13, v10, [Lkotlin/Pair;

    .line 828
    .line 829
    invoke-static {v13, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v13

    .line 833
    check-cast v13, [Lkotlin/Pair;

    .line 834
    .line 835
    invoke-static {v13}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 836
    .line 837
    .line 838
    move-result-object v10

    .line 839
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 840
    .line 841
    .line 842
    if-eqz v11, :cond_27

    .line 843
    .line 844
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v13

    .line 848
    check-cast v13, Landroid/os/Bundle;

    .line 849
    .line 850
    if-eqz v13, :cond_27

    .line 851
    .line 852
    invoke-virtual {v10, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 853
    .line 854
    .line 855
    :cond_27
    aput-object v10, v6, v8

    .line 856
    .line 857
    add-int/lit8 v8, v8, 0x1

    .line 858
    .line 859
    goto :goto_12

    .line 860
    :cond_28
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    .line 861
    .line 862
    .line 863
    move-result v1

    .line 864
    const/high16 v8, 0x10000000

    .line 865
    .line 866
    and-int/2addr v8, v1

    .line 867
    if-eqz v8, :cond_2b

    .line 868
    .line 869
    const v10, 0x8000

    .line 870
    .line 871
    .line 872
    and-int/2addr v1, v10

    .line 873
    if-nez v1, :cond_2b

    .line 874
    .line 875
    invoke-virtual {v7, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 876
    .line 877
    .line 878
    iget-object v0, v2, Landroidx/navigation/NavHostController;->context:Landroid/content/Context;

    .line 879
    .line 880
    new-instance v1, Landroidx/core/app/TaskStackBuilder;

    .line 881
    .line 882
    invoke-direct {v1, v0}, Landroidx/core/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    if-nez v0, :cond_29

    .line 890
    .line 891
    iget-object v0, v1, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 892
    .line 893
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    :cond_29
    if-eqz v0, :cond_2a

    .line 902
    .line 903
    invoke-virtual {v1, v0}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)V

    .line 904
    .line 905
    .line 906
    :cond_2a
    iget-object v0, v1, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 907
    .line 908
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    invoke-virtual {v1}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 915
    .line 916
    .line 917
    const/4 v6, 0x0

    .line 918
    invoke-virtual {v4, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 919
    .line 920
    .line 921
    goto/16 :goto_1d

    .line 922
    .line 923
    :cond_2b
    if-eqz v8, :cond_2c

    .line 924
    .line 925
    move/from16 v1, v16

    .line 926
    .line 927
    goto :goto_13

    .line 928
    :cond_2c
    const/4 v1, 0x0

    .line 929
    :goto_13
    const-string v4, "Deep Linking failed: destination "

    .line 930
    .line 931
    if-eqz v1, :cond_30

    .line 932
    .line 933
    iget-object v1, v3, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 934
    .line 935
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 936
    .line 937
    .line 938
    move-result v1

    .line 939
    if-nez v1, :cond_2d

    .line 940
    .line 941
    iget-object v1, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 942
    .line 943
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 944
    .line 945
    .line 946
    iget-object v1, v1, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 947
    .line 948
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 949
    .line 950
    move/from16 v7, v16

    .line 951
    .line 952
    const/4 v10, 0x0

    .line 953
    invoke-virtual {v3, v1, v7, v10}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    .line 954
    .line 955
    .line 956
    goto :goto_14

    .line 957
    :cond_2d
    const/4 v10, 0x0

    .line 958
    :goto_14
    array-length v1, v0

    .line 959
    if-ge v10, v1, :cond_2f

    .line 960
    .line 961
    aget v1, v0, v10

    .line 962
    .line 963
    add-int/lit8 v7, v10, 0x1

    .line 964
    .line 965
    aget-object v8, v6, v10

    .line 966
    .line 967
    const/4 v10, 0x0

    .line 968
    invoke-virtual {v3, v1, v10}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    .line 969
    .line 970
    .line 971
    move-result-object v11

    .line 972
    if-eqz v11, :cond_2e

    .line 973
    .line 974
    new-instance v1, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 975
    .line 976
    const/16 v10, 0x1b

    .line 977
    .line 978
    invoke-direct {v1, v10, v11, v2}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 979
    .line 980
    .line 981
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    invoke-virtual {v3, v11, v8, v1}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 986
    .line 987
    .line 988
    move v10, v7

    .line 989
    goto :goto_14

    .line 990
    :cond_2e
    sget v0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 991
    .line 992
    invoke-static {v5, v1}, Landroidx/work/OperationKt;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    invoke-static {v4, v0, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 1005
    .line 1006
    .line 1007
    return-void

    .line 1008
    :cond_2f
    const/4 v7, 0x1

    .line 1009
    iput-boolean v7, v2, Landroidx/navigation/NavHostController;->deepLinkHandled:Z

    .line 1010
    .line 1011
    goto/16 :goto_1d

    .line 1012
    .line 1013
    :cond_30
    const/4 v10, 0x0

    .line 1014
    iget-object v1, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 1015
    .line 1016
    array-length v7, v0

    .line 1017
    :goto_15
    if-ge v10, v7, :cond_36

    .line 1018
    .line 1019
    aget v8, v0, v10

    .line 1020
    .line 1021
    aget-object v9, v6, v10

    .line 1022
    .line 1023
    if-nez v10, :cond_31

    .line 1024
    .line 1025
    iget-object v11, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 1026
    .line 1027
    goto :goto_16

    .line 1028
    :cond_31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1029
    .line 1030
    .line 1031
    iget-object v11, v1, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 1032
    .line 1033
    invoke-virtual {v11, v8}, Lorg/apache/james/mime4j/stream/RawField;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v11

    .line 1037
    :goto_16
    if-eqz v11, :cond_35

    .line 1038
    .line 1039
    array-length v8, v0

    .line 1040
    const/16 v16, 0x1

    .line 1041
    .line 1042
    add-int/lit8 v8, v8, -0x1

    .line 1043
    .line 1044
    if-eq v10, v8, :cond_33

    .line 1045
    .line 1046
    instance-of v8, v11, Landroidx/navigation/NavGraph;

    .line 1047
    .line 1048
    if-eqz v8, :cond_34

    .line 1049
    .line 1050
    check-cast v11, Landroidx/navigation/NavGraph;

    .line 1051
    .line 1052
    :goto_17
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1053
    .line 1054
    .line 1055
    iget-object v1, v11, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 1056
    .line 1057
    iget v8, v1, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 1058
    .line 1059
    invoke-virtual {v1, v8}, Lorg/apache/james/mime4j/stream/RawField;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v8

    .line 1063
    instance-of v8, v8, Landroidx/navigation/NavGraph;

    .line 1064
    .line 1065
    if-eqz v8, :cond_32

    .line 1066
    .line 1067
    iget v8, v1, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 1068
    .line 1069
    invoke-virtual {v1, v8}, Lorg/apache/james/mime4j/stream/RawField;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v1

    .line 1073
    move-object v11, v1

    .line 1074
    check-cast v11, Landroidx/navigation/NavGraph;

    .line 1075
    .line 1076
    goto :goto_17

    .line 1077
    :cond_32
    move-object v1, v11

    .line 1078
    goto :goto_18

    .line 1079
    :cond_33
    iget-object v8, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 1080
    .line 1081
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1082
    .line 1083
    .line 1084
    iget-object v8, v8, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 1085
    .line 1086
    iget v8, v8, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 1087
    .line 1088
    new-instance v17, Landroidx/navigation/NavOptions;

    .line 1089
    .line 1090
    const/16 v18, 0x0

    .line 1091
    .line 1092
    const/16 v19, 0x0

    .line 1093
    .line 1094
    const/16 v21, 0x1

    .line 1095
    .line 1096
    const/16 v22, 0x0

    .line 1097
    .line 1098
    const/16 v23, 0x0

    .line 1099
    .line 1100
    const/16 v24, 0x0

    .line 1101
    .line 1102
    const/16 v25, -0x1

    .line 1103
    .line 1104
    move/from16 v26, v25

    .line 1105
    .line 1106
    move/from16 v20, v8

    .line 1107
    .line 1108
    invoke-direct/range {v17 .. v26}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    .line 1109
    .line 1110
    .line 1111
    move-object/from16 v8, v17

    .line 1112
    .line 1113
    invoke-virtual {v3, v11, v9, v8}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 1114
    .line 1115
    .line 1116
    :cond_34
    :goto_18
    add-int/lit8 v10, v10, 0x1

    .line 1117
    .line 1118
    goto :goto_15

    .line 1119
    :cond_35
    sget v0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 1120
    .line 1121
    invoke-static {v5, v8}, Landroidx/work/OperationKt;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 1126
    .line 1127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    const-string v0, " cannot be found in graph "

    .line 1136
    .line 1137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v0

    .line 1147
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    throw v2

    .line 1151
    :cond_36
    const/4 v7, 0x1

    .line 1152
    iput-boolean v7, v2, Landroidx/navigation/NavHostController;->deepLinkHandled:Z

    .line 1153
    .line 1154
    goto/16 :goto_1d

    .line 1155
    .line 1156
    :cond_37
    :goto_19
    iget-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 1157
    .line 1158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1159
    .line 1160
    .line 1161
    move-object/from16 v2, p2

    .line 1162
    .line 1163
    const/4 v8, 0x0

    .line 1164
    invoke-virtual {v1, v0, v2, v8}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 1165
    .line 1166
    .line 1167
    goto/16 :goto_1d

    .line 1168
    .line 1169
    :cond_38
    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    .line 1170
    .line 1171
    .line 1172
    return-void

    .line 1173
    :cond_39
    move-object v7, v3

    .line 1174
    move v10, v6

    .line 1175
    iget-object v3, v2, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 1176
    .line 1177
    check-cast v3, Landroidx/collection/SparseArrayCompat;

    .line 1178
    .line 1179
    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 1180
    .line 1181
    .line 1182
    move-result v3

    .line 1183
    :goto_1a
    if-ge v6, v3, :cond_3c

    .line 1184
    .line 1185
    iget-object v4, v2, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 1186
    .line 1187
    check-cast v4, Landroidx/collection/SparseArrayCompat;

    .line 1188
    .line 1189
    invoke-virtual {v4, v6}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v4

    .line 1193
    check-cast v4, Landroidx/navigation/NavDestination;

    .line 1194
    .line 1195
    iget-object v5, v1, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 1196
    .line 1197
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1198
    .line 1199
    .line 1200
    iget-object v5, v5, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 1201
    .line 1202
    iget-object v5, v5, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 1203
    .line 1204
    check-cast v5, Landroidx/collection/SparseArrayCompat;

    .line 1205
    .line 1206
    invoke-virtual {v5, v6}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    .line 1207
    .line 1208
    .line 1209
    move-result v5

    .line 1210
    iget-object v8, v1, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 1211
    .line 1212
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1213
    .line 1214
    .line 1215
    iget-object v8, v8, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 1216
    .line 1217
    iget-object v8, v8, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 1218
    .line 1219
    check-cast v8, Landroidx/collection/SparseArrayCompat;

    .line 1220
    .line 1221
    iget-boolean v9, v8, Landroidx/collection/SparseArrayCompat;->garbage:Z

    .line 1222
    .line 1223
    if-eqz v9, :cond_3a

    .line 1224
    .line 1225
    invoke-static {v8}, Landroidx/collection/ArraySetKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 1226
    .line 1227
    .line 1228
    :cond_3a
    iget-object v9, v8, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 1229
    .line 1230
    iget v10, v8, Landroidx/collection/SparseArrayCompat;->size:I

    .line 1231
    .line 1232
    invoke-static {v10, v5, v9}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 1233
    .line 1234
    .line 1235
    move-result v5

    .line 1236
    if-ltz v5, :cond_3b

    .line 1237
    .line 1238
    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 1239
    .line 1240
    aget-object v9, v8, v5

    .line 1241
    .line 1242
    aput-object v4, v8, v5

    .line 1243
    .line 1244
    :cond_3b
    add-int/lit8 v6, v6, 0x1

    .line 1245
    .line 1246
    goto :goto_1a

    .line 1247
    :cond_3c
    invoke-virtual {v7}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v2

    .line 1251
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1252
    .line 1253
    .line 1254
    move-result v3

    .line 1255
    if-eqz v3, :cond_40

    .line 1256
    .line 1257
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v3

    .line 1261
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 1262
    .line 1263
    sget v4, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 1264
    .line 1265
    iget-object v4, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 1266
    .line 1267
    invoke-static {v4}, Landroidx/work/OperationKt;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v4

    .line 1271
    invoke-static {v4}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v4

    .line 1275
    new-instance v5, Lkotlin/collections/ReversedListReadOnly;

    .line 1276
    .line 1277
    invoke-direct {v5, v4}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    .line 1278
    .line 1279
    .line 1280
    iget-object v4, v1, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 1281
    .line 1282
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v5}, Lkotlin/collections/ReversedListReadOnly;->iterator()Ljava/util/Iterator;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v5

    .line 1289
    :cond_3d
    :goto_1c
    move-object v6, v5

    .line 1290
    check-cast v6, Lkotlin/collections/ReversedList$listIterator$1;

    .line 1291
    .line 1292
    iget-object v6, v6, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/lang/Object;

    .line 1293
    .line 1294
    check-cast v6, Ljava/util/ListIterator;

    .line 1295
    .line 1296
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 1297
    .line 1298
    .line 1299
    move-result v7

    .line 1300
    if-eqz v7, :cond_3f

    .line 1301
    .line 1302
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v6

    .line 1306
    check-cast v6, Landroidx/navigation/NavDestination;

    .line 1307
    .line 1308
    iget-object v7, v1, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 1309
    .line 1310
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v7

    .line 1314
    if-eqz v7, :cond_3e

    .line 1315
    .line 1316
    invoke-virtual {v4, v0}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 1317
    .line 1318
    .line 1319
    move-result v7

    .line 1320
    if-eqz v7, :cond_3e

    .line 1321
    .line 1322
    goto :goto_1c

    .line 1323
    :cond_3e
    instance-of v7, v4, Landroidx/navigation/NavGraph;

    .line 1324
    .line 1325
    if-eqz v7, :cond_3d

    .line 1326
    .line 1327
    check-cast v4, Landroidx/navigation/NavGraph;

    .line 1328
    .line 1329
    iget-object v6, v6, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 1330
    .line 1331
    iget v6, v6, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 1332
    .line 1333
    iget-object v4, v4, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 1334
    .line 1335
    invoke-virtual {v4, v6}, Lorg/apache/james/mime4j/stream/RawField;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v4

    .line 1339
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1340
    .line 1341
    .line 1342
    goto :goto_1c

    .line 1343
    :cond_3f
    iput-object v4, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 1344
    .line 1345
    goto :goto_1b

    .line 1346
    :cond_40
    :goto_1d
    return-void
.end method

.method public final unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->childToParentEntries:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/navigation/internal/AtomicInt;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v1, Landroidx/navigation/internal/AtomicInt;->atomicInt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    iget-object v1, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 63
    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_1
    return-void
.end method

.method public final updateBackStackLifecycle$navigation_runtime_release()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    new-array v2, v2, [Landroidx/navigation/NavDestination;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v1, v2, v3

    .line 28
    .line 29
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    instance-of v3, v3, Landroidx/navigation/FloatingWindow;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 65
    .line 66
    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    instance-of v5, v4, Landroidx/navigation/FloatingWindow;

    .line 72
    .line 73
    if-nez v5, :cond_1

    .line 74
    .line 75
    instance-of v4, v4, Landroidx/navigation/NavGraph;

    .line 76
    .line 77
    if-nez v4, :cond_1

    .line 78
    .line 79
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_d

    .line 97
    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 103
    .line 104
    iget-object v6, v5, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 105
    .line 106
    iget-object v6, v6, Landroidx/navigation/internal/NavBackStackEntryImpl;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    .line 107
    .line 108
    iget-object v7, v5, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 109
    .line 110
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    check-cast v8, Landroidx/navigation/NavDestination;

    .line 115
    .line 116
    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 117
    .line 118
    sget-object v10, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 119
    .line 120
    if-eqz v8, :cond_9

    .line 121
    .line 122
    iget-object v8, v8, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 123
    .line 124
    iget v8, v8, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 125
    .line 126
    iget-object v11, v7, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 127
    .line 128
    iget v11, v11, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 129
    .line 130
    if-ne v8, v11, :cond_9

    .line 131
    .line 132
    if-eq v6, v9, :cond_7

    .line 133
    .line 134
    iget-object v6, v5, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 135
    .line 136
    iget-object v6, v6, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v8, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 139
    .line 140
    invoke-virtual {v8, v6}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    iget-object v8, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/LinkedHashMap;

    .line 145
    .line 146
    invoke-virtual {v8, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 151
    .line 152
    if-eqz v6, :cond_4

    .line 153
    .line 154
    iget-object v6, v6, Landroidx/navigation/NavController$NavControllerNavigatorState;->transitionsInProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 155
    .line 156
    if-eqz v6, :cond_4

    .line 157
    .line 158
    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 159
    .line 160
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, Ljava/util/Set;

    .line 165
    .line 166
    if-eqz v6, :cond_4

    .line 167
    .line 168
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    goto :goto_1

    .line 177
    :cond_4
    const/4 v6, 0x0

    .line 178
    :goto_1
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-nez v6, :cond_6

    .line 185
    .line 186
    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/LinkedHashMap;

    .line 187
    .line 188
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    check-cast v6, Landroidx/navigation/internal/AtomicInt;

    .line 193
    .line 194
    if-eqz v6, :cond_5

    .line 195
    .line 196
    iget-object v6, v6, Landroidx/navigation/internal/AtomicInt;->atomicInt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 197
    .line 198
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-nez v6, :cond_5

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_5
    invoke-virtual {v3, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_6
    :goto_2
    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    :cond_7
    :goto_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    check-cast v5, Landroidx/navigation/NavDestination;

    .line 217
    .line 218
    if-eqz v5, :cond_8

    .line 219
    .line 220
    iget-object v5, v5, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 221
    .line 222
    iget v5, v5, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 223
    .line 224
    iget-object v6, v7, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 225
    .line 226
    iget v6, v6, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 227
    .line 228
    if-ne v5, v6, :cond_8

    .line 229
    .line 230
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    :cond_8
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    iget-object v5, v7, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 237
    .line 238
    if-eqz v5, :cond_3

    .line 239
    .line 240
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    if-nez v8, :cond_c

    .line 250
    .line 251
    iget-object v7, v7, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 252
    .line 253
    iget v7, v7, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 254
    .line 255
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    check-cast v8, Landroidx/navigation/NavDestination;

    .line 260
    .line 261
    iget-object v8, v8, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 262
    .line 263
    iget v8, v8, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 264
    .line 265
    if-ne v7, v8, :cond_c

    .line 266
    .line 267
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    check-cast v7, Landroidx/navigation/NavDestination;

    .line 272
    .line 273
    if-ne v6, v9, :cond_a

    .line 274
    .line 275
    invoke-virtual {v5, v10}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_a
    if-eq v6, v10, :cond_b

    .line 280
    .line 281
    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    :cond_b
    :goto_4
    iget-object v5, v7, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 285
    .line 286
    if-eqz v5, :cond_3

    .line 287
    .line 288
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    if-nez v6, :cond_3

    .line 293
    .line 294
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_c
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 300
    .line 301
    invoke-virtual {v5, v6}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_f

    .line 315
    .line 316
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 321
    .line 322
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    check-cast v1, Landroidx/lifecycle/Lifecycle$State;

    .line 327
    .line 328
    if-eqz v1, :cond_e

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 331
    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_e
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 335
    .line 336
    invoke-virtual {v0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->updateState$navigation_common_release()V

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_f
    :goto_6
    return-void
.end method
