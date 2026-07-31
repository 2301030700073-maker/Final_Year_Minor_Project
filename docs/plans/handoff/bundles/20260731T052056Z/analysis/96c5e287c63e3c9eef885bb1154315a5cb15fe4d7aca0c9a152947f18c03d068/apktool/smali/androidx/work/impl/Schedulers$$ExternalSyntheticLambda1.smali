.class public final synthetic Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 15
    .line 16
    check-cast v3, Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 17
    .line 18
    move-object v5, v2

    .line 19
    check-cast v5, Lorg/wikipedia/page/PageTitle;

    .line 20
    .line 21
    move-object v6, v1

    .line 22
    check-cast v6, Lorg/wikipedia/history/HistoryEntry;

    .line 23
    .line 24
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 25
    .line 26
    const-string v1, "pageFragment"

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v0, :cond_f

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    iget-boolean v4, v0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v4, "bottom_sheet_fragment"

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    move-object v0, v2

    .line 64
    :goto_1
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->onPageCloseActionMode()V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lorg/wikipedia/page/PageActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    aget v0, v0, v3

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    if-eq v0, v3, :cond_d

    .line 82
    .line 83
    iget-object v4, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 84
    .line 85
    const/4 p0, 0x2

    .line 86
    if-eq v0, p0, :cond_b

    .line 87
    .line 88
    const/4 p0, 0x3

    .line 89
    if-eq v0, p0, :cond_9

    .line 90
    .line 91
    const/4 p0, 0x4

    .line 92
    if-eq v0, p0, :cond_6

    .line 93
    .line 94
    if-eqz v4, :cond_5

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v5}, Lorg/wikipedia/page/PageFragment;->selectedTabPosition(Lorg/wikipedia/page/PageTitle;)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    const/4 v0, -0x1

    .line 107
    if-ne p0, v0, :cond_4

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v9, 0x0

    .line 111
    const/4 v7, 0x1

    .line 112
    invoke-virtual/range {v4 .. v9}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZZZ)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    invoke-virtual {v4, p0}, Lorg/wikipedia/page/PageFragment;->setCurrentTabAndReset(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v2

    .line 124
    :cond_6
    if-eqz v4, :cond_8

    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-object p0, v4, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 133
    .line 134
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    invoke-virtual {v4, v5, v6, p0}, Lorg/wikipedia/page/PageFragment;->openInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 141
    .line 142
    .line 143
    iget-object p0, v4, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 144
    .line 145
    if-eqz p0, :cond_7

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/google/gson/GsonBuilder;->loadFromBackStack()V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    const-string p0, "pageFragmentLoadState"

    .line 152
    .line 153
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v2

    .line 157
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v2

    .line 161
    :cond_9
    if-eqz v4, :cond_a

    .line 162
    .line 163
    invoke-virtual {v4, v5, v6}, Lorg/wikipedia/page/PageFragment;->openInNewBackgroundTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v2

    .line 171
    :cond_b
    if-eqz v4, :cond_c

    .line 172
    .line 173
    const/4 v7, 0x1

    .line 174
    const/4 v9, 0x0

    .line 175
    const/4 v8, 0x1

    .line 176
    invoke-virtual/range {v4 .. v9}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZZZ)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v2

    .line 184
    :cond_d
    iget-object v4, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 185
    .line 186
    if-eqz v4, :cond_e

    .line 187
    .line 188
    const/4 v7, 0x1

    .line 189
    const/4 v9, 0x0

    .line 190
    const/4 v8, 0x0

    .line 191
    invoke-virtual/range {v4 .. v9}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZZZ)V

    .line 192
    .line 193
    .line 194
    :goto_2
    return-void

    .line 195
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v2

    .line 199
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v2

    .line 203
    :pswitch_0
    check-cast p0, Ljava/util/List;

    .line 204
    .line 205
    check-cast v3, Landroidx/work/impl/model/WorkGenerationalId;

    .line 206
    .line 207
    check-cast v2, Landroidx/work/Configuration;

    .line 208
    .line 209
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 210
    .line 211
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_10

    .line 220
    .line 221
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Landroidx/work/impl/Scheduler;

    .line 226
    .line 227
    iget-object v5, v3, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 228
    .line 229
    invoke-interface {v4, v5}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_10
    invoke-static {v2, v1, p0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
