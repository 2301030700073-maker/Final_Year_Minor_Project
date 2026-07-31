.class public final Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    iget p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EmptyMessagesViewHolder;

    .line 7
    .line 8
    iget-object p0, p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EmptyMessagesViewHolder;->binding:Lokio/internal/DefaultSocket;

    .line 9
    .line 10
    iget-object p2, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p2, Landroid/widget/TextView;

    .line 13
    .line 14
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 15
    .line 16
    iget-object p1, p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EmptyMessagesViewHolder;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 17
    .line 18
    const v0, 0x7f120520

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p2, Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object p1, p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 37
    .line 38
    const/16 v0, 0x8

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    move p1, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move p1, v0

    .line 46
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Landroid/widget/LinearLayout;

    .line 52
    .line 53
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 54
    .line 55
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditHistoryFilterType()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-lez p1, :cond_1

    .line 64
    .line 65
    move v0, v1

    .line 66
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_0
    check-cast p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsViewHolder;

    .line 71
    .line 72
    iget-object p0, p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsViewHolder;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 73
    .line 74
    sget p2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iget-object p2, p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->editHistoryStatsData:Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Lorg/wikipedia/util/Resource;

    .line 87
    .line 88
    instance-of v0, p2, Lorg/wikipedia/util/Resource$Success;

    .line 89
    .line 90
    iget-object p1, p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsViewHolder;->view:Lorg/wikipedia/views/EditHistoryStatsView;

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 99
    .line 100
    check-cast p2, Lorg/wikipedia/util/Resource$Success;

    .line 101
    .line 102
    iget-object p2, p2, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;

    .line 105
    .line 106
    invoke-virtual {p1, p0, p2}, Lorg/wikipedia/views/EditHistoryStatsView;->setup(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 115
    .line 116
    const/4 p2, 0x0

    .line 117
    invoke-virtual {p1, p0, p2}, Lorg/wikipedia/views/EditHistoryStatsView;->setup(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    iget p2, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EmptyMessagesViewHolder;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lokio/internal/DefaultSocket;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lokio/internal/DefaultSocket;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EmptyMessagesViewHolder;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lokio/internal/DefaultSocket;)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_0
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsViewHolder;

    .line 23
    .line 24
    new-instance p2, Lorg/wikipedia/views/EditHistoryStatsView;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Lorg/wikipedia/views/EditHistoryStatsView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsViewHolder;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lorg/wikipedia/views/EditHistoryStatsView;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
