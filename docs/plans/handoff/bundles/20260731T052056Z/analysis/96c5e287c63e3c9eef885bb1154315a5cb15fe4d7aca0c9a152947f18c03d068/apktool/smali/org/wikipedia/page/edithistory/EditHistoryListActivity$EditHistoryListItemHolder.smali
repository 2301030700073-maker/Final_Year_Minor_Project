.class public final Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/edithistory/EditHistoryItemView$Listener;


# instance fields
.field public revision:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

.field public final synthetic this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

.field public final view:Lorg/wikipedia/page/edithistory/EditHistoryItemView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lorg/wikipedia/page/edithistory/EditHistoryItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->view:Lorg/wikipedia/page/edithistory/EditHistoryItemView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toggleSelectState()V
    .locals 10

    .line 1
    sget v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->revision:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_6

    .line 13
    .line 14
    iget-wide v4, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 15
    .line 16
    iget-object v6, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 17
    .line 18
    if-nez v6, :cond_1

    .line 19
    .line 20
    iget-object v7, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    iget-wide v7, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 25
    .line 26
    cmp-long v7, v7, v4

    .line 27
    .line 28
    if-nez v7, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-object v2, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    iget-object v7, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 35
    .line 36
    if-nez v7, :cond_3

    .line 37
    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    iget-wide v8, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 41
    .line 42
    cmp-long v8, v8, v4

    .line 43
    .line 44
    if-nez v8, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iput-object v2, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 51
    .line 52
    iget-wide v8, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 53
    .line 54
    cmp-long v2, v8, v4

    .line 55
    .line 56
    if-nez v2, :cond_4

    .line 57
    .line 58
    iput-object v3, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    if-eqz v7, :cond_5

    .line 62
    .line 63
    iget-wide v6, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 64
    .line 65
    cmp-long v2, v6, v4

    .line 66
    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    iput-object v3, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 70
    .line 71
    :goto_2
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->updateSelectState()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->updateCompareStateItems()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    const p0, 0x7f12082a

    .line 79
    .line 80
    .line 81
    invoke-static {v0, p0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_6
    const-string p0, "revision"

    .line 86
    .line 87
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v3
.end method

.method public final updateSelectState()V
    .locals 5

    .line 1
    sget v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->revision:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-wide v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 14
    .line 15
    iget-boolean v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget-wide v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 26
    .line 27
    cmp-long v3, v3, v1

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-wide v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 38
    .line 39
    cmp-long v0, v3, v1

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x1

    .line 46
    :goto_0
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->view:Lorg/wikipedia/page/edithistory/EditHistoryItemView;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/edithistory/EditHistoryItemView;->setSelectedState(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    const-string p0, "revision"

    .line 53
    .line 54
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    throw p0
.end method
