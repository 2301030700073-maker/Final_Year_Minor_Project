.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/activitytab/ActivityTabFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activitytab/ActivityTabFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x2d

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x1

    .line 27
    iput-boolean v6, v5, Lorg/wikipedia/activitytab/ActivityTabViewModel;->shouldRefreshTimelineSilently:Z

    .line 28
    .line 29
    iget-object v5, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->activitySource:Lorg/wikipedia/activitytab/timeline/ActivitySource;

    .line 30
    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    const/4 v5, -0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v7, Lorg/wikipedia/activitytab/ActivityTabFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    aget v5, v7, v5

    .line 42
    .line 43
    :goto_0
    if-ne v5, v6, :cond_1

    .line 44
    .line 45
    sget-object v7, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->Companion:Lokio/ByteString$Companion;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    new-instance v9, Lorg/wikipedia/page/PageTitle;

    .line 52
    .line 53
    iget-object v10, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->apiTitle:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->getWikiSiteForTimeline()Lorg/wikipedia/dataclient/WikiSite;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    iget-object v12, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->thumbnailUrl:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v13, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->description:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v14, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->displayTitle:Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct/range {v9 .. v14}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v10, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->pageId:I

    .line 72
    .line 73
    iget-wide v13, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->id:J

    .line 74
    .line 75
    const/4 v15, 0x0

    .line 76
    const/16 v16, 0x28

    .line 77
    .line 78
    const-wide/16 v11, 0x0

    .line 79
    .line 80
    invoke-static/range {v7 .. v16}, Lokio/ByteString$Companion;->newIntent$default(Lokio/ByteString$Companion;Landroid/content/Context;Lorg/wikipedia/page/PageTitle;IJJLorg/wikipedia/Constants$InvokeSource;I)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    new-instance v5, Lorg/wikipedia/page/PageTitle;

    .line 89
    .line 90
    iget-object v7, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->namespace:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v8, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->apiTitle:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v9, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 95
    .line 96
    invoke-direct {v5, v7, v8, v9}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 97
    .line 98
    .line 99
    iget-object v7, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->displayTitle:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v5, v7}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v7, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->thumbnailUrl:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v7, v5, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v1, v1, Lorg/wikipedia/activitytab/timeline/TimelineItem;->description:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v1, v5, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 111
    .line 112
    sget v1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    new-instance v7, Lorg/wikipedia/history/HistoryEntry;

    .line 119
    .line 120
    invoke-direct {v7, v2, v5}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v7, v5, v6}, Lorg/wikipedia/login/LoginClient;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-object v4

    .line 131
    :pswitch_0
    move-object/from16 v1, p1

    .line 132
    .line 133
    check-cast v1, Lorg/wikipedia/categories/db/Category;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 139
    .line 140
    .line 141
    new-instance v2, Lorg/wikipedia/page/PageTitle;

    .line 142
    .line 143
    iget-object v5, v1, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 144
    .line 145
    sget-object v6, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 146
    .line 147
    iget-object v1, v1, Lorg/wikipedia/categories/db/Category;->lang:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-direct {v2, v5, v1, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget v1, Lorg/wikipedia/categories/CategoryActivity;->$r8$clinit:I

    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 170
    .line 171
    .line 172
    return-object v4

    .line 173
    :pswitch_1
    move-object/from16 v1, p1

    .line 174
    .line 175
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    new-instance v3, Lorg/wikipedia/history/HistoryEntry;

    .line 181
    .line 182
    invoke-direct {v3, v2, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    sget v5, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 190
    .line 191
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0, v3, v1}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 200
    .line 201
    .line 202
    return-object v4

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
