.class public final synthetic Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/xwray/groupie/OnItemClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/xwray/groupie/Item;Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    instance-of v2, v1, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v1, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;

    .line 23
    .line 24
    iget-object v2, v1, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 25
    .line 26
    iput-object v2, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 27
    .line 28
    iget-object v2, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconPreview:Landroid/widget/ImageButton;

    .line 34
    .line 35
    iget v1, v1, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->iconRes:I

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    sget-object v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    instance-of v2, v1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    check-cast v1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;

    .line 57
    .line 58
    iget-object v2, v1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 59
    .line 60
    iget-wide v2, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    iput-boolean v4, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSubscriptionSelectionChanged:Z

    .line 64
    .line 65
    iget-object v5, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 66
    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    iget-object v6, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 76
    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    :goto_0
    move v8, v4

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :goto_1
    iput-boolean v8, v1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    .line 98
    .line 99
    invoke-static/range {p2 .. p2}, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v7, v1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->selectedHighlight:Landroid/widget/FrameLayout;

    .line 104
    .line 105
    const/4 v14, 0x0

    .line 106
    const/16 v15, 0x18

    .line 107
    .line 108
    const-wide/16 v9, 0x96

    .line 109
    .line 110
    sget-object v11, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 111
    .line 112
    const-wide/16 v12, 0x0

    .line 113
    .line 114
    invoke-static/range {v7 .. v15}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->updateSubscriptionSelectedCount()V

    .line 118
    .line 119
    .line 120
    :cond_2
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
