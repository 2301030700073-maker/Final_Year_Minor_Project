.class public final synthetic Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    iput p2, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget v1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->this$0:Landroidx/fragment/app/DialogFragment;

    .line 14
    .line 15
    check-cast p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    .line 16
    .line 17
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->feedGroups:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 28
    .line 29
    iget-object v1, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 30
    .line 31
    iget-wide v2, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p1, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableResource()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iget-object v1, v1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 46
    .line 47
    new-instance v4, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;

    .line 48
    .line 49
    invoke-direct {v4, v2, v3, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;-><init>(Ljava/lang/Long;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v4}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->this$0:Landroidx/fragment/app/DialogFragment;

    .line 60
    .line 61
    check-cast p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;

    .line 62
    .line 63
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;->subscriptions:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 74
    .line 75
    iget-object v1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 76
    .line 77
    iget v2, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 78
    .line 79
    iget-object v3, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 80
    .line 81
    iget-object p1, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v1, v1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 84
    .line 85
    new-instance v4, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;

    .line 86
    .line 87
    invoke-direct {v4, v3, v2, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v4}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
