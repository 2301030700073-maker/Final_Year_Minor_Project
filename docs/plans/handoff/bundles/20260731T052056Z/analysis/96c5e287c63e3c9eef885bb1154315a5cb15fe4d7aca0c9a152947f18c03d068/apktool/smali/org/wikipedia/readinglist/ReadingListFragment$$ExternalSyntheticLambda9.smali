.class public final synthetic Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/io/Serializable;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;->f$1:Ljava/io/Serializable;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    .line 1
    iget p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;->f$1:Ljava/io/Serializable;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;

    .line 15
    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    check-cast v0, Landroid/app/Activity;

    .line 19
    .line 20
    check-cast p2, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->getReportReasons()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v2, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 37
    .line 38
    iget-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->getReportReasons()Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v10, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    const/16 v9, 0x3e

    .line 57
    .line 58
    const-string/jumbo v5, "|"

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v10}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->composeLogString(Lorg/wikipedia/page/PageTitle;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const-string v6, "."

    .line 72
    .line 73
    const-string v7, "%2E"

    .line 74
    .line 75
    invoke-static {v1, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v6, ":"

    .line 80
    .line 81
    const-string v7, "%3A"

    .line 82
    .line 83
    invoke-static {v1, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v6, ".reportDialog.suggestion:"

    .line 88
    .line 89
    const-string v7, ".reasons:"

    .line 90
    .line 91
    invoke-static {v5, v6, v1, v7, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v4, ".reported"

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p1, v3, v1}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->log(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 108
    .line 109
    const v1, 0x7f120904

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    const/16 v2, 0xc

    .line 121
    .line 122
    invoke-static {v0, p1, v1, v2}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 127
    .line 128
    .line 129
    iget p1, p2, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 130
    .line 131
    packed-switch p1, :pswitch_data_1

    .line 132
    .line 133
    .line 134
    iget-object p1, p2, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;

    .line 135
    .line 136
    iget-object p1, p1, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 137
    .line 138
    if-eqz p1, :cond_0

    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :pswitch_0
    iget-object p1, p2, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;

    .line 145
    .line 146
    iget-object p1, p1, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 147
    .line 148
    if-eqz p1, :cond_0

    .line 149
    .line 150
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 151
    .line 152
    .line 153
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->reported:Z

    .line 155
    .line 156
    iget-object p0, p0, Lorg/wikipedia/views/SuggestedArticleDescriptionsReportDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 157
    .line 158
    if-eqz p0, :cond_1

    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 161
    .line 162
    .line 163
    :cond_1
    return-void

    .line 164
    :pswitch_1
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 165
    .line 166
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 167
    .line 168
    check-cast v0, Ljava/util/ArrayList;

    .line 169
    .line 170
    check-cast p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 171
    .line 172
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 173
    .line 174
    .line 175
    iget-object p1, v1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 178
    .line 179
    .line 180
    iget-object p1, v1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    .line 184
    .line 185
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p1, Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iput-object p1, v1, Lorg/wikipedia/readinglist/database/ReadingList;->listTitle:Ljava/lang/String;

    .line 193
    .line 194
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 195
    .line 196
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListMode;->RECOMMENDED:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 197
    .line 198
    const/4 v0, 0x0

    .line 199
    if-ne p1, p2, :cond_2

    .line 200
    .line 201
    iput-object v0, v1, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 202
    .line 203
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getViewModel()Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    new-instance p2, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;

    .line 212
    .line 213
    const/4 v2, 0x3

    .line 214
    invoke-direct {p2, p0, v2}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;I)V

    .line 215
    .line 216
    .line 217
    new-instance v2, Lcoil3/RealImageLoader$execute$2;

    .line 218
    .line 219
    const/16 v3, 0x19

    .line 220
    .line 221
    invoke-direct {v2, v1, p0, v0, v3}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 222
    .line 223
    .line 224
    const/4 p0, 0x2

    .line 225
    invoke-static {p1, p2, v0, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
