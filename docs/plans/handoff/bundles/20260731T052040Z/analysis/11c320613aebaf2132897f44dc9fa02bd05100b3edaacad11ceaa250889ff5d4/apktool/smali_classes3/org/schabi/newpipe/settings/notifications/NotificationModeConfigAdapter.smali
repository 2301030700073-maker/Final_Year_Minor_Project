.class public final Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;,
        Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;,
        Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field private final listener:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;->INSTANCE:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->listener:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic access$getListener$p(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;)Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->listener:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->onBindViewHolder(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->bind(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p2, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f0d006e

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance v0, Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

    .line 25
    .line 26
    check-cast p1, Landroid/widget/CheckedTextView;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;-><init>(Landroid/widget/CheckedTextView;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;-><init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;)V

    .line 32
    .line 33
    .line 34
    return-object p2

    .line 35
    :cond_0
    const-string p0, "rootView"

    .line 36
    .line 37
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public final update(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 30
    .line 31
    new-instance v2, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    .line 32
    .line 33
    iget-wide v3, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 34
    .line 35
    iget-object v5, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget v6, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    .line 41
    .line 42
    iget v7, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 43
    .line 44
    iget-object v8, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;-><init>(JLjava/lang/String;IILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
