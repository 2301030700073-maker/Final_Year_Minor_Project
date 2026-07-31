.class public final Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final bannerGlobalVisuals:Lnet/thunderbird/core/common/collections/PriorityQueue;

.field public final currentInAppNotificationHostState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final enabled:Lkotlinx/collections/immutable/ImmutableSet;

.field public final internalState:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>(Lkotlinx/collections/immutable/ImmutableSet;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->enabled:Lkotlinx/collections/immutable/ImmutableSet;

    .line 8
    .line 9
    new-instance p1, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 10
    .line 11
    sget-object v0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->EMPTY:Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {p1, v1, v0}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;-><init>(Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;Lkotlinx/collections/immutable/ImmutableSet;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->internalState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/StateFlowImpl;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->currentInAppNotificationHostState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    .line 29
    new-instance p1, Lnet/thunderbird/core/common/collections/PriorityQueue;

    .line 30
    .line 31
    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    .line 32
    .line 33
    const/16 v1, 0x18

    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {p1, v0, v1}, Lnet/thunderbird/core/common/collections/PriorityQueue;-><init>(Landroidx/viewpager/widget/ViewPager$1;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->bannerGlobalVisuals:Lnet/thunderbird/core/common/collections/PriorityQueue;

    .line 48
    .line 49
    return-void
.end method

.method public static toInAppNotificationData(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;
    .locals 6

    .line 1
    invoke-interface {p0}, Lnet/thunderbird/feature/notification/api/content/InAppNotification;->getInAppNotificationStyle()Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$BannerGlobalNotification;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_4

    .line 13
    .line 14
    instance-of v0, v0, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$BannerGlobalNotification;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-interface {p0}, Lnet/thunderbird/feature/notification/api/content/Notification;->getContentText()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Lnet/thunderbird/feature/notification/api/content/Notification;->getSeverity()Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p0}, Lkotlin/uuid/UuidKt;->access$getActionsWithoutTap(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ltz v4, :cond_1

    .line 37
    .line 38
    const/4 v5, 0x2

    .line 39
    if-ge v4, v5, :cond_1

    .line 40
    .line 41
    check-cast v3, Ljava/lang/Iterable;

    .line 42
    .line 43
    invoke-static {v3}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 52
    .line 53
    new-instance v3, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 54
    .line 55
    invoke-direct {v3, v0, v1, v2}, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;-><init>(Ljava/lang/String;Lnet/thunderbird/feature/notification/api/NotificationSeverity;Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V

    .line 56
    .line 57
    .line 58
    move-object v2, v3

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string p0, "A notification with a BannerGlobalNotification style must have at zero or one action"

    .line 61
    .line 62
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v2

    .line 66
    :cond_2
    const-string p0, "A notification with a BannerGlobalNotification style must have a contentText not null"

    .line 67
    .line 68
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :cond_3
    const-string p0, "Check failed."

    .line 73
    .line 74
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_4
    :goto_1
    invoke-static {p0}, Lorg/jsoup/nodes/NodeUtils;->from(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    new-array v1, v1, [Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    aput-object v0, v1, v3

    .line 89
    .line 90
    invoke-static {v1}, Lokio/Okio;->persistentSetOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    sget-object v0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->EMPTY:Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 96
    .line 97
    :goto_2
    invoke-interface {p0}, Lnet/thunderbird/feature/notification/api/content/InAppNotification;->getInAppNotificationStyle()Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 98
    .line 99
    .line 100
    new-instance p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 101
    .line 102
    invoke-direct {p0, v2, v0}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;-><init>(Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;Lkotlinx/collections/immutable/ImmutableSet;)V

    .line 103
    .line 104
    .line 105
    return-object p0
.end method


# virtual methods
.method public final dismiss(Lnet/thunderbird/feature/notification/api/ui/host/visual/InAppNotificationVisual;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->internalState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 12
    .line 13
    instance-of v3, p1, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->bannerGlobalVisuals:Lnet/thunderbird/core/common/collections/PriorityQueue;

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-object v3, v3, Lnet/thunderbird/core/common/collections/PriorityQueue;->heap:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v3, v2, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->bannerGlobalVisual:Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 35
    .line 36
    :goto_0
    instance-of v4, p1, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    move-object v4, p1

    .line 42
    check-cast v4, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v4, v5

    .line 46
    :goto_1
    if-eqz v4, :cond_3

    .line 47
    .line 48
    iget-object v6, v2, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->bannerInlineVisuals:Lkotlinx/collections/immutable/ImmutableSet;

    .line 49
    .line 50
    invoke-static {v6, v4}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4}, Lokio/Okio;->toPersistentSet(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v4, v2, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->bannerInlineVisuals:Lkotlinx/collections/immutable/ImmutableSet;

    .line 60
    .line 61
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance v2, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 71
    .line 72
    invoke-direct {v2, v3, v4}, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;-><init>(Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;Lkotlinx/collections/immutable/ImmutableSet;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    return-void
.end method

.method public final isEnabled(Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->enabled:Lkotlinx/collections/immutable/ImmutableSet;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 27
    .line 28
    if-ne v1, p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    sget-object p1, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->Companion:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget-object p1, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->AllNotifications:Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 37
    .line 38
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    :goto_1
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_3
    const/4 p0, 0x0

    .line 47
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->currentInAppNotificationHostState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    .line 3
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "InAppNotificationHostState(enabled="

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->enabled:Lkotlinx/collections/immutable/ImmutableSet;

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, ", currentInAppNotificationData="

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, ")"

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
