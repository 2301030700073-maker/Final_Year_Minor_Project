.class public final synthetic Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->showFilterOverflowMenu()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    sget p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 13
    .line 14
    iget-object p0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iput-object p0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    sget p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 24
    .line 25
    iget-object v1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 26
    .line 27
    invoke-virtual {v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 40
    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    sget-object v0, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->Companion:Lokio/ByteString$Companion;

    .line 44
    .line 45
    invoke-virtual {v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-object v2, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 50
    .line 51
    invoke-virtual {v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget v3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageId:I

    .line 56
    .line 57
    invoke-virtual {v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-wide v4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 67
    .line 68
    invoke-virtual {v1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-wide v6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 78
    .line 79
    const/4 v8, 0x0

    .line 80
    const/16 v9, 0x20

    .line 81
    .line 82
    invoke-static/range {v0 .. v9}, Lokio/ByteString$Companion;->newIntent$default(Lokio/ByteString$Companion;Landroid/content/Context;Lorg/wikipedia/page/PageTitle;IJJLorg/wikipedia/Constants$InvokeSource;I)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    return-void

    .line 90
    :pswitch_2
    sget p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 91
    .line 92
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iget-boolean p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 97
    .line 98
    xor-int/lit8 v1, p1, 0x1

    .line 99
    .line 100
    iput-boolean v1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 101
    .line 102
    if-eqz p1, :cond_1

    .line 103
    .line 104
    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 106
    .line 107
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 108
    .line 109
    :cond_1
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->updateCompareState()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
