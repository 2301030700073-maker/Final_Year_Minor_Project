.class public final synthetic Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/runtime/ShouldPauseCallback;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;
.implements Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;
.implements Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {v3, v1, v2}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 18
    .line 19
    .line 20
    sget-object v4, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    .line 21
    .line 22
    iget-object v5, p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {v5, v3, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v3, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    .line 30
    .line 31
    invoke-direct {v3, v1, p1, p0, v2}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/jvm/functions/Function0;I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public onCompleted()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    const/4 v3, 0x6

    .line 18
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_6

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 46
    .line 47
    invoke-virtual {v6}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const v6, 0x7f1200fc

    .line 58
    .line 59
    .line 60
    if-eq v3, v5, :cond_5

    .line 61
    .line 62
    const/4 v7, 0x2

    .line 63
    if-eq v3, v7, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-array v6, v5, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object v3, v6, v4

    .line 72
    .line 73
    const v3, 0x7f1207b2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_4

    .line 90
    .line 91
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 96
    .line 97
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-nez v9, :cond_3

    .line 102
    .line 103
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    new-array v7, v7, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v3, v7, v4

    .line 114
    .line 115
    aput-object v6, v7, v5

    .line 116
    .line 117
    const v3, 0x7f1207b3

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto :goto_0

    .line 125
    :cond_4
    const-string p0, "Collection contains no element matching the predicate."

    .line 126
    .line 127
    invoke-static {p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_5
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    new-array v6, v5, [Ljava/lang/Object;

    .line 136
    .line 137
    aput-object v3, v6, v4

    .line 138
    .line 139
    const v3, 0x7f1207b1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    new-array v8, v5, [Ljava/lang/Object;

    .line 167
    .line 168
    aput-object v7, v8, v4

    .line 169
    .line 170
    const v7, 0x7f100028

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v7, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    :goto_2
    const/16 v6, 0xc

    .line 181
    .line 182
    invoke-static {v1, v3, v4, v6}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-ne v6, v5, :cond_7

    .line 191
    .line 192
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 197
    .line 198
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-nez v4, :cond_8

    .line 203
    .line 204
    :cond_7
    new-instance v4, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;

    .line 205
    .line 206
    const/4 v5, 0x3

    .line 207
    invoke-direct {v4, p0, v1, v2, v5}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 208
    .line 209
    .line 210
    const p0, 0x7f120775

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, p0, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    :cond_8
    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 217
    .line 218
    .line 219
    iget-object p0, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 220
    .line 221
    if-eqz p0, :cond_9

    .line 222
    .line 223
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 224
    .line 225
    .line 226
    :cond_9
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public onCompleted(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lorg/wikipedia/readinglist/ReadingListFragment;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    iput-object p1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 232
    iget-object p1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 233
    invoke-virtual {v0, p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateEmptyState(Ljava/lang/String;)V

    return-void
.end method

.method public onDeleted(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/random/RandomActivity;

    .line 11
    .line 12
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 13
    .line 14
    invoke-static {p0, v1, p1}, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;->invokeSuspend$lambda$0(Lorg/wikipedia/random/RandomActivity;Lorg/wikipedia/page/PageTitle;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 19
    .line 20
    check-cast v1, Lorg/wikipedia/history/HistoryEntry;

    .line 21
    .line 22
    invoke-static {p0, v1, p1, p2}, Lorg/wikipedia/main/MainFragment;->onFeedRemovePageFromList$lambda$0(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/history/HistoryEntry;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;

    .line 27
    .line 28
    check-cast v1, Lorg/wikipedia/history/HistoryEntry;

    .line 29
    .line 30
    invoke-static {p0, v1, p1, p2}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;->onCreate$lambda$0$0$3$0$4$0(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;Lorg/wikipedia/history/HistoryEntry;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroidx/preference/ListPreference;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast p2, Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "DAILY"

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object p2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->DAILY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "WEEKLY"

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    sget-object p2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->WEEKLY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object p2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->MONTHLY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 37
    .line 38
    :goto_0
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const v0, 0x7f120671

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->scheduleRecommendedReadingListNotification(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0, p2}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->showNotification(Landroid/content/Context;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x1

    .line 73
    return p0
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/views/EditHistoryStatsView;

    .line 11
    .line 12
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 28
    .line 29
    const/16 v2, 0x23

    .line 30
    .line 31
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0, v1}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :sswitch_0
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 43
    .line 44
    check-cast v1, Lorg/wikipedia/talk/TalkReplyActivity;

    .line 45
    .line 46
    sget-object p1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 47
    .line 48
    new-instance p1, Lorg/wikipedia/history/HistoryEntry;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lorg/wikipedia/page/PageTitle;->copy$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/PageTitle;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget-object v3, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 62
    .line 63
    if-ne v2, v3, :cond_0

    .line 64
    .line 65
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 66
    .line 67
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p0}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0, p0}, Lorg/wikipedia/page/PageTitle;->setNamespace(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    sget-object v2, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    .line 82
    .line 83
    if-ne p0, v2, :cond_1

    .line 84
    .line 85
    const-string p0, ""

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Lorg/wikipedia/page/PageTitle;->setNamespace(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    const/16 p0, 0x1f

    .line 91
    .line 92
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    new-instance v0, Landroid/content/Intent;

    .line 100
    .line 101
    const-string v2, "org.wikipedia.load_in_new_tab"

    .line 102
    .line 103
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-class v2, Lorg/wikipedia/page/PageActivity;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v2, "org.wikipedia.history.historyentry"

    .line 113
    .line 114
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v0, "title"

    .line 119
    .line 120
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :sswitch_1
    check-cast p0, Lorg/wikipedia/edit/EditSectionActivity;

    .line 132
    .line 133
    check-cast v1, Landroidx/appcompat/app/AlertDialog;

    .line 134
    .line 135
    sget v0, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 136
    .line 137
    const-string v0, "#login"

    .line 138
    .line 139
    const/4 v2, 0x0

    .line 140
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    const-string v3, "#createaccount"

    .line 145
    .line 146
    if-nez v0, :cond_3

    .line 147
    .line 148
    invoke-static {p1, v3, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    :goto_1
    invoke-static {p1, v3, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->launchLogin(Z)V

    .line 171
    .line 172
    .line 173
    :goto_2
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :sswitch_2
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;

    .line 178
    .line 179
    check-cast v1, Landroid/content/Context;

    .line 180
    .line 181
    sget v0, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;->$r8$clinit:I

    .line 182
    .line 183
    const-string v0, "https://#login"

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_4

    .line 190
    .line 191
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;->callback:Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;

    .line 192
    .line 193
    if-eqz p0, :cond_5

    .line 194
    .line 195
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;

    .line 196
    .line 197
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 198
    .line 199
    sget p1, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 200
    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const-string v0, "edit"

    .line 206
    .line 207
    const/4 v1, 0x1

    .line 208
    invoke-static {p1, v0, v1}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->loginLauncher:Landroidx/fragment/app/Fragment$10;

    .line 213
    .line 214
    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {v1, p0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 227
    .line 228
    .line 229
    :cond_5
    :goto_3
    return-void

    .line 230
    nop

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public open(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lorg/wikipedia/page/PageActivity;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 8
    .line 9
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 10
    .line 11
    iget-object v0, p1, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 12
    .line 13
    const-string v1, "pageFragment"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_7

    .line 17
    .line 18
    iget-object v3, v0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 19
    .line 20
    iget-object v3, v3, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v3, Lorg/wikipedia/page/Page;

    .line 23
    .line 24
    if-eqz v3, :cond_6

    .line 25
    .line 26
    iget-object v3, v3, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 27
    .line 28
    iget-object v3, v3, Lorg/wikipedia/page/PageProperties;->leadImageName:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v3, :cond_6

    .line 31
    .line 32
    sget-object v4, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getLeadImageEditLang()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    iget-object v0, p1, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string p0, "app"

    .line 58
    .line 59
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v2

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    .line 71
    .line 72
    sget-object v5, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 73
    .line 74
    const/16 v5, 0x3a

    .line 75
    .line 76
    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string v5, "File:"

    .line 81
    .line 82
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-direct {v4, v3, v0, v2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 90
    .line 91
    const-string v5, "title"

    .line 92
    .line 93
    if-ne p0, v3, :cond_3

    .line 94
    .line 95
    new-instance p0, Landroid/content/Intent;

    .line 96
    .line 97
    const-class v0, Lorg/wikipedia/commons/FilePageActivity;

    .line 98
    .line 99
    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string v0, "allowEdit"

    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_3
    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 121
    .line 122
    if-eq p0, v3, :cond_4

    .line 123
    .line 124
    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 125
    .line 126
    if-ne p0, v3, :cond_6

    .line 127
    .line 128
    :cond_4
    iget-object p0, p1, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 129
    .line 130
    if-eqz p0, :cond_5

    .line 131
    .line 132
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 133
    .line 134
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 137
    .line 138
    if-eqz p0, :cond_6

    .line 139
    .line 140
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-instance v3, Landroid/content/Intent;

    .line 145
    .line 146
    const-class v4, Lorg/wikipedia/gallery/GalleryActivity;

    .line 147
    .line 148
    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .line 150
    .line 151
    const-string/jumbo v4, "wikiSite"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    const-string v0, "filename"

    .line 163
    .line 164
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    const-string v0, "revision"

    .line 169
    .line 170
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v2

    .line 185
    :cond_6
    return-void

    .line 186
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v2
.end method

.method public shouldPause()Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/compose/foundation/lazy/layout/Averages;

    .line 8
    .line 9
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pauseRequested:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->updateElapsedAndAvailableTime()V

    .line 14
    .line 15
    .line 16
    iget-wide v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->elapsedTimeNanos:J

    .line 17
    .line 18
    iget-wide v3, p0, Landroidx/compose/foundation/lazy/layout/Averages;->resumeTimeNanos:J

    .line 19
    .line 20
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/Averages;->calculateAverageTime(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iput-wide v1, p0, Landroidx/compose/foundation/lazy/layout/Averages;->resumeTimeNanos:J

    .line 25
    .line 26
    iget-wide v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    .line 27
    .line 28
    iget-wide v5, p0, Landroidx/compose/foundation/lazy/layout/Averages;->pauseTimeNanos:J

    .line 29
    .line 30
    add-long/2addr v1, v5

    .line 31
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->shouldExecute(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    xor-int/lit8 p0, p0, 0x1

    .line 36
    .line 37
    iput-boolean p0, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pauseRequested:Z

    .line 38
    .line 39
    return p0

    .line 40
    :cond_0
    return v1
.end method
