.class public final synthetic Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

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
    iget p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget p1, Lorg/wikipedia/readinglist/ReadingListActivity;->$r8$clinit:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListMode;->PREVIEW:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 20
    .line 21
    invoke-static {p1, v0, v3}, Lorg/jsoup/nodes/NodeUtils;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/ReadingListMode;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lorg/wikipedia/views/MessageCardView;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 42
    .line 43
    const p1, 0x7f120655

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateEmptyState$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    instance-of p1, p1, Lorg/wikipedia/main/MainFragment;

    .line 64
    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 72
    .line 73
    sget p1, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v1, "navigation"

    .line 80
    .line 81
    invoke-static {p1, v1, v0}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/16 v0, 0x35

    .line 86
    .line 87
    invoke-virtual {p0, p1, v0, v3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    return-void

    .line 91
    :pswitch_2
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Lorg/wikipedia/views/MessageCardView;

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 104
    .line 105
    const p0, 0x7f120659

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_3
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Lorg/wikipedia/views/MessageCardView;

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 125
    .line 126
    const p1, 0x7f12066d

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v3}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateEmptyState$1(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const p1, 0x7f1207e4

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/4 v7, 0x0

    .line 149
    const/16 v8, 0x1fc

    .line 150
    .line 151
    const-string v0, "nothanks_click"

    .line 152
    .line 153
    const-string v1, "rrl_saved_prompt"

    .line 154
    .line 155
    const/4 v2, 0x0

    .line 156
    const/4 v3, 0x0

    .line 157
    const/4 v4, 0x0

    .line 158
    const/4 v5, 0x0

    .line 159
    const/4 v6, 0x0

    .line 160
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_4
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->recentPreviewSavedReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 165
    .line 166
    if-eqz p1, :cond_1

    .line 167
    .line 168
    sget v0, Lorg/wikipedia/readinglist/ReadingListActivity;->$r8$clinit:I

    .line 169
    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0, p1}, Lorg/jsoup/nodes/NodeUtils;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 179
    .line 180
    .line 181
    :cond_1
    return-void

    .line 182
    :pswitch_5
    sget p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListOnboardingActivity;->$r8$clinit:I

    .line 183
    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {p1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->newIntent$default(Landroid/content/Context;)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 193
    .line 194
    .line 195
    const/4 v11, 0x0

    .line 196
    const/16 v12, 0x1fc

    .line 197
    .line 198
    const-string v4, "enter_click"

    .line 199
    .line 200
    const-string v5, "rrl_saved_prompt"

    .line 201
    .line 202
    const/4 v6, 0x0

    .line 203
    const/4 v7, 0x0

    .line 204
    const/4 v8, 0x0

    .line 205
    const/4 v9, 0x0

    .line 206
    const/4 v10, 0x0

    .line 207
    invoke-static/range {v4 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
