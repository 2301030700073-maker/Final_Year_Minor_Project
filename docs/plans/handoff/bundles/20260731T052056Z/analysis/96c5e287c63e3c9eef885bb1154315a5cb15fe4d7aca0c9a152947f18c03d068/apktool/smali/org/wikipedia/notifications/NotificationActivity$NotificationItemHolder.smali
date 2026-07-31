.class public final Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

.field public container:Lorg/wikipedia/notifications/NotificationListItemContainer;

.field public itemPosition:I

.field public linkHandler:Lorg/wikipedia/notifications/NotificationLinkHandler;

.field public final synthetic this$0:Lorg/wikipedia/notifications/NotificationActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;Lorg/wikipedia/databinding/ItemNotificationBinding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 2
    .line 3
    iget-object p1, p2, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 11
    .line 12
    const/4 p2, -0x1

    .line 13
    iput p2, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->itemPosition:I

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    new-array p0, p0, [Landroid/view/View;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    aput-object p1, p0, p2

    .line 26
    .line 27
    aget-object p0, p0, p2

    .line 28
    .line 29
    new-instance p1, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final getContainer()Lorg/wikipedia/notifications/NotificationListItemContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->container:Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "container"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final isSwipeable()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 5
    .line 6
    iget-object v0, p1, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "multiSelectActionMode"

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->getContainer()Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget p0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->itemPosition:I

    .line 25
    .line 26
    invoke-virtual {p1, v0, p0}, Lorg/wikipedia/notifications/NotificationActivity;->toggleSelectItem(Lorg/wikipedia/notifications/NotificationListItemContainer;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->getContainer()Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lorg/wikipedia/notifications/NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/db/Notification;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->getContainer()Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget v2, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->itemPosition:I

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x1

    .line 55
    invoke-virtual {p1, v1, v3, v4, v2}, Lorg/wikipedia/notifications/NotificationActivity;->markReadItems(Ljava/util/List;ZZLjava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v0, Lorg/wikipedia/notifications/db/Notification;->contents:Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p1, Lorg/wikipedia/notifications/db/Notification$Contents;->links:Lorg/wikipedia/notifications/db/Notification$Links;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Lorg/wikipedia/notifications/db/Notification$Links;->getPrimary()Lorg/wikipedia/notifications/db/Notification$Link;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iget-object p1, p1, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-lez v0, :cond_3

    .line 79
    .line 80
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->linkHandler:Lorg/wikipedia/notifications/NotificationLinkHandler;

    .line 81
    .line 82
    const-string v1, "linkHandler"

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    new-instance v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 88
    .line 89
    invoke-direct {v3, p1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput-object v3, v0, Lorg/wikipedia/notifications/NotificationLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 93
    .line 94
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->linkHandler:Lorg/wikipedia/notifications/NotificationLinkHandler;

    .line 95
    .line 96
    if-eqz p0, :cond_1

    .line 97
    .line 98
    const-string v0, ""

    .line 99
    .line 100
    invoke-virtual {p0, p1, v2, v0}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v2

    .line 108
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v2

    .line 112
    :cond_3
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 5
    .line 6
    iget-object v0, p1, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    const-string v1, "searchActionMode"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/wikipedia/notifications/NotificationActivity;->finishActionMode$1()V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v0, p1, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    const-string v1, "multiSelectActionMode"

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget-object v0, p1, Lorg/wikipedia/notifications/NotificationActivity;->multiSelectActionModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->getContainer()Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget p0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->itemPosition:I

    .line 54
    .line 55
    invoke-virtual {p1, v0, p0}, Lorg/wikipedia/notifications/NotificationActivity;->toggleSelectItem(Lorg/wikipedia/notifications/NotificationListItemContainer;I)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    return p0
.end method

.method public final onSwipe()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->getContainer()Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/notifications/NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/db/Notification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->getContainer()Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iget v2, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->itemPosition:I

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x4

    .line 30
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 31
    .line 32
    invoke-static {p0, v1, v0, v2, v3}, Lorg/wikipedia/notifications/NotificationActivity;->markReadItems$default(Lorg/wikipedia/notifications/NotificationActivity;Ljava/util/List;ZLjava/lang/Integer;I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
