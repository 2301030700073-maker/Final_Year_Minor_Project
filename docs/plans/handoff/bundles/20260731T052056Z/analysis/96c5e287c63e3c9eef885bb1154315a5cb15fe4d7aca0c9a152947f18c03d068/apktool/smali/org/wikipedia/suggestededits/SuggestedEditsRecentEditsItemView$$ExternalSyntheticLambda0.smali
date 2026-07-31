.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;

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
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "pt_recent_changes"

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;->callback:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView$Callback;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$RecentEditsItemHolder;

    .line 24
    .line 25
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$RecentEditsItemHolder;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 26
    .line 27
    const-string v3, "editor_menu_click"

    .line 28
    .line 29
    invoke-static {v3, v2, v1}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v4, Lorg/wikipedia/talk/UserTalkPopupHelper;->INSTANCE:Lorg/wikipedia/talk/UserTalkPopupHelper;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    new-instance v6, Lorg/wikipedia/page/PageTitle;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 45
    .line 46
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->langCode:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v1, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->user:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->langCode:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-direct {v6, v1, v3, p0}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 77
    .line 78
    .line 79
    iget-boolean v7, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->anon:Z

    .line 80
    .line 81
    sget-object v9, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS_RECENT_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 82
    .line 83
    iget-wide v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->curRev:J

    .line 84
    .line 85
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    iget p0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->pageid:I

    .line 90
    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    const/4 v13, 0x1

    .line 96
    const/16 v10, 0x29

    .line 97
    .line 98
    move-object v8, p1

    .line 99
    invoke-virtual/range {v4 .. v13}, Lorg/wikipedia/talk/UserTalkPopupHelper;->show(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ZLandroid/view/View;Lorg/wikipedia/Constants$InvokeSource;ILjava/lang/Long;Ljava/lang/Integer;Z)V

    .line 100
    .line 101
    .line 102
    :cond_0
    return-void

    .line 103
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 104
    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView;->callback:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsItemView$Callback;

    .line 108
    .line 109
    if-eqz p0, :cond_3

    .line 110
    .line 111
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$RecentEditsItemHolder;

    .line 112
    .line 113
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$RecentEditsItemHolder;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 114
    .line 115
    const-string v0, "edit_item_click"

    .line 116
    .line 117
    invoke-static {v0, v2, v1}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedRecentEdits:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_2

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    sget-object v3, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 142
    .line 143
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->langCode:Ljava/lang/String;

    .line 144
    .line 145
    add-int/lit8 p1, p1, 0x1

    .line 146
    .line 147
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->revertCandidateLang:Ljava/lang/String;

    .line 158
    .line 159
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->revertCandidateCache:Lkotlin/collections/ArrayDeque;

    .line 160
    .line 161
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 162
    .line 163
    .line 164
    const-wide/16 v1, 0x0

    .line 165
    .line 166
    sput-wide v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->revertCandidateLastRevId:J

    .line 167
    .line 168
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_2

    .line 177
    .line 178
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    iget-wide v2, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->curRev:J

    .line 188
    .line 189
    sget-wide v4, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->revertCandidateLastRevId:J

    .line 190
    .line 191
    cmp-long v4, v2, v4

    .line 192
    .line 193
    if-lez v4, :cond_1

    .line 194
    .line 195
    sput-wide v2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->revertCandidateLastRevId:J

    .line 196
    .line 197
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->getParsedInstant()Lj$/time/Instant;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    sput-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->revertCandidateLastTimeStamp:Lj$/time/Instant;

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_2
    sget p1, Lorg/wikipedia/suggestededits/SuggestionsActivity;->$r8$clinit:I

    .line 205
    .line 206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->VANDALISM_PATROL:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 211
    .line 212
    invoke-static {p1, v0}, Lokhttp3/Cookie$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 218
    .line 219
    .line 220
    :cond_3
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
