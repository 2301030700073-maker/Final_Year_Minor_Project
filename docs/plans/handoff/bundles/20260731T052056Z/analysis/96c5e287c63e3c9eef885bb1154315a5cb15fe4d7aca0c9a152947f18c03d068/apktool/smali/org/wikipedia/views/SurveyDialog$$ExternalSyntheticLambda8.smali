.class public final synthetic Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/diff/UndoEditDialog;Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-object v4, v0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, v0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v7, v0

    .line 17
    check-cast v7, Ljava/lang/String;

    .line 18
    .line 19
    check-cast v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;

    .line 20
    .line 21
    check-cast v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 22
    .line 23
    const/4 v13, 0x0

    .line 24
    const/16 v14, 0x1fc

    .line 25
    .line 26
    const-string v6, "adjust_click"

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x0

    .line 32
    const/4 v12, 0x0

    .line 33
    invoke-static/range {v6 .. v14}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v4}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->updateSourceSelection(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->INTERESTS:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 44
    .line 45
    if-ne v4, v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->saveSourceSelection()Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-boolean v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->fromSettings:Z

    .line 72
    .line 73
    new-instance v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;

    .line 74
    .line 75
    invoke-direct {v3}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v4, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v5, "fromSettings"

    .line 84
    .line 85
    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    const v4, 0x1020002

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v4, v3, v2, v0}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->addToBackStack()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 102
    .line 103
    .line 104
    :cond_0
    return-void

    .line 105
    :pswitch_0
    check-cast v0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 106
    .line 107
    check-cast v5, [Z

    .line 108
    .line 109
    check-cast v4, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;

    .line 110
    .line 111
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    sget-object v6, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 116
    .line 117
    new-instance v7, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 118
    .line 119
    const/4 v8, 0x6

    .line 120
    invoke-direct {v7, v6, v8}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 121
    .line 122
    .line 123
    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    .line 124
    .line 125
    invoke-direct {v6, v0, v5, v4, v2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>(Lokhttp3/Dispatcher$promoteAndExecute$Effects;[ZLorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;Lkotlin/coroutines/Continuation;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v7, v2, v6, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_1
    move-object v9, v0

    .line 133
    check-cast v9, Ljava/util/ArrayList;

    .line 134
    .line 135
    move-object v10, v5

    .line 136
    check-cast v10, Landroidx/appcompat/app/AppCompatActivity;

    .line 137
    .line 138
    move-object v11, v4

    .line 139
    check-cast v11, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 140
    .line 141
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 146
    .line 147
    new-instance v8, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;

    .line 148
    .line 149
    const/4 v13, 0x1

    .line 150
    const/4 v12, 0x0

    .line 151
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;-><init>(Ljava/util/ArrayList;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v1, v12, v8, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :pswitch_2
    move-object v14, v0

    .line 159
    check-cast v14, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 160
    .line 161
    move-object v15, v5

    .line 162
    check-cast v15, Landroidx/appcompat/app/AppCompatActivity;

    .line 163
    .line 164
    move-object/from16 v16, v4

    .line 165
    .line 166
    check-cast v16, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 167
    .line 168
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 173
    .line 174
    new-instance v13, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;

    .line 175
    .line 176
    const/16 v18, 0x1

    .line 177
    .line 178
    const/16 v17, 0x0

    .line 179
    .line 180
    invoke-direct/range {v13 .. v18}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$2;-><init>(Lorg/wikipedia/readinglist/database/ReadingList;Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;Lkotlin/coroutines/Continuation;I)V

    .line 181
    .line 182
    .line 183
    move-object/from16 v2, v17

    .line 184
    .line 185
    invoke-static {v0, v1, v2, v13, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_3
    move-object v7, v5

    .line 190
    check-cast v7, Landroidx/appcompat/app/AppCompatActivity;

    .line 191
    .line 192
    move-object v5, v0

    .line 193
    check-cast v5, Ljava/util/List;

    .line 194
    .line 195
    move-object v0, v4

    .line 196
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 197
    .line 198
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 199
    .line 200
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_1

    .line 205
    .line 206
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 211
    .line 212
    new-instance v4, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 213
    .line 214
    const/4 v9, 0x6

    .line 215
    const/4 v6, 0x1

    .line 216
    const/4 v8, 0x0

    .line 217
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 218
    .line 219
    .line 220
    invoke-static {v1, v2, v8, v4, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 221
    .line 222
    .line 223
    :cond_1
    invoke-interface {v0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;->onCompleted()V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :pswitch_4
    check-cast v4, Lorg/wikipedia/Constants$InvokeSource;

    .line 228
    .line 229
    check-cast v0, Lorg/wikipedia/diff/UndoEditDialog;

    .line 230
    .line 231
    iget-object v0, v0, Lorg/wikipedia/diff/UndoEditDialog;->binding:Lokhttp3/ConnectionPool;

    .line 232
    .line 233
    check-cast v5, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;

    .line 234
    .line 235
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS_RECENT_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 236
    .line 237
    if-ne v4, v1, :cond_2

    .line 238
    .line 239
    iget-object v1, v0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 242
    .line 243
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    const/4 v14, 0x0

    .line 252
    const/16 v15, 0x3ef

    .line 253
    .line 254
    const/4 v6, 0x0

    .line 255
    const/4 v7, 0x0

    .line 256
    const/4 v8, 0x0

    .line 257
    const/4 v9, 0x0

    .line 258
    const/4 v11, 0x0

    .line 259
    const/4 v12, 0x0

    .line 260
    const/4 v13, 0x0

    .line 261
    invoke-static/range {v6 .. v15}, Lokhttp3/Cookie$Companion;->getActionDataString$default(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    const-string/jumbo v4, "undo_confirm"

    .line 266
    .line 267
    .line 268
    const-string v6, "pt_edit"

    .line 269
    .line 270
    invoke-static {v4, v6, v1}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :cond_2
    iget-object v0, v0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 276
    .line 277
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iget-object v1, v5, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;->f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 286
    .line 287
    invoke-virtual {v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    iget-object v4, v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 292
    .line 293
    if-eqz v4, :cond_3

    .line 294
    .line 295
    iget-object v5, v1, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 296
    .line 297
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 301
    .line 302
    const/4 v6, 0x0

    .line 303
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    sget-object v5, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 307
    .line 308
    invoke-virtual {v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    iget-object v7, v7, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 313
    .line 314
    const-string v8, "other"

    .line 315
    .line 316
    const-string v9, "saveAttempt"

    .line 317
    .line 318
    invoke-static {v5, v7, v9, v8, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-virtual {v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    iget-object v11, v7, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 330
    .line 331
    iget-object v14, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v15

    .line 337
    invoke-virtual {v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    iget-wide v12, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 342
    .line 343
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    invoke-static {v5}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    new-instance v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;

    .line 357
    .line 358
    invoke-direct {v1, v5, v6}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;I)V

    .line 359
    .line 360
    .line 361
    new-instance v10, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;

    .line 362
    .line 363
    const/16 v17, 0x0

    .line 364
    .line 365
    move-object/from16 v16, v5

    .line 366
    .line 367
    invoke-direct/range {v10 .. v17}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$2;-><init>(Lorg/wikipedia/page/PageTitle;JLjava/lang/String;Ljava/lang/String;Lorg/wikipedia/diff/ArticleEditDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    .line 368
    .line 369
    .line 370
    invoke-static {v0, v1, v2, v10, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 371
    .line 372
    .line 373
    :cond_3
    return-void

    .line 374
    :pswitch_5
    check-cast v0, Landroid/view/View;

    .line 375
    .line 376
    check-cast v5, Landroidx/appcompat/app/AppCompatActivity;

    .line 377
    .line 378
    check-cast v4, Lorg/wikipedia/Constants$InvokeSource;

    .line 379
    .line 380
    const v1, 0x7f090234

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 388
    .line 389
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    const/4 v14, 0x0

    .line 398
    const/16 v15, 0x3fb

    .line 399
    .line 400
    const/4 v6, 0x0

    .line 401
    const/4 v7, 0x0

    .line 402
    const/4 v9, 0x0

    .line 403
    const/4 v10, 0x0

    .line 404
    const/4 v11, 0x0

    .line 405
    const/4 v12, 0x0

    .line 406
    const/4 v13, 0x0

    .line 407
    invoke-static/range {v6 .. v15}, Lokhttp3/Cookie$Companion;->getActionDataString$default(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    const-string v1, "feedback_input_submit"

    .line 412
    .line 413
    const-string v2, "feedback_input_form"

    .line 414
    .line 415
    invoke-static {v1, v2, v0}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-static {v5, v4}, Lokio/Okio__JvmOkioKt;->showFeedbackSnackbarAndTooltip(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/Constants$InvokeSource;)V

    .line 419
    .line 420
    .line 421
    return-void

    .line 422
    nop

    .line 423
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
