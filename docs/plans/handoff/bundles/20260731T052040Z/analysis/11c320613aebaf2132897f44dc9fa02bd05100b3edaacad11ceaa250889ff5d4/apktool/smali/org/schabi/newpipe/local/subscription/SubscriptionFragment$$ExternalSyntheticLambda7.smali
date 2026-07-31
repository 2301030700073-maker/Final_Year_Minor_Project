.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;
.implements Lcom/xwray/groupie/OnItemClickListener;
.implements Lcom/xwray/groupie/OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/xwray/groupie/Item;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    instance-of p2, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    .line 20
    .line 21
    iget-wide v0, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->groupId:J

    .line 22
    .line 23
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->name:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0, v0, v1, p1}, Landroidx/sqlite/SQLite;->openFeedFragment(Landroidx/fragment/app/FragmentManager;JLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    instance-of p2, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    .line 38
    .line 39
    iget-wide v0, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->groupId:J

    .line 40
    .line 41
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->name:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p0, v0, v1, p1}, Landroidx/sqlite/SQLite;->openFeedFragment(Landroidx/fragment/app/FragmentManager;JLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    instance-of p2, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewItem;

    .line 48
    .line 49
    const-wide/16 v0, -0x1

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    sget-object p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;->newInstance(J)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1, p0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    instance-of p1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupAddNewGridItem;

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    sget-object p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;->newInstance(J)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p1, p0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method public onItemLongClick(Lcom/xwray/groupie/Item;Landroid/view/View;)Z
    .locals 5

    .line 1
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    instance-of p2, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    move-object v2, p1

    .line 16
    check-cast v2, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    .line 17
    .line 18
    iget-wide v2, v2, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->groupId:J

    .line 19
    .line 20
    cmp-long v2, v2, v0

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    :cond_0
    instance-of v2, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    move-object v3, p1

    .line 29
    check-cast v3, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    .line 30
    .line 31
    iget-wide v3, v3, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->groupId:J

    .line 32
    .line 33
    cmp-long v0, v3, v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_2
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    sget-object p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    .line 45
    .line 46
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;

    .line 47
    .line 48
    iget-wide v1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardItem;->groupId:J

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;->newInstance(J)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    if-eqz v2, :cond_4

    .line 66
    .line 67
    sget-object p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    .line 68
    .line 69
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    .line 70
    .line 71
    iget-wide v1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->groupId:J

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;->newInstance(J)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 88
    return p0
.end method

.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f13008a

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
