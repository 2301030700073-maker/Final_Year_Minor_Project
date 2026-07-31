.class public final Landroidx/navigation/NavHostController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final activity:Landroid/app/Activity;

.field public final context:Landroid/content/Context;

.field public deepLinkHandled:Z

.field public final enableOnBackPressedCallback:Z

.field public final impl:Landroidx/navigation/internal/NavControllerImpl;

.field public final navContext:Landroidx/navigation/internal/NavContext;

.field public final navInflater$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final onBackPressedCallback:Lcom/fsck/k9/activity/MessageCompose$3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    iput-object p1, p0, Landroidx/navigation/NavHostController;->context:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, Landroidx/navigation/internal/NavControllerImpl;

    .line 10
    .line 11
    new-instance v1, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Landroidx/navigation/internal/NavControllerImpl;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavController$$ExternalSyntheticLambda0;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 21
    .line 22
    new-instance v0, Landroidx/navigation/internal/NavContext;

    .line 23
    .line 24
    invoke-direct {v0, p1, v2}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/navigation/NavHostController;->navContext:Landroidx/navigation/internal/NavContext;

    .line 28
    .line 29
    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/16 v1, 0xa

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v1, v0

    .line 55
    check-cast v1, Landroid/content/Context;

    .line 56
    .line 57
    instance-of v1, v1, Landroid/app/Activity;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    check-cast v0, Landroid/app/Activity;

    .line 64
    .line 65
    iput-object v0, p0, Landroidx/navigation/NavHostController;->activity:Landroid/app/Activity;

    .line 66
    .line 67
    new-instance p1, Lcom/fsck/k9/activity/MessageCompose$3;

    .line 68
    .line 69
    const/4 v0, 0x4

    .line 70
    invoke-direct {p1, v0, p0, v2}, Lcom/fsck/k9/activity/MessageCompose$3;-><init>(ILjava/lang/Object;Z)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Landroidx/navigation/NavHostController;->onBackPressedCallback:Lcom/fsck/k9/activity/MessageCompose$3;

    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Landroidx/navigation/NavHostController;->enableOnBackPressedCallback:Z

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 79
    .line 80
    iget-object v0, v0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 81
    .line 82
    new-instance v1, Landroidx/navigation/NavGraphNavigator;

    .line 83
    .line 84
    invoke-direct {v1, v0}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 91
    .line 92
    iget-object v0, v0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 93
    .line 94
    new-instance v1, Landroidx/navigation/ActivityNavigator;

    .line 95
    .line 96
    iget-object v2, p0, Landroidx/navigation/NavHostController;->context:Landroid/content/Context;

    .line 97
    .line 98
    invoke-direct {v1, v2}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    invoke-direct {v0, p0, p1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Lkotlin/SynchronizedLazyImpl;

    .line 110
    .line 111
    invoke-direct {p1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Landroidx/navigation/NavHostController;->navInflater$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 115
    .line 116
    return-void
.end method

.method public static navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Ljava/lang/String;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public static navigate$default(Landroidx/navigation/NavHostController;Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/io/ByteStreamsKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroidx/navigation/serialization/InternalNavType;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v0, v1, v3, v2}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Iterable;

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroidx/navigation/NavArgument;

    .line 91
    .line 92
    iget-object v2, v2, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    .line 93
    .line 94
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p1, v1}, Landroidx/navigation/serialization/InternalNavType;->generateRouteWithArgs(Ljava/lang/Object;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v0, " cannot be found in navigation graph "

    .line 116
    .line 117
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 118
    .line 119
    const-string v2, "Destination with route "

    .line 120
    .line 121
    invoke-static {v2, p1, v0, v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object p1, v3

    .line 125
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Ljava/lang/String;Landroidx/navigation/NavOptions;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public static popBackStack$default(Landroidx/navigation/NavHostController;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(Ljava/lang/String;ZZ)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public final getDestinationCountOnBackStack()I
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 30
    .line 31
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 32
    .line 33
    instance-of v1, v1, Landroidx/navigation/NavGraph;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    if-ltz v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwCountOverflow()V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    throw p0

    .line 47
    :cond_3
    return v0
.end method

.method public final navigate(ILandroid/os/Bundle;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 15
    .line 16
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 23
    .line 24
    :goto_0
    if-eqz v1, :cond_c

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroidx/navigation/NavDestination;->getAction(I)Landroidx/navigation/NavAction;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v5, v2, Landroidx/navigation/NavAction;->navOptions:Landroidx/navigation/NavOptions;

    .line 35
    .line 36
    iget v6, v2, Landroidx/navigation/NavAction;->destinationId:I

    .line 37
    .line 38
    iget-object v7, v2, Landroidx/navigation/NavAction;->defaultArguments:Landroid/os/Bundle;

    .line 39
    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    new-array v8, v4, [Lkotlin/Pair;

    .line 43
    .line 44
    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, [Lkotlin/Pair;

    .line 49
    .line 50
    invoke-static {v8}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v8, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v8, v3

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v6, p1

    .line 61
    move-object v5, v3

    .line 62
    move-object v8, v5

    .line 63
    :goto_1
    if-eqz p2, :cond_4

    .line 64
    .line 65
    if-nez v8, :cond_3

    .line 66
    .line 67
    new-array v7, v4, [Lkotlin/Pair;

    .line 68
    .line 69
    invoke-static {v7, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, [Lkotlin/Pair;

    .line 74
    .line 75
    invoke-static {v7}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    move-object v8, v7

    .line 80
    :cond_3
    invoke-virtual {v8, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    if-nez v6, :cond_8

    .line 84
    .line 85
    if-eqz v5, :cond_8

    .line 86
    .line 87
    iget-boolean p2, v5, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 88
    .line 89
    iget-object v7, v5, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    .line 90
    .line 91
    iget v9, v5, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 92
    .line 93
    const/4 v10, -0x1

    .line 94
    if-ne v9, v10, :cond_5

    .line 95
    .line 96
    if-nez v7, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    if-eqz v7, :cond_6

    .line 100
    .line 101
    invoke-static {p0, v7, p2}, Landroidx/navigation/NavHostController;->popBackStack$default(Landroidx/navigation/NavHostController;Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_6
    if-eq v9, v10, :cond_7

    .line 106
    .line 107
    invoke-virtual {v0, v9, p2, v4}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_7

    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    .line 114
    .line 115
    .line 116
    :cond_7
    return-void

    .line 117
    :cond_8
    :goto_2
    if-eqz v6, :cond_b

    .line 118
    .line 119
    invoke-virtual {v0, v6, v3}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    if-nez p2, :cond_a

    .line 124
    .line 125
    sget p2, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 126
    .line 127
    iget-object p0, p0, Landroidx/navigation/NavHostController;->navContext:Landroidx/navigation/internal/NavContext;

    .line 128
    .line 129
    invoke-static {p0, v6}, Landroidx/work/OperationKt;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    const-string v0, " cannot be found from the current destination "

    .line 134
    .line 135
    if-nez v2, :cond_9

    .line 136
    .line 137
    const-string p0, "Navigation action/destination "

    .line 138
    .line 139
    invoke-static {p0, p2, v0, v1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_9
    const-string v2, "Navigation destination "

    .line 144
    .line 145
    const-string v3, " referenced from action "

    .line 146
    .line 147
    invoke-static {v2, p2, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-static {p0, p1}, Landroidx/work/OperationKt;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_a
    invoke-virtual {v0, p2, v8, v5}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_b
    const-string p0, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    .line 183
    .line 184
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 189
    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v0, "No current destination found. Ensure a navigation graph has been set for NavController "

    .line 193
    .line 194
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const/16 p0, 0x2e

    .line 201
    .line 202
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p1
.end method

.method public final navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 213
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object p2

    .line 215
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Ljava/lang/String;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public final navigateUp()Z
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->getDestinationCountOnBackStack()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_13

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/navigation/NavHostController;->activity:Landroid/app/Activity;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v2

    .line 25
    :goto_0
    const-string v4, "android-support-nav:controller:deepLinkIds"

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v3, v2

    .line 35
    :goto_1
    const-string v5, "android-support-nav:controller:deepLinkExtras"

    .line 36
    .line 37
    const-string v6, "android-support-nav:controller:deepLinkIntent"

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    iget-object v8, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 41
    .line 42
    if-eqz v3, :cond_c

    .line 43
    .line 44
    iget-boolean v3, p0, Landroidx/navigation/NavHostController;->deepLinkHandled:Z

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v4}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v10, Ljava/util/ArrayList;

    .line 72
    .line 73
    array-length v11, v4

    .line 74
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .line 76
    .line 77
    array-length v11, v4

    .line 78
    move v12, v7

    .line 79
    :goto_2
    if-ge v12, v11, :cond_3

    .line 80
    .line 81
    aget v13, v4, v12

    .line 82
    .line 83
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v12, v12, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const-string v4, "android-support-nav:controller:deepLinkArgs"

    .line 94
    .line 95
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    const/4 v12, 0x2

    .line 104
    if-ge v11, v12, :cond_4

    .line 105
    .line 106
    goto/16 :goto_7

    .line 107
    .line 108
    :cond_4
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    check-cast v11, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    if-eqz v4, :cond_5

    .line 119
    .line 120
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    check-cast v12, Landroid/os/Bundle;

    .line 125
    .line 126
    :cond_5
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-static {v11, v12, v2, v7}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    instance-of v13, v12, Landroidx/navigation/NavGraph;

    .line 135
    .line 136
    if-eqz v13, :cond_6

    .line 137
    .line 138
    sget v11, Landroidx/navigation/NavGraph;->$r8$clinit:I

    .line 139
    .line 140
    check-cast v12, Landroidx/navigation/NavGraph;

    .line 141
    .line 142
    invoke-static {v12}, Landroidx/compose/ui/unit/IntOffsetKt;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    iget-object v11, v11, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 147
    .line 148
    iget v11, v11, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 149
    .line 150
    :cond_6
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    if-eqz v8, :cond_12

    .line 155
    .line 156
    iget-object v8, v8, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 157
    .line 158
    iget v8, v8, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 159
    .line 160
    if-ne v11, v8, :cond_12

    .line 161
    .line 162
    new-instance v8, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 163
    .line 164
    invoke-direct {v8, p0}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Landroidx/navigation/NavHostController;)V

    .line 165
    .line 166
    .line 167
    new-array p0, v7, [Lkotlin/Pair;

    .line 168
    .line 169
    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    check-cast p0, [Lkotlin/Pair;

    .line 174
    .line 175
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p0, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    if-eqz v3, :cond_7

    .line 187
    .line 188
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 189
    .line 190
    .line 191
    :cond_7
    iget-object v3, v8, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v3, Landroid/content/Intent;

    .line 194
    .line 195
    invoke-virtual {v3, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_b

    .line 207
    .line 208
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    add-int/lit8 v5, v7, 0x1

    .line 213
    .line 214
    if-ltz v7, :cond_a

    .line 215
    .line 216
    check-cast v3, Ljava/lang/Number;

    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v4, :cond_8

    .line 223
    .line 224
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    check-cast v6, Landroid/os/Bundle;

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_8
    move-object v6, v2

    .line 232
    :goto_4
    iget-object v7, v8, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v7, Ljava/util/ArrayList;

    .line 235
    .line 236
    new-instance v9, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    .line 237
    .line 238
    invoke-direct {v9, v3, v6}, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;-><init>(ILandroid/os/Bundle;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    iget-object v3, v8, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v3, Landroidx/navigation/NavGraph;

    .line 247
    .line 248
    if-eqz v3, :cond_9

    .line 249
    .line 250
    invoke-virtual {v8}, Lcom/fsck/k9/mailstore/LocalStore$7;->verifyAllDestinations()V

    .line 251
    .line 252
    .line 253
    :cond_9
    move v7, v5

    .line 254
    goto :goto_3

    .line 255
    :cond_a
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 256
    .line 257
    .line 258
    throw v2

    .line 259
    :cond_b
    invoke-virtual {v8}, Lcom/fsck/k9/mailstore/LocalStore$7;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {p0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 267
    .line 268
    .line 269
    return v1

    .line 270
    :cond_c
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    iget-object v4, v3, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 278
    .line 279
    iget v4, v4, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 280
    .line 281
    iget-object v3, v3, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 282
    .line 283
    :goto_5
    if-eqz v3, :cond_12

    .line 284
    .line 285
    iget-object v9, v3, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 286
    .line 287
    iget-object v10, v3, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 288
    .line 289
    iget v10, v10, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 290
    .line 291
    if-eq v10, v4, :cond_11

    .line 292
    .line 293
    new-array v3, v7, [Lkotlin/Pair;

    .line 294
    .line 295
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    check-cast v3, [Lkotlin/Pair;

    .line 300
    .line 301
    invoke-static {v3}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    if-eqz v0, :cond_e

    .line 306
    .line 307
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    if-eqz v4, :cond_e

    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    if-eqz v4, :cond_e

    .line 322
    .line 323
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v8}, Landroidx/navigation/internal/NavControllerImpl;->getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    new-instance v7, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 345
    .line 346
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v10

    .line 354
    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    invoke-direct {v7, v8, v10, v6}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4, v7, v4}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Lcom/fsck/k9/backend/imap/ImapSync;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    if-eqz v4, :cond_d

    .line 366
    .line 367
    iget-object v6, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_d
    move-object v6, v2

    .line 371
    :goto_6
    if-eqz v6, :cond_e

    .line 372
    .line 373
    iget-object v6, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    .line 374
    .line 375
    iget-object v4, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    .line 376
    .line 377
    invoke-virtual {v6, v4}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    if-eqz v4, :cond_e

    .line 382
    .line 383
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 384
    .line 385
    .line 386
    :cond_e
    new-instance v4, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 387
    .line 388
    invoke-direct {v4, p0}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Landroidx/navigation/NavHostController;)V

    .line 389
    .line 390
    .line 391
    iget p0, v9, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 392
    .line 393
    iget-object v6, v4, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v6, Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 398
    .line 399
    .line 400
    new-instance v7, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    .line 401
    .line 402
    invoke-direct {v7, p0, v2}, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;-><init>(ILandroid/os/Bundle;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    iget-object p0, v4, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 411
    .line 412
    if-eqz p0, :cond_f

    .line 413
    .line 414
    invoke-virtual {v4}, Lcom/fsck/k9/mailstore/LocalStore$7;->verifyAllDestinations()V

    .line 415
    .line 416
    .line 417
    :cond_f
    iget-object p0, v4, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast p0, Landroid/content/Intent;

    .line 420
    .line 421
    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v4}, Lcom/fsck/k9/mailstore/LocalStore$7;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    invoke-virtual {p0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 429
    .line 430
    .line 431
    if-eqz v0, :cond_10

    .line 432
    .line 433
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 434
    .line 435
    .line 436
    :cond_10
    return v1

    .line 437
    :cond_11
    iget v4, v9, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 438
    .line 439
    iget-object v3, v3, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 440
    .line 441
    goto/16 :goto_5

    .line 442
    .line 443
    :cond_12
    :goto_7
    return v7

    .line 444
    :cond_13
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 445
    .line 446
    .line 447
    move-result p0

    .line 448
    return p0
.end method

.method public final popBackStack()Z
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 21
    .line 22
    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {p0, v0, v2, v1}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    return v1
.end method

.method public final restoreState(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/navigation/NavHostController;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v2, v0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 17
    .line 18
    iget-object v3, v2, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    move-object/from16 v16, v4

    .line 25
    .line 26
    goto/16 :goto_9

    .line 27
    .line 28
    :cond_1
    const-string v6, "android-support-nav:controller:navigatorState"

    .line 29
    .line 30
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_3

    .line 35
    .line 36
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    if-eqz v7, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v6}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v4

    .line 47
    :cond_3
    move-object v7, v4

    .line 48
    :goto_0
    iput-object v7, v2, Landroidx/navigation/internal/NavControllerImpl;->navigatorStateToRestore:Landroid/os/Bundle;

    .line 49
    .line 50
    const-string v6, "android-support-nav:controller:backStack"

    .line 51
    .line 52
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const/16 v8, 0x22

    .line 57
    .line 58
    const-class v9, Landroid/os/Bundle;

    .line 59
    .line 60
    if-eqz v7, :cond_6

    .line 61
    .line 62
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-static {v7}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    if-lt v10, v8, :cond_4

    .line 73
    .line 74
    invoke-static {v1, v6, v7}, Landroidx/compose/ui/window/Api33Impl;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    :goto_1
    if-eqz v7, :cond_5

    .line 84
    .line 85
    new-array v6, v5, [Landroid/os/Bundle;

    .line 86
    .line 87
    invoke-interface {v7, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, [Landroid/os/Bundle;

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-static {v6}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v4

    .line 98
    :cond_6
    move-object v6, v4

    .line 99
    :goto_2
    iput-object v6, v2, Landroidx/navigation/internal/NavControllerImpl;->backStackToRestore:[Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 102
    .line 103
    .line 104
    const-string v6, "android-support-nav:controller:backStackDestIds"

    .line 105
    .line 106
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_8

    .line 111
    .line 112
    const-string v7, "android-support-nav:controller:backStackIds"

    .line 113
    .line 114
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-eqz v10, :cond_8

    .line 119
    .line 120
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    if-eqz v10, :cond_a

    .line 125
    .line 126
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    if-eqz v6, :cond_9

    .line 131
    .line 132
    array-length v7, v10

    .line 133
    move v11, v5

    .line 134
    move v12, v11

    .line 135
    :goto_3
    if-ge v11, v7, :cond_8

    .line 136
    .line 137
    aget v13, v10, v11

    .line 138
    .line 139
    add-int/lit8 v14, v12, 0x1

    .line 140
    .line 141
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    iget-object v15, v2, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/LinkedHashMap;

    .line 146
    .line 147
    move-object/from16 v16, v4

    .line 148
    .line 149
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    const-string v5, ""

    .line 154
    .line 155
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-nez v4, :cond_7

    .line 160
    .line 161
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_7
    move-object/from16 v4, v16

    .line 169
    .line 170
    :goto_4
    invoke-interface {v15, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    add-int/lit8 v11, v11, 0x1

    .line 174
    .line 175
    move v12, v14

    .line 176
    move-object/from16 v4, v16

    .line 177
    .line 178
    const/4 v5, 0x0

    .line 179
    goto :goto_3

    .line 180
    :cond_8
    move-object/from16 v16, v4

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_9
    move-object/from16 v16, v4

    .line 184
    .line 185
    invoke-static {v7}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v16

    .line 189
    :cond_a
    move-object/from16 v16, v4

    .line 190
    .line 191
    invoke-static {v6}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v16

    .line 195
    :goto_5
    const-string v2, "android-support-nav:controller:backStackStates"

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_10

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    if-eqz v4, :cond_f

    .line 208
    .line 209
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eqz v4, :cond_10

    .line 218
    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v4, Ljava/lang/String;

    .line 224
    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v6, "android-support-nav:controller:backStackStates:"

    .line 228
    .line 229
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_b

    .line 244
    .line 245
    invoke-static {v6, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-static {v6}, Lokhttp3/Handshake$Companion;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 258
    .line 259
    if-lt v7, v8, :cond_c

    .line 260
    .line 261
    invoke-static {v1, v5, v6}, Landroidx/compose/ui/window/Api33Impl;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    goto :goto_7

    .line 266
    :cond_c
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    :goto_7
    if-eqz v6, :cond_e

    .line 271
    .line 272
    new-instance v5, Lkotlin/collections/ArrayDeque;

    .line 273
    .line 274
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    invoke-direct {v5, v7}, Lkotlin/collections/ArrayDeque;-><init>(I)V

    .line 279
    .line 280
    .line 281
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    if-eqz v7, :cond_d

    .line 290
    .line 291
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    check-cast v7, Landroid/os/Bundle;

    .line 296
    .line 297
    new-instance v10, Landroidx/navigation/NavBackStackEntryState;

    .line 298
    .line 299
    invoke-direct {v10, v7}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroid/os/Bundle;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v10}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_d
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_e
    invoke-static {v5}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v16

    .line 314
    :cond_f
    invoke-static {v2}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v16

    .line 318
    :cond_10
    :goto_9
    if-eqz v1, :cond_13

    .line 319
    .line 320
    const-string v2, "android-support-nav:controller:deepLinkHandled"

    .line 321
    .line 322
    const/4 v3, 0x0

    .line 323
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-nez v4, :cond_11

    .line 328
    .line 329
    const/4 v5, 0x1

    .line 330
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-ne v1, v5, :cond_11

    .line 335
    .line 336
    move-object/from16 v4, v16

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    :goto_a
    if-eqz v4, :cond_12

    .line 344
    .line 345
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    goto :goto_b

    .line 350
    :cond_12
    move v5, v3

    .line 351
    :goto_b
    iput-boolean v5, v0, Landroidx/navigation/NavHostController;->deepLinkHandled:Z

    .line 352
    .line 353
    :cond_13
    return-void
.end method

.method public final saveState()Landroid/os/Bundle;
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    new-instance v4, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    new-array v6, v5, [Lkotlin/Pair;

    .line 16
    .line 17
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    check-cast v6, [Lkotlin/Pair;

    .line 22
    .line 23
    invoke-static {v6}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    iget-object v0, v0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    check-cast v8, Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroidx/navigation/Navigator;

    .line 66
    .line 67
    invoke-virtual {v7}, Landroidx/navigation/Navigator;->onSaveState()Landroid/os/Bundle;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    if-eqz v7, :cond_0

    .line 72
    .line 73
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    new-array v0, v5, [Lkotlin/Pair;

    .line 90
    .line 91
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, [Lkotlin/Pair;

    .line 96
    .line 97
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v7, "android-support-nav:controller:navigatorState:names"

    .line 102
    .line 103
    invoke-static {v6, v7, v4}, Landroidx/compose/ui/unit/IntRectKt;->putStringList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    const-string v4, "android-support-nav:controller:navigatorState"

    .line 107
    .line 108
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const/4 v0, 0x0

    .line 113
    :goto_1
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const-string v6, "nav-entry-state:saved-state"

    .line 118
    .line 119
    const-string v7, "nav-entry-state:args"

    .line 120
    .line 121
    const-string v8, "nav-entry-state:destination-id"

    .line 122
    .line 123
    const-string v9, "nav-entry-state:id"

    .line 124
    .line 125
    if-nez v4, :cond_6

    .line 126
    .line 127
    if-nez v0, :cond_3

    .line 128
    .line 129
    new-array v0, v5, [Lkotlin/Pair;

    .line 130
    .line 131
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, [Lkotlin/Pair;

    .line 136
    .line 137
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-eqz v10, :cond_5

    .line 155
    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    check-cast v10, Landroidx/navigation/NavBackStackEntry;

    .line 161
    .line 162
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    new-instance v11, Lkotlinx/coroutines/flow/SharingConfig;

    .line 166
    .line 167
    iget-object v12, v10, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 168
    .line 169
    iget-object v12, v12, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 170
    .line 171
    iget v12, v12, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 172
    .line 173
    invoke-direct {v11, v10, v12}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/navigation/NavBackStackEntry;I)V

    .line 174
    .line 175
    .line 176
    new-array v10, v5, [Lkotlin/Pair;

    .line 177
    .line 178
    invoke-static {v10, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    check-cast v10, [Lkotlin/Pair;

    .line 183
    .line 184
    invoke-static {v10}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    iget-object v12, v11, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v12, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10, v9, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget v12, v11, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 199
    .line 200
    invoke-virtual {v10, v8, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    iget-object v12, v11, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v12, Landroid/os/Bundle;

    .line 206
    .line 207
    if-nez v12, :cond_4

    .line 208
    .line 209
    new-array v12, v5, [Lkotlin/Pair;

    .line 210
    .line 211
    invoke-static {v12, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    check-cast v12, [Lkotlin/Pair;

    .line 216
    .line 217
    invoke-static {v12}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    :cond_4
    invoke-virtual {v10, v7, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 222
    .line 223
    .line 224
    iget-object v11, v11, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v11, Landroid/os/Bundle;

    .line 227
    .line 228
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v6, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_5
    const-string v2, "android-support-nav:controller:backStack"

    .line 239
    .line 240
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 241
    .line 242
    .line 243
    :cond_6
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-nez v2, :cond_a

    .line 248
    .line 249
    if-nez v0, :cond_7

    .line 250
    .line 251
    new-array v0, v5, [Lkotlin/Pair;

    .line 252
    .line 253
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, [Lkotlin/Pair;

    .line 258
    .line 259
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    new-array v2, v2, [I

    .line 268
    .line 269
    new-instance v4, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    move v10, v5

    .line 283
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    if-eqz v11, :cond_9

    .line 288
    .line 289
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    check-cast v11, Ljava/util/Map$Entry;

    .line 294
    .line 295
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    check-cast v12, Ljava/lang/Number;

    .line 300
    .line 301
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 302
    .line 303
    .line 304
    move-result v12

    .line 305
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    check-cast v11, Ljava/lang/String;

    .line 310
    .line 311
    add-int/lit8 v13, v10, 0x1

    .line 312
    .line 313
    aput v12, v2, v10

    .line 314
    .line 315
    if-nez v11, :cond_8

    .line 316
    .line 317
    const-string v11, ""

    .line 318
    .line 319
    :cond_8
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move v10, v13

    .line 323
    goto :goto_3

    .line 324
    :cond_9
    const-string v3, "android-support-nav:controller:backStackDestIds"

    .line 325
    .line 326
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 327
    .line 328
    .line 329
    const-string v2, "android-support-nav:controller:backStackIds"

    .line 330
    .line 331
    invoke-static {v0, v2, v4}, Landroidx/compose/ui/unit/IntRectKt;->putStringList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 332
    .line 333
    .line 334
    :cond_a
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-nez v2, :cond_f

    .line 339
    .line 340
    if-nez v0, :cond_b

    .line 341
    .line 342
    new-array v0, v5, [Lkotlin/Pair;

    .line 343
    .line 344
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    check-cast v0, [Lkotlin/Pair;

    .line 349
    .line 350
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-eqz v3, :cond_e

    .line 372
    .line 373
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    check-cast v3, Ljava/util/Map$Entry;

    .line 378
    .line 379
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    check-cast v4, Ljava/lang/String;

    .line 384
    .line 385
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    check-cast v3, Lkotlin/collections/ArrayDeque;

    .line 390
    .line 391
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    new-instance v10, Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v11

    .line 407
    if-eqz v11, :cond_d

    .line 408
    .line 409
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v11

    .line 413
    check-cast v11, Landroidx/navigation/NavBackStackEntryState;

    .line 414
    .line 415
    iget-object v11, v11, Landroidx/navigation/NavBackStackEntryState;->impl:Lkotlinx/coroutines/flow/SharingConfig;

    .line 416
    .line 417
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    new-array v12, v5, [Lkotlin/Pair;

    .line 421
    .line 422
    invoke-static {v12, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v12

    .line 426
    check-cast v12, [Lkotlin/Pair;

    .line 427
    .line 428
    invoke-static {v12}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 429
    .line 430
    .line 431
    move-result-object v12

    .line 432
    iget-object v13, v11, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v13, Ljava/lang/String;

    .line 435
    .line 436
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v12, v9, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iget v13, v11, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 443
    .line 444
    invoke-virtual {v12, v8, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 445
    .line 446
    .line 447
    iget-object v13, v11, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v13, Landroid/os/Bundle;

    .line 450
    .line 451
    if-nez v13, :cond_c

    .line 452
    .line 453
    new-array v13, v5, [Lkotlin/Pair;

    .line 454
    .line 455
    invoke-static {v13, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v13

    .line 459
    check-cast v13, [Lkotlin/Pair;

    .line 460
    .line 461
    invoke-static {v13}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 462
    .line 463
    .line 464
    move-result-object v13

    .line 465
    :cond_c
    invoke-virtual {v12, v7, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 466
    .line 467
    .line 468
    iget-object v11, v11, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v11, Landroid/os/Bundle;

    .line 471
    .line 472
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v12, v6, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    goto :goto_5

    .line 482
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    const-string v11, "android-support-nav:controller:backStackStates:"

    .line 485
    .line 486
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 497
    .line 498
    .line 499
    goto/16 :goto_4

    .line 500
    .line 501
    :cond_e
    const-string v1, "android-support-nav:controller:backStackStates"

    .line 502
    .line 503
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/IntRectKt;->putStringList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 504
    .line 505
    .line 506
    :cond_f
    iget-boolean v1, p0, Landroidx/navigation/NavHostController;->deepLinkHandled:Z

    .line 507
    .line 508
    if-eqz v1, :cond_11

    .line 509
    .line 510
    if-nez v0, :cond_10

    .line 511
    .line 512
    new-array v0, v5, [Lkotlin/Pair;

    .line 513
    .line 514
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    check-cast v0, [Lkotlin/Pair;

    .line 519
    .line 520
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    :cond_10
    const-string v1, "android-support-nav:controller:deepLinkHandled"

    .line 525
    .line 526
    iget-boolean p0, p0, Landroidx/navigation/NavHostController;->deepLinkHandled:Z

    .line 527
    .line 528
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 529
    .line 530
    .line 531
    :cond_11
    return-object v0
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleObserver:Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 31
    .line 32
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/work/Operation$State;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 23
    .line 24
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Landroidx/work/Operation$State;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const-string p0, "ViewModelStore should be set before setGraph call"

    .line 38
    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
