.class public final Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/notifications/NotificationFilterItemView$Callback;
.implements Lorg/wikipedia/watchlist/WatchlistFilterItemView$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final context:Lorg/wikipedia/activity/BaseActivity;

.field public final excludedWikiCodes:Ljava/util/Set;

.field public final filtersList:Ljava/util/ArrayList;

.field public final includedTypeCodes:Ljava/util/Set;

.field public final synthetic this$0:Lorg/wikipedia/activity/BaseActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/notifications/NotificationFilterActivity;Lorg/wikipedia/notifications/NotificationFilterActivity;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->this$0:Lorg/wikipedia/activity/BaseActivity;

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->context:Lorg/wikipedia/activity/BaseActivity;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->filtersList:Ljava/util/ArrayList;

    .line 12
    .line 13
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 14
    .line 15
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationExcludedWikiCodes()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->excludedWikiCodes:Ljava/util/Set;

    .line 26
    .line 27
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationExcludedTypeCodes()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Iterable;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->includedTypeCodes:Ljava/util/Set;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/watchlist/WatchlistFilterActivity;Lorg/wikipedia/watchlist/WatchlistFilterActivity;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->$r8$classId:I

    .line 40
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->this$0:Lorg/wikipedia/activity/BaseActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->context:Lorg/wikipedia/activity/BaseActivity;

    iput-object p3, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->filtersList:Ljava/util/ArrayList;

    .line 41
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getWatchlistExcludedWikiCodes()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->excludedWikiCodes:Ljava/util/Set;

    .line 42
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getWatchlistIncludedTypeCodes()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->includedTypeCodes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->filtersList:Ljava/util/ArrayList;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemViewType(I)I
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const v4, 0x7f120490

    .line 7
    .line 8
    .line 9
    iget-object v5, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->this$0:Lorg/wikipedia/activity/BaseActivity;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->filtersList:Ljava/util/ArrayList;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v0, v0, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v5, Lorg/wikipedia/notifications/NotificationFilterActivity;

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    move v1, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    instance-of p0, p0, Ljava/lang/String;

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    move v1, v2

    .line 51
    :cond_1
    :goto_0
    return v1

    .line 52
    :pswitch_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    instance-of v0, v0, Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v5, Lorg/wikipedia/watchlist/WatchlistFilterActivity;

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    move v1, v3

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    instance-of p0, p0, Ljava/lang/String;

    .line 83
    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    move v1, v2

    .line 87
    :cond_3
    :goto_1
    return v1

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->filtersList:Ljava/util/ArrayList;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 9
    .line 10
    instance-of v0, p1, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterHeaderViewHolder;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p1, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterHeaderViewHolder;

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast p0, Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p1, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterHeaderViewHolder;->headerText:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterAddLanguageViewHolder;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    check-cast p1, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterAddLanguageViewHolder;

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast p0, Ljava/lang/String;

    .line 45
    .line 46
    iget-object p2, p1, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterAddLanguageViewHolder;->filterItemView:Lorg/wikipedia/notifications/NotificationFilterItemView;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Lorg/wikipedia/notifications/NotificationFilterItemView;->setCallback(Lorg/wikipedia/notifications/NotificationFilterItemView$Callback;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p0}, Lorg/wikipedia/notifications/NotificationFilterItemView;->setSingleLabel(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    check-cast p1, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterItemViewHolder;

    .line 56
    .line 57
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    check-cast p0, Lorg/wikipedia/notifications/NotificationFilterActivity$Filter;

    .line 65
    .line 66
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    check-cast p1, Lorg/wikipedia/notifications/NotificationFilterItemView;

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Lorg/wikipedia/notifications/NotificationFilterItemView;->setContents(Lorg/wikipedia/notifications/NotificationFilterActivity$Filter;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void

    .line 77
    :pswitch_0
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 78
    .line 79
    instance-of v0, p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterHeaderViewHolder;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    check-cast p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterHeaderViewHolder;

    .line 84
    .line 85
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    check-cast p0, Ljava/lang/String;

    .line 93
    .line 94
    iget-object p1, p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterHeaderViewHolder;->headerText:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    instance-of v0, p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterItemViewAddLanguageViewHolder;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    check-cast p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterItemViewAddLanguageViewHolder;

    .line 105
    .line 106
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    check-cast p0, Ljava/lang/String;

    .line 114
    .line 115
    iget-object p2, p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterItemViewAddLanguageViewHolder;->filterItemView:Lorg/wikipedia/watchlist/WatchlistFilterItemView;

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->setCallback(Lorg/wikipedia/watchlist/WatchlistFilterItemView$Callback;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p0}, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->setSingleLabel(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    check-cast p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterItemViewHolder;

    .line 125
    .line 126
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;

    .line 134
    .line 135
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    check-cast p1, Lorg/wikipedia/watchlist/WatchlistFilterItemView;

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->setContents(Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;)V

    .line 143
    .line 144
    .line 145
    :goto_1
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Lorg/wikipedia/notifications/NotificationFilterActivity$Filter;)V
    .locals 6

    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    iget-object v0, p1, Lorg/wikipedia/notifications/NotificationFilterActivity$Filter;->filterCode:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->context:Lorg/wikipedia/activity/BaseActivity;

    check-cast v1, Lorg/wikipedia/notifications/NotificationFilterActivity;

    const v2, 0x7f120481

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->excludedWikiCodes:Ljava/util/Set;

    iget-object v4, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->includedTypeCodes:Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 320
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 321
    sget p1, Lorg/wikipedia/notifications/NotificationFilterActivity;->$r8$clinit:I

    invoke-static {}, Lokhttp3/HttpUrl$Companion;->allTypesIdList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 322
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    goto :goto_0

    :cond_1
    const v2, 0x7f120482

    .line 323
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 325
    sget p1, Lorg/wikipedia/notifications/NotificationFilterActivity;->$r8$clinit:I

    invoke-static {}, Lokhttp3/HttpUrl$Companion;->allWikisList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 326
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 327
    :cond_3
    iget p1, p1, Lorg/wikipedia/notifications/NotificationFilterActivity$Filter;->type:I

    if-nez p1, :cond_5

    .line 328
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 330
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_6
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_7
    :goto_0
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 333
    :try_start_0
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 334
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlinx/serialization/internal/HashSetSerializer;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v2, v5, p1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    invoke-virtual {v1, v2, v3}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 335
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_1
    const v2, 0x7f1205fc

    .line 336
    invoke-static {v2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 337
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 338
    :try_start_1
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 339
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlinx/serialization/internal/HashSetSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v2, v3, p1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    invoke-virtual {v1, v2, v4}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 340
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    :goto_2
    const p1, 0x7f1205fb

    .line 341
    invoke-static {p1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 342
    iget-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->filtersList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onCheckedChanged(Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->this$0:Lorg/wikipedia/activity/BaseActivity;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/watchlist/WatchlistFilterActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;->filterCode:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->context:Lorg/wikipedia/activity/BaseActivity;

    .line 11
    .line 12
    check-cast v2, Lorg/wikipedia/watchlist/WatchlistFilterActivity;

    .line 13
    .line 14
    const v3, 0x7f120a09

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget v3, p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;->type:I

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    iget-object v6, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->includedTypeCodes:Ljava/util/Set;

    .line 30
    .line 31
    iget-object v7, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->excludedWikiCodes:Ljava/util/Set;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    if-nez v3, :cond_a

    .line 36
    .line 37
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 44
    .line 45
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {v7, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_0
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_1
    if-nez v3, :cond_3

    .line 68
    .line 69
    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    invoke-interface {v7, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_2
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_3
    const/4 v2, 0x1

    .line 86
    if-ne v3, v2, :cond_a

    .line 87
    .line 88
    iget-boolean p1, p1, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;->isCheckBox:Z

    .line 89
    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-interface {v6, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :cond_4
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_5
    sget-object p1, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->Companion:Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->access$getMINOR_EDITS_GROUP$cp()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->access$getBOT_EDITS_GROUP$cp()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->access$getUNSEEN_CHANGES_GROUP$cp()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->access$getLATEST_REVISIONS_GROUP$cp()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->access$getUSER_STATUS_GROUP$cp()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    const/4 v11, 0x5

    .line 137
    new-array v11, v11, [Ljava/util/List;

    .line 138
    .line 139
    aput-object p1, v11, v4

    .line 140
    .line 141
    aput-object v3, v11, v2

    .line 142
    .line 143
    const/4 p1, 0x2

    .line 144
    aput-object v8, v11, p1

    .line 145
    .line 146
    const/4 p1, 0x3

    .line 147
    aput-object v9, v11, p1

    .line 148
    .line 149
    const/4 p1, 0x4

    .line 150
    aput-object v10, v11, p1

    .line 151
    .line 152
    invoke-static {v11}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    move-object v3, v2

    .line 171
    check-cast v3, Ljava/util/List;

    .line 172
    .line 173
    sget-object v8, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->Companion:Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

    .line 174
    .line 175
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-static {v1}, Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;->find(Ljava/lang/String;)Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_6

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_7
    move-object v2, v5

    .line 190
    :goto_0
    check-cast v2, Ljava/util/List;

    .line 191
    .line 192
    if-nez v2, :cond_8

    .line 193
    .line 194
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 195
    .line 196
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    .line 197
    .line 198
    const/16 v3, 0xa

    .line 199
    .line 200
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_9

    .line 216
    .line 217
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    check-cast v3, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 222
    .line 223
    invoke-virtual {v3}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_9
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Ljava/util/Collection;

    .line 236
    .line 237
    invoke-interface {v6, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 238
    .line 239
    .line 240
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    :cond_a
    :goto_2
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 244
    .line 245
    invoke-static {v7}, Lorg/wikipedia/settings/Prefs;->setWatchlistExcludedWikiCodes(Ljava/util/Set;)V

    .line 246
    .line 247
    .line 248
    move-object p1, v6

    .line 249
    check-cast p1, Ljava/util/Collection;

    .line 250
    .line 251
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setWatchlistIncludedTypeCodes(Ljava/util/Collection;)V

    .line 252
    .line 253
    .line 254
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 255
    .line 256
    new-instance p1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 257
    .line 258
    invoke-static {v0, v5}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 263
    .line 264
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v5, "WatchlistFilterSelection.appWikis:"

    .line 271
    .line 272
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v2, ".excludedWikiCodes:"

    .line 279
    .line 280
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v2, ".includedTypeCodes:"

    .line 287
    .line 288
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-direct {p1, v1, v2}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-static {p1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->filtersList:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    invoke-virtual {p0, v4, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 314
    .line 315
    .line 316
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->context:Lorg/wikipedia/activity/BaseActivity;

    .line 6
    .line 7
    iget-object v4, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterAdapter;->this$0:Lorg/wikipedia/activity/BaseActivity;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v4, Lorg/wikipedia/notifications/NotificationFilterActivity;

    .line 13
    .line 14
    check-cast v3, Lorg/wikipedia/notifications/NotificationFilterActivity;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    if-eq p2, v2, :cond_0

    .line 19
    .line 20
    new-instance p1, Lorg/wikipedia/notifications/NotificationFilterItemView;

    .line 21
    .line 22
    invoke-direct {p1, v3}, Lorg/wikipedia/notifications/NotificationFilterItemView;-><init>(Lorg/wikipedia/notifications/NotificationFilterActivity;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lorg/wikipedia/notifications/NotificationFilterItemView;->setCallback(Lorg/wikipedia/notifications/NotificationFilterItemView$Callback;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterItemViewHolder;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterAddLanguageViewHolder;

    .line 35
    .line 36
    new-instance p1, Lorg/wikipedia/notifications/NotificationFilterItemView;

    .line 37
    .line 38
    invoke-direct {p1, v3}, Lorg/wikipedia/notifications/NotificationFilterItemView;-><init>(Lorg/wikipedia/notifications/NotificationFilterActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v4, p1}, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterAddLanguageViewHolder;-><init>(Lorg/wikipedia/notifications/NotificationFilterActivity;Lorg/wikipedia/notifications/NotificationFilterItemView;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance p0, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterHeaderViewHolder;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const v0, 0x7f0c05da

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Lorg/wikipedia/notifications/NotificationFilterActivity$NotificationFilterHeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-object p0

    .line 65
    :pswitch_0
    check-cast v4, Lorg/wikipedia/watchlist/WatchlistFilterActivity;

    .line 66
    .line 67
    check-cast v3, Lorg/wikipedia/watchlist/WatchlistFilterActivity;

    .line 68
    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    if-eq p2, v2, :cond_2

    .line 72
    .line 73
    new-instance p1, Lorg/wikipedia/watchlist/WatchlistFilterItemView;

    .line 74
    .line 75
    invoke-direct {p1, v3}, Lorg/wikipedia/watchlist/WatchlistFilterItemView;-><init>(Lorg/wikipedia/watchlist/WatchlistFilterActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p0}, Lorg/wikipedia/watchlist/WatchlistFilterItemView;->setCallback(Lorg/wikipedia/watchlist/WatchlistFilterItemView$Callback;)V

    .line 79
    .line 80
    .line 81
    new-instance p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterItemViewHolder;

    .line 82
    .line 83
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    new-instance p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterItemViewAddLanguageViewHolder;

    .line 88
    .line 89
    new-instance p1, Lorg/wikipedia/watchlist/WatchlistFilterItemView;

    .line 90
    .line 91
    invoke-direct {p1, v3}, Lorg/wikipedia/watchlist/WatchlistFilterItemView;-><init>(Lorg/wikipedia/watchlist/WatchlistFilterActivity;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v4, p1}, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterItemViewAddLanguageViewHolder;-><init>(Lorg/wikipedia/watchlist/WatchlistFilterActivity;Lorg/wikipedia/watchlist/WatchlistFilterItemView;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    new-instance p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterHeaderViewHolder;

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const v0, 0x7f0c05fb

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p1}, Lorg/wikipedia/watchlist/WatchlistFilterActivity$WatchlistFilterHeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    :goto_1
    return-object p0

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
