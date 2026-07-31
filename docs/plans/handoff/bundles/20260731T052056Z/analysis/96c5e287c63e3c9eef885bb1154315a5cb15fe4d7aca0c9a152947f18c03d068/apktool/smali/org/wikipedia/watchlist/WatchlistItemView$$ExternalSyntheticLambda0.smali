.class public final synthetic Lorg/wikipedia/watchlist/WatchlistItemView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/watchlist/WatchlistItemView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/watchlist/WatchlistItemView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/watchlist/WatchlistItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/watchlist/WatchlistItemView;

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
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/watchlist/WatchlistItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/watchlist/WatchlistItemView;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/wikipedia/watchlist/WatchlistItemView;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistItemView;->callback:Lorg/wikipedia/watchlist/WatchlistItemView$Callback;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lorg/wikipedia/page/PageTitle;

    .line 26
    .line 27
    iget-object p0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p0}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget-object v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->user:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0, v3, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 46
    .line 47
    .line 48
    iget-boolean v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isAnon:Z

    .line 49
    .line 50
    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->WATCHLIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 51
    .line 52
    iget-wide v6, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->revid:J

    .line 53
    .line 54
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    iget p0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->pageId:I

    .line 59
    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const/16 v9, 0x100

    .line 65
    .line 66
    const/16 v6, 0x20

    .line 67
    .line 68
    move-object v4, p1

    .line 69
    invoke-static/range {v1 .. v9}, Lorg/wikipedia/talk/UserTalkPopupHelper;->show$default(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ZLandroid/view/View;Lorg/wikipedia/Constants$InvokeSource;ILjava/lang/Long;Ljava/lang/Integer;I)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void

    .line 73
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/watchlist/WatchlistItemView;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistItemView;->callback:Lorg/wikipedia/watchlist/WatchlistItemView$Callback;

    .line 78
    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 82
    .line 83
    iget-object v0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->logtype:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-lez v0, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    sget-object v1, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->Companion:Lokio/ByteString$Companion;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    new-instance v3, Lorg/wikipedia/page/PageTitle;

    .line 99
    .line 100
    iget-object v0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->title:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v4, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    const/4 v11, 0x0

    .line 108
    invoke-direct {v3, v0, v4, v11}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget v4, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->pageId:I

    .line 112
    .line 113
    iget-wide v7, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->revid:J

    .line 114
    .line 115
    sget-object v9, Lorg/wikipedia/Constants$InvokeSource;->WATCHLIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 116
    .line 117
    const/16 v10, 0x8

    .line 118
    .line 119
    const-wide/16 v5, 0x0

    .line 120
    .line 121
    invoke-static/range {v1 .. v10}, Lokio/ByteString$Companion;->newIntent$default(Lokio/ByteString$Companion;Landroid/content/Context;Lorg/wikipedia/page/PageTitle;IJJLorg/wikipedia/Constants$InvokeSource;I)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1, v11}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_0
    return-void

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
