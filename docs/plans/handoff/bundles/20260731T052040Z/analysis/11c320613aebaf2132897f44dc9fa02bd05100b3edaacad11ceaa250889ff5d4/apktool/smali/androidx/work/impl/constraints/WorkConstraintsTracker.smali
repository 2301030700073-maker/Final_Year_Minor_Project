.class public final Landroidx/work/impl/constraints/WorkConstraintsTracker;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final controllers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcoil3/ComponentRegistry$Builder;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    .line 7
    .line 8
    iget-object v1, p1, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lorg/commonmark/node/Node;

    .line 11
    .line 12
    iget-object v2, p1, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lorg/commonmark/node/Node;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v0, v1, v3}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Lorg/commonmark/node/Node;I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    .line 21
    .line 22
    iget-object v4, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    .line 25
    .line 26
    invoke-direct {v1, v4}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    .line 30
    .line 31
    iget-object v5, p1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, Lorg/commonmark/node/Node;

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    invoke-direct {v4, v5, v6}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Lorg/commonmark/node/Node;I)V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    new-array v7, v5, [Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    aput-object v0, v7, v8

    .line 44
    .line 45
    aput-object v1, v7, v3

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    aput-object v4, v7, v0

    .line 49
    .line 50
    invoke-static {v7}, Lorg/jsoup/Jsoup;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v7, 0x1c

    .line 57
    .line 58
    if-lt v4, v7, :cond_0

    .line 59
    .line 60
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const-string v0, "connectivity"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 77
    .line 78
    new-instance v0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Landroidx/work/impl/constraints/NetworkRequestConstraintController;-><init>(Landroid/net/ConnectivityManager;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, v2, v0}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Lorg/commonmark/node/Node;I)V

    .line 93
    .line 94
    .line 95
    new-instance v4, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    .line 96
    .line 97
    invoke-direct {v4, v2, v5}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Lorg/commonmark/node/Node;I)V

    .line 98
    .line 99
    .line 100
    new-instance v7, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingControllerPre28;

    .line 101
    .line 102
    invoke-direct {v7, v2}, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingControllerPre28;-><init>(Lorg/commonmark/node/Node;)V

    .line 103
    .line 104
    .line 105
    new-instance v9, Landroidx/work/impl/constraints/controllers/NetworkMeteredControllerPre28;

    .line 106
    .line 107
    invoke-direct {v9, v2}, Landroidx/work/impl/constraints/controllers/NetworkMeteredControllerPre28;-><init>(Lorg/commonmark/node/Node;)V

    .line 108
    .line 109
    .line 110
    new-array v2, v6, [Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 111
    .line 112
    aput-object p1, v2, v8

    .line 113
    .line 114
    aput-object v4, v2, v3

    .line 115
    .line 116
    aput-object v7, v2, v0

    .line 117
    .line 118
    aput-object v9, v2, v5

    .line 119
    .line 120
    invoke-static {v2}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    .line 126
    .line 127
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v1, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->controllers:Ljava/util/ArrayList;

    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public final track(Landroidx/work/impl/model/WorkSpec;)Lkotlinx/coroutines/flow/Flow;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->controllers:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 27
    .line 28
    invoke-interface {v2, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;->hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 39
    .line 40
    const/16 v1, 0xa

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 64
    .line 65
    iget-object v2, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 66
    .line 67
    invoke-interface {v1, v2}, Landroidx/work/impl/constraints/controllers/ConstraintController;->track(Landroidx/work/Constraints;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const/4 p1, 0x0

    .line 80
    new-array v0, p1, [Lkotlinx/coroutines/flow/Flow;

    .line 81
    .line 82
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, [Lkotlinx/coroutines/flow/Flow;

    .line 87
    .line 88
    new-instance v0, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1;

    .line 89
    .line 90
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1;-><init>(Ljava/lang/Object;I)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method
