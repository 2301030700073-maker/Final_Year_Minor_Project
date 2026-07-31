.class public final synthetic Lorg/wikipedia/page/edithistory/EditHistoryItemView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/page/edithistory/EditHistoryItemView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/edithistory/EditHistoryItemView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/page/edithistory/EditHistoryItemView;

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
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "revision"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/page/edithistory/EditHistoryItemView;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView;->listener:Lorg/wikipedia/page/edithistory/EditHistoryItemView$Listener;

    .line 12
    .line 13
    if-eqz p0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;

    .line 19
    .line 20
    iget-object v3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 21
    .line 22
    sget v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 23
    .line 24
    invoke-virtual {v3}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-boolean v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->toggleSelectState()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    .line 37
    .line 38
    invoke-virtual {v3}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 43
    .line 44
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 45
    .line 46
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v5, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->revision:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    iget-object v5, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iget-object v6, v6, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 63
    .line 64
    iget-object v6, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 65
    .line 66
    invoke-direct {v4, v0, v5, v6}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->revision:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 70
    .line 71
    if-eqz p0, :cond_1

    .line 72
    .line 73
    iget-boolean v5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isAnon:Z

    .line 74
    .line 75
    sget-object v7, Lorg/wikipedia/Constants$InvokeSource;->DIFF_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 76
    .line 77
    iget-wide v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 78
    .line 79
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v3}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    iget p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageId:I

    .line 88
    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    const/16 v11, 0x100

    .line 94
    .line 95
    const/16 v8, 0x21

    .line 96
    .line 97
    move-object v6, p1

    .line 98
    invoke-static/range {v3 .. v11}, Lorg/wikipedia/talk/UserTalkPopupHelper;->show$default(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ZLandroid/view/View;Lorg/wikipedia/Constants$InvokeSource;ILjava/lang/Long;Ljava/lang/Integer;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v2

    .line 106
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v2

    .line 110
    :cond_3
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView;->listener:Lorg/wikipedia/page/edithistory/EditHistoryItemView$Listener;

    .line 112
    .line 113
    if-eqz p0, :cond_4

    .line 114
    .line 115
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;

    .line 116
    .line 117
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->toggleSelectState()V

    .line 118
    .line 119
    .line 120
    :cond_4
    return-void

    .line 121
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView;->listener:Lorg/wikipedia/page/edithistory/EditHistoryItemView$Listener;

    .line 122
    .line 123
    if-eqz p0, :cond_7

    .line 124
    .line 125
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;

    .line 126
    .line 127
    iget-object v4, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 128
    .line 129
    sget p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 130
    .line 131
    invoke-virtual {v4}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-boolean p1, p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 136
    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->toggleSelectState()V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    sget-object v3, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->Companion:Lokio/ByteString$Companion;

    .line 144
    .line 145
    invoke-virtual {v4}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object v5, p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 150
    .line 151
    invoke-virtual {v4}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget v6, p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageId:I

    .line 156
    .line 157
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->revision:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 158
    .line 159
    if-eqz p0, :cond_6

    .line 160
    .line 161
    iget-wide v9, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 162
    .line 163
    const/4 v11, 0x0

    .line 164
    const/16 v12, 0x28

    .line 165
    .line 166
    const-wide/16 v7, 0x0

    .line 167
    .line 168
    invoke-static/range {v3 .. v12}, Lokio/ByteString$Companion;->newIntent$default(Lokio/ByteString$Companion;Landroid/content/Context;Lorg/wikipedia/page/PageTitle;IJJLorg/wikipedia/Constants$InvokeSource;I)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v2

    .line 180
    :cond_7
    :goto_1
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
