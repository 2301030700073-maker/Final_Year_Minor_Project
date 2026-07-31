.class public final synthetic Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

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
    iget p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 28
    .line 29
    instance-of v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const-string/jumbo v4, "viewModel"

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_6

    .line 37
    .line 38
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 62
    .line 63
    if-nez p1, :cond_0

    .line 64
    .line 65
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 66
    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    sget-object p1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->ALL:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 70
    .line 71
    :cond_0
    move-object v10, p1

    .line 72
    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object p1, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 84
    .line 85
    const v0, 0x7f1301c7

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 101
    .line 102
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object p1, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 121
    .line 122
    invoke-virtual {p1, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_2

    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const v0, 0x7f1301c8

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_2
    iget-wide v6, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    .line 154
    .line 155
    const-wide/16 v11, -0x1

    .line 156
    .line 157
    cmp-long p1, v6, v11

    .line 158
    .line 159
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 160
    .line 161
    if-nez p1, :cond_4

    .line 162
    .line 163
    if-eqz v0, :cond_3

    .line 164
    .line 165
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object p1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;

    .line 176
    .line 177
    invoke-direct {v2, p1, v9, v10}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V

    .line 178
    .line 179
    .line 180
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;

    .line 181
    .line 182
    invoke-direct {p1, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 183
    .line 184
    .line 185
    sget-object v2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 186
    .line 187
    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 196
    .line 197
    invoke-direct {v3, p1, v2, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;-><init>(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/core/Scheduler;I)V

    .line 198
    .line 199
    .line 200
    new-instance p1, Lorg/jsoup/parser/TokenData;

    .line 201
    .line 202
    const/16 v1, 0x11

    .line 203
    .line 204
    invoke-direct {p1, v0, p0, v1}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 205
    .line 206
    .line 207
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;

    .line 208
    .line 209
    invoke-direct {p0, v3, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;-><init>(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/functions/Function;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->doAction$1(Lio/reactivex/rxjava3/core/Completable;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v5

    .line 221
    :cond_4
    if-eqz v0, :cond_5

    .line 222
    .line 223
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 224
    .line 225
    iget-wide v11, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupSortOrder:J

    .line 226
    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    iget-object p0, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 231
    .line 232
    iget-wide v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupId:J

    .line 233
    .line 234
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    new-instance v4, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;

    .line 242
    .line 243
    invoke-direct {v4, p0, v1, v2, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;JLjava/util/List;)V

    .line 244
    .line 245
    .line 246
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 247
    .line 248
    invoke-direct {p1, v4, v3}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 249
    .line 250
    .line 251
    sget-object v1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 252
    .line 253
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    new-instance v6, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 266
    .line 267
    iget-wide v7, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupId:J

    .line 268
    .line 269
    invoke-direct/range {v6 .. v12}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;-><init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;J)V

    .line 270
    .line 271
    .line 272
    new-instance v2, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;

    .line 273
    .line 274
    const/4 v4, 0x3

    .line 275
    invoke-direct {v2, p0, v6, v4}, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 276
    .line 277
    .line 278
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 279
    .line 280
    invoke-direct {p0, v2, v3}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 296
    .line 297
    const/4 v2, 0x2

    .line 298
    invoke-direct {v1, p1, p0, v2}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;-><init>(Lio/reactivex/rxjava3/core/Completable;Ljava/lang/Object;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->doAction$1(Lio/reactivex/rxjava3/core/Completable;)V

    .line 302
    .line 303
    .line 304
    goto :goto_0

    .line 305
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v5

    .line 309
    :cond_6
    instance-of v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$DeleteScreen;

    .line 310
    .line 311
    if-eqz v2, :cond_8

    .line 312
    .line 313
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 314
    .line 315
    if-eqz p0, :cond_7

    .line 316
    .line 317
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 318
    .line 319
    iget-wide v4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupId:J

    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda1;

    .line 325
    .line 326
    invoke-direct {v0, p1, v4, v5, v1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;JI)V

    .line 327
    .line 328
    .line 329
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 330
    .line 331
    invoke-direct {p1, v0, v3}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 332
    .line 333
    .line 334
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 335
    .line 336
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->doAction$1(Lio/reactivex/rxjava3/core/Completable;)V

    .line 349
    .line 350
    .line 351
    goto :goto_0

    .line 352
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v5

    .line 356
    :cond_8
    instance-of p1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;

    .line 357
    .line 358
    if-eqz p1, :cond_9

    .line 359
    .line 360
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->isSearchVisible()Z

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    if-eqz p1, :cond_9

    .line 365
    .line 366
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->hideSearch()V

    .line 367
    .line 368
    .line 369
    goto :goto_0

    .line 370
    :cond_9
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 371
    .line 372
    .line 373
    :goto_0
    return-void

    .line 374
    :pswitch_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 375
    .line 376
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    if-eqz p1, :cond_a

    .line 381
    .line 382
    invoke-virtual {p0, v1, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 383
    .line 384
    .line 385
    goto :goto_1

    .line 386
    :cond_a
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 387
    .line 388
    .line 389
    :goto_1
    return-void

    .line 390
    :pswitch_2
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 391
    .line 392
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 396
    .line 397
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 398
    .line 399
    .line 400
    sget-object p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;

    .line 401
    .line 402
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 403
    .line 404
    .line 405
    return-void

    .line 406
    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 411
    .line 412
    .line 413
    move-result p1

    .line 414
    if-eqz p1, :cond_b

    .line 415
    .line 416
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showKeyboardSearch$1()V

    .line 417
    .line 418
    .line 419
    :cond_b
    return-void

    .line 420
    :pswitch_4
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 421
    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 428
    .line 429
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    if-eqz p1, :cond_d

    .line 434
    .line 435
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    if-nez p1, :cond_c

    .line 440
    .line 441
    goto :goto_2

    .line 442
    :cond_c
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->resetSearch()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showKeyboardSearch$1()V

    .line 446
    .line 447
    .line 448
    goto :goto_3

    .line 449
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->hideSearch()V

    .line 450
    .line 451
    .line 452
    :goto_3
    return-void

    .line 453
    :pswitch_5
    sget-object p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$DeleteScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$DeleteScreen;

    .line 454
    .line 455
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
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
