.class public final Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public isLifecycleActive:Z

.field public final onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager$1;Landroidx/activity/OnBackPressedCallbackInfo;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigationevent/NavigationEventHandler;->currentInfo:Lkotlin/TuplesKt;

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->isLifecycleActive:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 2
    .line 3
    iget v0, p0, Landroidx/fragment/app/FragmentManager$1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    goto :goto_0

    .line 9
    :pswitch_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->onBackCancelled()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_2
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Landroidx/fragment/app/FragmentManagerImpl;

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, "FragmentManager"

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "handleOnBackCancelled. PREDICTIVE_BACK = true fragment manager "

    .line 33
    .line 34
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "cancelBackStackTransition for transition "

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    iput-boolean v1, v0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->collapseOps()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 83
    .line 84
    new-instance v2, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    const/16 v3, 0x10

    .line 87
    .line 88
    invoke-direct {v2, v3, p0}, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, v0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 92
    .line 93
    if-nez v3, :cond_2

    .line 94
    .line 95
    new-instance v3, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v3, v0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 101
    .line 102
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHandlingTransitioningOp:Z

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions(Z)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 117
    .line 118
    .line 119
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHandlingTransitioningOp:Z

    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 123
    .line 124
    :cond_3
    :goto_0
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onBackCompleted()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 4
    .line 5
    iget v1, v0, Landroidx/fragment/app/FragmentManager$1;->$r8$classId:I

    .line 6
    .line 7
    const-string v2, "back"

    .line 8
    .line 9
    const-string v3, "activity"

    .line 10
    .line 11
    const-string v4, "goToMainTab"

    .line 12
    .line 13
    const-string v5, "returnToMain"

    .line 14
    .line 15
    const/high16 v6, 0x4000000

    .line 16
    .line 17
    const-string v7, ""

    .line 18
    .line 19
    const/4 v8, 0x2

    .line 20
    const/16 v9, 0x8

    .line 21
    .line 22
    const-string v10, "binding"

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x1

    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lorg/wikipedia/talk/TalkReplyActivity;

    .line 33
    .line 34
    invoke-virtual {v0, v8}, Landroid/app/Activity;->setResult(I)V

    .line 35
    .line 36
    .line 37
    const-string v1, "publish_back"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v7}, Lorg/wikipedia/talk/TalkReplyActivity;->sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lorg/wikipedia/talk/TalkReplyActivity;->messagePreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 43
    .line 44
    const-string v2, "messagePreviewFragment"

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    invoke-virtual {v1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0, v11}, Lorg/wikipedia/talk/TalkReplyActivity;->showProgressBar$1(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 62
    .line 63
    check-cast v1, Landroid/widget/ScrollView;

    .line 64
    .line 65
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lorg/wikipedia/talk/TalkReplyActivity;->messagePreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->hide()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v13}, Lorg/wikipedia/talk/TalkReplyActivity;->setSaveButtonEnabled(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 79
    .line 80
    if-eqz v1, :cond_0

    .line 81
    .line 82
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 83
    .line 84
    const v2, 0x7f12019f

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v1, v1, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lorg/wikipedia/talk/TalkReplyActivity;->setToolbarTitle$2(Lorg/wikipedia/page/PageTitle;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_17

    .line 104
    .line 105
    :cond_0
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v12

    .line 109
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v12

    .line 113
    :cond_2
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v12

    .line 117
    :cond_3
    iget-boolean v1, v0, Lorg/wikipedia/talk/TalkReplyActivity;->subjectOrBodyModified:Z

    .line 118
    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 122
    .line 123
    invoke-direct {v1, v0, v11}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 124
    .line 125
    .line 126
    iget-object v2, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 129
    .line 130
    iput-boolean v11, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 131
    .line 132
    const v2, 0x7f12094c

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 136
    .line 137
    .line 138
    const v2, 0x7f12094b

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 142
    .line 143
    .line 144
    new-instance v2, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda15;

    .line 145
    .line 146
    invoke-direct {v2, v0, v13}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda15;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 147
    .line 148
    .line 149
    const v3, 0x7f120195

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda15;

    .line 156
    .line 157
    invoke-direct {v2, v0, v8}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda15;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 158
    .line 159
    .line 160
    const v0, 0x7f120194

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 167
    .line 168
    .line 169
    goto/16 :goto_17

    .line 170
    .line 171
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_17

    .line 175
    .line 176
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v12

    .line 180
    :pswitch_0
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v1, Lorg/wikipedia/search/SearchActivity;

    .line 183
    .line 184
    invoke-static {v1}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    if-eqz v2, :cond_6

    .line 189
    .line 190
    const/4 v8, 0x0

    .line 191
    const/16 v9, 0xf6

    .line 192
    .line 193
    const-string v3, "click"

    .line 194
    .line 195
    const/4 v4, 0x0

    .line 196
    const/4 v5, 0x0

    .line 197
    const-string v6, "search_back"

    .line 198
    .line 199
    const/4 v7, 0x0

    .line 200
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 201
    .line 202
    .line 203
    :cond_6
    invoke-virtual {v0, v11}, Landroidx/fragment/app/FragmentManager$1;->setEnabled(Z)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_17

    .line 214
    .line 215
    :pswitch_1
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListActivity;

    .line 218
    .line 219
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListActivity;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 220
    .line 221
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 222
    .line 223
    if-ne v1, v2, :cond_8

    .line 224
    .line 225
    invoke-virtual {v0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 230
    .line 231
    iget-object v1, v1, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 232
    .line 233
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 234
    .line 235
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 236
    .line 237
    invoke-static {v0, v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    if-eqz v1, :cond_7

    .line 242
    .line 243
    iget-object v1, v1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 244
    .line 245
    if-eqz v1, :cond_7

    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    :cond_7
    const-string v1, "ReadingList.ListItemCount:"

    .line 252
    .line 253
    const-string v7, ".receive_cancel"

    .line 254
    .line 255
    invoke-static {v11, v1, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-direct {v2, v3, v1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 263
    .line 264
    .line 265
    :cond_8
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 266
    .line 267
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 272
    .line 273
    iget-boolean v1, v1, Lorg/wikipedia/ActivityLifecycleHandler;->haveMainActivity:Z

    .line 274
    .line 275
    if-nez v1, :cond_9

    .line 276
    .line 277
    sget v1, Lorg/wikipedia/main/MainActivity;->$r8$clinit:I

    .line 278
    .line 279
    invoke-static {v0}, Lorg/wikipedia/util/UriUtil;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v1, v5, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    sget-object v2, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    .line 292
    .line 293
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 302
    .line 303
    .line 304
    :cond_9
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_17

    .line 308
    .line 309
    :pswitch_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 312
    .line 313
    sget v1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 314
    .line 315
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    iget-boolean v1, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 320
    .line 321
    if-eqz v1, :cond_b

    .line 322
    .line 323
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    iget-boolean v2, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 328
    .line 329
    xor-int/lit8 v3, v2, 0x1

    .line 330
    .line 331
    iput-boolean v3, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 332
    .line 333
    if-eqz v2, :cond_a

    .line 334
    .line 335
    iput-object v12, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 336
    .line 337
    iput-object v12, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 338
    .line 339
    :cond_a
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->updateCompareState()V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_17

    .line 343
    .line 344
    :cond_b
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_17

    .line 348
    .line 349
    :pswitch_3
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v1, Lorg/wikipedia/page/PageActivity;

    .line 352
    .line 353
    sget v2, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 354
    .line 355
    iget-object v2, v1, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/LinkedHashSet;

    .line 356
    .line 357
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-nez v2, :cond_c

    .line 362
    .line 363
    invoke-virtual {v1}, Lorg/wikipedia/page/PageActivity;->onPageCloseActionMode()V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_17

    .line 367
    .line 368
    :cond_c
    iget-object v2, v1, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 369
    .line 370
    if-eqz v2, :cond_11

    .line 371
    .line 372
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getAppSessionEvent()Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v2}, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->touchSession()V

    .line 377
    .line 378
    .line 379
    iget-object v2, v2, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 380
    .line 381
    iget v3, v2, Lorg/wikipedia/analytics/SessionData;->pagesFromBack:I

    .line 382
    .line 383
    add-int/2addr v3, v13

    .line 384
    iput v3, v2, Lorg/wikipedia/analytics/SessionData;->pagesFromBack:I

    .line 385
    .line 386
    iget-object v2, v1, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 387
    .line 388
    if-eqz v2, :cond_10

    .line 389
    .line 390
    invoke-virtual {v2}, Lorg/wikipedia/page/PageFragment;->onBackPressed()Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-eqz v2, :cond_d

    .line 395
    .line 396
    goto/16 :goto_17

    .line 397
    .line 398
    :cond_d
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 407
    .line 408
    if-ne v2, v8, :cond_e

    .line 409
    .line 410
    goto :goto_0

    .line 411
    :cond_e
    iget-boolean v2, v1, Lorg/wikipedia/page/PageActivity;->hasTransitionAnimation:Z

    .line 412
    .line 413
    if-nez v2, :cond_f

    .line 414
    .line 415
    :goto_0
    invoke-virtual {v1}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v2, Lorg/wikipedia/views/WikiArticleCardView;

    .line 422
    .line 423
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 424
    .line 425
    .line 426
    goto :goto_1

    .line 427
    :cond_f
    invoke-virtual {v1}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v2, Lorg/wikipedia/views/WikiArticleCardView;

    .line 434
    .line 435
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v2, Landroidx/fragment/app/FragmentContainerView;

    .line 445
    .line 446
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 447
    .line 448
    .line 449
    :goto_1
    invoke-virtual {v0, v11}, Landroidx/fragment/app/FragmentManager$1;->setEnabled(Z)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_17

    .line 460
    .line 461
    :cond_10
    const-string v0, "pageFragment"

    .line 462
    .line 463
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw v12

    .line 467
    :cond_11
    const-string v0, "app"

    .line 468
    .line 469
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v12

    .line 473
    :pswitch_4
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 474
    .line 475
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 476
    .line 477
    sget v1, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->$r8$clinit:I

    .line 478
    .line 479
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getCurrentScreenName()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v19

    .line 487
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    iget-boolean v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 492
    .line 493
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 494
    .line 495
    .line 496
    move-result-object v15

    .line 497
    const/16 v16, 0x0

    .line 498
    .line 499
    const/16 v14, 0x3d8

    .line 500
    .line 501
    const-string v17, "exit_click"

    .line 502
    .line 503
    const-string v18, "game_play"

    .line 504
    .line 505
    const/16 v20, 0x0

    .line 506
    .line 507
    const/16 v21, 0x0

    .line 508
    .line 509
    invoke-static/range {v14 .. v21}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->getViewModel()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 517
    .line 518
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->NOTIFICATION:Lorg/wikipedia/Constants$InvokeSource;

    .line 519
    .line 520
    if-ne v1, v2, :cond_12

    .line 521
    .line 522
    new-instance v1, Landroid/content/Intent;

    .line 523
    .line 524
    const-class v2, Lorg/wikipedia/main/MainActivity;

    .line 525
    .line 526
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-virtual {v1, v5, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    sget-object v2, Lorg/wikipedia/navtab/NavTab;->HOME:Lorg/wikipedia/navtab/NavTab;

    .line 538
    .line 539
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_17

    .line 554
    .line 555
    :cond_12
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_17

    .line 559
    .line 560
    :pswitch_5
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 561
    .line 562
    check-cast v0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 563
    .line 564
    iget-object v1, v0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->insertTemplateFragment:Lorg/wikipedia/edit/templates/InsertTemplateFragment;

    .line 565
    .line 566
    if-eqz v1, :cond_19

    .line 567
    .line 568
    iget-object v2, v1, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 569
    .line 570
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    .line 572
    .line 573
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v2, Landroid/widget/ScrollView;

    .line 576
    .line 577
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-nez v2, :cond_18

    .line 582
    .line 583
    iget-object v2, v1, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 584
    .line 585
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 586
    .line 587
    .line 588
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 589
    .line 590
    check-cast v2, Landroid/widget/ScrollView;

    .line 591
    .line 592
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 596
    .line 597
    .line 598
    iget-object v1, v1, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->activity:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 599
    .line 600
    if-eqz v1, :cond_17

    .line 601
    .line 602
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 603
    .line 604
    .line 605
    iget-object v1, v0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->templatesSearchAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 606
    .line 607
    if-eqz v1, :cond_16

    .line 608
    .line 609
    iget-object v1, v0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 610
    .line 611
    if-eqz v1, :cond_15

    .line 612
    .line 613
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 614
    .line 615
    check-cast v1, Lorg/wikipedia/views/CabSearchView;

    .line 616
    .line 617
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 618
    .line 619
    .line 620
    iget-object v1, v0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 621
    .line 622
    if-eqz v1, :cond_14

    .line 623
    .line 624
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast v1, Landroid/widget/TextView;

    .line 627
    .line 628
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    if-eqz v1, :cond_13

    .line 636
    .line 637
    invoke-virtual {v1, v12}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 638
    .line 639
    .line 640
    :cond_13
    invoke-virtual {v0, v13}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->updateToolbarElevation$1(Z)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_17

    .line 644
    .line 645
    :cond_14
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    throw v12

    .line 649
    :cond_15
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    throw v12

    .line 653
    :cond_16
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 654
    .line 655
    .line 656
    goto/16 :goto_17

    .line 657
    .line 658
    :cond_17
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    throw v12

    .line 662
    :cond_18
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 663
    .line 664
    .line 665
    goto/16 :goto_17

    .line 666
    .line 667
    :cond_19
    const-string v0, "insertTemplateFragment"

    .line 668
    .line 669
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    throw v12

    .line 673
    :pswitch_6
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 674
    .line 675
    check-cast v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 676
    .line 677
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 678
    .line 679
    const-string v4, "insertMediaSettingsFragment"

    .line 680
    .line 681
    if-eqz v1, :cond_25

    .line 682
    .line 683
    iget-object v5, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 684
    .line 685
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v5, Landroid/widget/ScrollView;

    .line 691
    .line 692
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 693
    .line 694
    .line 695
    move-result v5

    .line 696
    if-nez v5, :cond_1e

    .line 697
    .line 698
    invoke-virtual {v1, v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->sendInsertMediaEvent(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v1, v13}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->hide(Z)V

    .line 702
    .line 703
    .line 704
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 705
    .line 706
    if-eqz v1, :cond_1d

    .line 707
    .line 708
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 709
    .line 710
    if-eqz v1, :cond_1c

    .line 711
    .line 712
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->rootView:Landroid/widget/FrameLayout;

    .line 713
    .line 714
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 715
    .line 716
    .line 717
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 718
    .line 719
    if-eqz v1, :cond_1b

    .line 720
    .line 721
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 722
    .line 723
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    if-eqz v1, :cond_1a

    .line 731
    .line 732
    const v2, 0x7f120327

    .line 733
    .line 734
    .line 735
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    invoke-virtual {v1, v2}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 740
    .line 741
    .line 742
    :cond_1a
    invoke-virtual {v0, v11}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->adjustRefreshViewLayoutParams(Z)V

    .line 743
    .line 744
    .line 745
    goto/16 :goto_17

    .line 746
    .line 747
    :cond_1b
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    throw v12

    .line 751
    :cond_1c
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    throw v12

    .line 755
    :cond_1d
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 756
    .line 757
    .line 758
    goto/16 :goto_17

    .line 759
    .line 760
    :cond_1e
    iget-object v1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaAdvancedSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

    .line 761
    .line 762
    if-eqz v1, :cond_24

    .line 763
    .line 764
    iget-object v2, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 765
    .line 766
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    .line 768
    .line 769
    iget-object v2, v2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 770
    .line 771
    check-cast v2, Landroid/widget/ScrollView;

    .line 772
    .line 773
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 774
    .line 775
    .line 776
    move-result v2

    .line 777
    if-nez v2, :cond_23

    .line 778
    .line 779
    sget-object v13, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 780
    .line 781
    invoke-virtual {v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->getViewModel$4()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    iget-object v2, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 786
    .line 787
    if-eqz v2, :cond_1f

    .line 788
    .line 789
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    goto :goto_2

    .line 794
    :cond_1f
    move-object v2, v12

    .line 795
    :goto_2
    if-nez v2, :cond_20

    .line 796
    .line 797
    move-object v14, v7

    .line 798
    goto :goto_3

    .line 799
    :cond_20
    move-object v14, v2

    .line 800
    :goto_3
    invoke-virtual {v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->getViewModel$4()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    iget-object v15, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSource:Ljava/lang/String;

    .line 805
    .line 806
    invoke-virtual {v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->getViewModel$4()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 807
    .line 808
    .line 809
    move-result-object v2

    .line 810
    iget-object v2, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSourceProjects:Ljava/lang/String;

    .line 811
    .line 812
    const/16 v22, 0x0

    .line 813
    .line 814
    const/16 v23, 0x1f8

    .line 815
    .line 816
    const/16 v17, 0x0

    .line 817
    .line 818
    const/16 v18, 0x0

    .line 819
    .line 820
    const/16 v19, 0x0

    .line 821
    .line 822
    const/16 v20, 0x0

    .line 823
    .line 824
    const/16 v21, 0x0

    .line 825
    .line 826
    move-object/from16 v16, v2

    .line 827
    .line 828
    invoke-static/range {v13 .. v23}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    invoke-virtual {v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->getViewModel$4()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 833
    .line 834
    .line 835
    move-result-object v5

    .line 836
    iget-object v5, v5, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 837
    .line 838
    iget-object v5, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 839
    .line 840
    const-string v6, "advanced_setting_back"

    .line 841
    .line 842
    const-string v7, "caption_entry"

    .line 843
    .line 844
    invoke-static {v6, v7, v2, v5}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    iget-object v2, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 848
    .line 849
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    .line 851
    .line 852
    iget-object v2, v2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 853
    .line 854
    check-cast v2, Landroid/widget/ScrollView;

    .line 855
    .line 856
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 860
    .line 861
    .line 862
    iget-object v1, v1, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 863
    .line 864
    if-eqz v1, :cond_22

    .line 865
    .line 866
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 867
    .line 868
    .line 869
    iget-object v0, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 870
    .line 871
    if-eqz v0, :cond_21

    .line 872
    .line 873
    invoke-virtual {v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->show()V

    .line 874
    .line 875
    .line 876
    goto/16 :goto_17

    .line 877
    .line 878
    :cond_21
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    throw v12

    .line 882
    :cond_22
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    throw v12

    .line 886
    :cond_23
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 887
    .line 888
    .line 889
    goto/16 :goto_17

    .line 890
    .line 891
    :cond_24
    const-string v0, "insertMediaAdvancedSettingsFragment"

    .line 892
    .line 893
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    throw v12

    .line 897
    :cond_25
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    throw v12

    .line 901
    :pswitch_7
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 902
    .line 903
    check-cast v0, Lorg/wikipedia/edit/EditSectionActivity;

    .line 904
    .line 905
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 910
    .line 911
    .line 912
    const-string v3, "imageTitle"

    .line 913
    .line 914
    const-class v4, Lorg/wikipedia/page/PageTitle;

    .line 915
    .line 916
    invoke-static {v1, v3, v4}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    check-cast v1, Landroid/os/Parcelable;

    .line 921
    .line 922
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 923
    .line 924
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    const-string v4, "imageSource"

    .line 929
    .line 930
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v3

    .line 934
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 935
    .line 936
    .line 937
    move-result-object v4

    .line 938
    const-string v5, "imageSourceProjects"

    .line 939
    .line 940
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v4

    .line 944
    iget-object v5, v0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 945
    .line 946
    if-eqz v5, :cond_4b

    .line 947
    .line 948
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 949
    .line 950
    check-cast v5, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 951
    .line 952
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 953
    .line 954
    .line 955
    move-result v5

    .line 956
    if-nez v5, :cond_26

    .line 957
    .line 958
    goto/16 :goto_17

    .line 959
    .line 960
    :cond_26
    invoke-virtual {v0, v11}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar$1(Z)V

    .line 961
    .line 962
    .line 963
    iget-object v5, v0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 964
    .line 965
    const-string v6, "captchaHandler"

    .line 966
    .line 967
    if-eqz v5, :cond_4a

    .line 968
    .line 969
    invoke-virtual {v5}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    .line 970
    .line 971
    .line 972
    move-result v5

    .line 973
    if-eqz v5, :cond_29

    .line 974
    .line 975
    iget-object v5, v0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 976
    .line 977
    if-eqz v5, :cond_28

    .line 978
    .line 979
    invoke-virtual {v5}, Lorg/wikipedia/captcha/CaptchaHandler;->cancelCaptcha()V

    .line 980
    .line 981
    .line 982
    iget-object v5, v0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 983
    .line 984
    if-eqz v5, :cond_27

    .line 985
    .line 986
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 987
    .line 988
    check-cast v5, Landroid/widget/ScrollView;

    .line 989
    .line 990
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 991
    .line 992
    .line 993
    goto :goto_4

    .line 994
    :cond_27
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    throw v12

    .line 998
    :cond_28
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    throw v12

    .line 1002
    :cond_29
    :goto_4
    iget-object v5, v0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 1003
    .line 1004
    if-eqz v5, :cond_49

    .line 1005
    .line 1006
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast v5, Lorg/wikipedia/views/WikiErrorView;

    .line 1009
    .line 1010
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    .line 1012
    .line 1013
    iget-object v5, v0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 1014
    .line 1015
    if-eqz v5, :cond_48

    .line 1016
    .line 1017
    invoke-virtual {v5}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->isActive()Z

    .line 1018
    .line 1019
    .line 1020
    move-result v6

    .line 1021
    const-string v8, "resultImageAlt"

    .line 1022
    .line 1023
    const-string v14, "resultImageCaption"

    .line 1024
    .line 1025
    if-eqz v6, :cond_33

    .line 1026
    .line 1027
    sget v6, Lorg/wikipedia/views/ViewAnimations;->$r8$clinit:I

    .line 1028
    .line 1029
    iget-object v6, v5, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 1030
    .line 1031
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1032
    .line 1033
    .line 1034
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 1035
    .line 1036
    check-cast v6, Landroid/widget/ScrollView;

    .line 1037
    .line 1038
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    .line 1040
    .line 1041
    new-instance v15, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;

    .line 1042
    .line 1043
    invoke-direct {v15, v5, v13}, Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;I)V

    .line 1044
    .line 1045
    .line 1046
    invoke-static {v6, v15}, Lorg/wikipedia/views/ViewAnimations;->fadeOut(Landroid/view/View;Lorg/wikipedia/edit/summaries/EditSummaryFragment$$ExternalSyntheticLambda0;)V

    .line 1047
    .line 1048
    .line 1049
    iget-object v5, v5, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->editSummaryHandler:Lokhttp3/MultipartBody$Builder;

    .line 1050
    .line 1051
    if-eqz v5, :cond_32

    .line 1052
    .line 1053
    iget-object v5, v5, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 1054
    .line 1055
    check-cast v5, Landroid/view/View;

    .line 1056
    .line 1057
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 1058
    .line 1059
    .line 1060
    move-result v6

    .line 1061
    if-nez v6, :cond_33

    .line 1062
    .line 1063
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    .line 1065
    .line 1066
    sget-object v15, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 1067
    .line 1068
    if-eqz v1, :cond_2a

    .line 1069
    .line 1070
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v12

    .line 1074
    :cond_2a
    if-nez v12, :cond_2b

    .line 1075
    .line 1076
    move-object/from16 v16, v7

    .line 1077
    .line 1078
    goto :goto_5

    .line 1079
    :cond_2b
    move-object/from16 v16, v12

    .line 1080
    .line 1081
    :goto_5
    if-nez v3, :cond_2c

    .line 1082
    .line 1083
    move-object/from16 v17, v7

    .line 1084
    .line 1085
    goto :goto_6

    .line 1086
    :cond_2c
    move-object/from16 v17, v3

    .line 1087
    .line 1088
    :goto_6
    if-nez v4, :cond_2d

    .line 1089
    .line 1090
    move-object/from16 v18, v7

    .line 1091
    .line 1092
    goto :goto_7

    .line 1093
    :cond_2d
    move-object/from16 v18, v4

    .line 1094
    .line 1095
    :goto_7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v1

    .line 1099
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v1

    .line 1103
    if-eqz v1, :cond_2f

    .line 1104
    .line 1105
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1106
    .line 1107
    .line 1108
    move-result v1

    .line 1109
    if-nez v1, :cond_2e

    .line 1110
    .line 1111
    goto :goto_8

    .line 1112
    :cond_2e
    move v1, v11

    .line 1113
    goto :goto_9

    .line 1114
    :cond_2f
    :goto_8
    move v1, v13

    .line 1115
    :goto_9
    xor-int/2addr v1, v13

    .line 1116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v22

    .line 1120
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v1

    .line 1124
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v1

    .line 1128
    if-eqz v1, :cond_30

    .line 1129
    .line 1130
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1131
    .line 1132
    .line 1133
    move-result v1

    .line 1134
    if-nez v1, :cond_31

    .line 1135
    .line 1136
    :cond_30
    move v11, v13

    .line 1137
    :cond_31
    xor-int/lit8 v1, v11, 0x1

    .line 1138
    .line 1139
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v23

    .line 1143
    const/16 v24, 0x0

    .line 1144
    .line 1145
    const/16 v25, 0x128

    .line 1146
    .line 1147
    const/16 v19, 0x0

    .line 1148
    .line 1149
    const-string v20, "accepted"

    .line 1150
    .line 1151
    const/16 v21, 0x0

    .line 1152
    .line 1153
    invoke-static/range {v15 .. v25}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v3

    .line 1161
    iget-object v3, v3, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1162
    .line 1163
    iget-object v3, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1164
    .line 1165
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1166
    .line 1167
    const-string v4, "editsummary_dialog"

    .line 1168
    .line 1169
    invoke-static {v2, v4, v1, v3}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v1

    .line 1176
    if-eqz v1, :cond_5a

    .line 1177
    .line 1178
    const v2, 0x7f1201a4

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    invoke-virtual {v1, v0}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 1186
    .line 1187
    .line 1188
    goto/16 :goto_17

    .line 1189
    .line 1190
    :cond_32
    const-string v0, "editSummaryHandler"

    .line 1191
    .line 1192
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1193
    .line 1194
    .line 1195
    throw v12

    .line 1196
    :cond_33
    iget-object v5, v0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 1197
    .line 1198
    const-string v6, "editPreviewFragment"

    .line 1199
    .line 1200
    if-eqz v5, :cond_47

    .line 1201
    .line 1202
    invoke-virtual {v5}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    .line 1203
    .line 1204
    .line 1205
    move-result v5

    .line 1206
    if-eqz v5, :cond_40

    .line 1207
    .line 1208
    sget-object v15, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 1209
    .line 1210
    if-eqz v1, :cond_34

    .line 1211
    .line 1212
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v1

    .line 1216
    goto :goto_a

    .line 1217
    :cond_34
    move-object v1, v12

    .line 1218
    :goto_a
    if-nez v1, :cond_35

    .line 1219
    .line 1220
    move-object/from16 v16, v7

    .line 1221
    .line 1222
    goto :goto_b

    .line 1223
    :cond_35
    move-object/from16 v16, v1

    .line 1224
    .line 1225
    :goto_b
    if-nez v3, :cond_36

    .line 1226
    .line 1227
    move-object/from16 v17, v7

    .line 1228
    .line 1229
    goto :goto_c

    .line 1230
    :cond_36
    move-object/from16 v17, v3

    .line 1231
    .line 1232
    :goto_c
    if-nez v4, :cond_37

    .line 1233
    .line 1234
    move-object/from16 v18, v7

    .line 1235
    .line 1236
    goto :goto_d

    .line 1237
    :cond_37
    move-object/from16 v18, v4

    .line 1238
    .line 1239
    :goto_d
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v1

    .line 1243
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v1

    .line 1247
    if-eqz v1, :cond_39

    .line 1248
    .line 1249
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1250
    .line 1251
    .line 1252
    move-result v1

    .line 1253
    if-nez v1, :cond_38

    .line 1254
    .line 1255
    goto :goto_e

    .line 1256
    :cond_38
    move v1, v11

    .line 1257
    goto :goto_f

    .line 1258
    :cond_39
    :goto_e
    move v1, v13

    .line 1259
    :goto_f
    xor-int/2addr v1, v13

    .line 1260
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v22

    .line 1264
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v1

    .line 1268
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v1

    .line 1272
    if-eqz v1, :cond_3b

    .line 1273
    .line 1274
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1275
    .line 1276
    .line 1277
    move-result v1

    .line 1278
    if-nez v1, :cond_3a

    .line 1279
    .line 1280
    goto :goto_10

    .line 1281
    :cond_3a
    move v1, v11

    .line 1282
    goto :goto_11

    .line 1283
    :cond_3b
    :goto_10
    move v1, v13

    .line 1284
    :goto_11
    xor-int/2addr v1, v13

    .line 1285
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v23

    .line 1289
    const/16 v24, 0x0

    .line 1290
    .line 1291
    const/16 v25, 0x128

    .line 1292
    .line 1293
    const/16 v19, 0x0

    .line 1294
    .line 1295
    const-string v20, "accepted"

    .line 1296
    .line 1297
    const/16 v21, 0x0

    .line 1298
    .line 1299
    invoke-static/range {v15 .. v25}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v1

    .line 1303
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v3

    .line 1307
    iget-object v3, v3, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1308
    .line 1309
    iget-object v3, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1310
    .line 1311
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1312
    .line 1313
    const-string v4, "caption_preview"

    .line 1314
    .line 1315
    invoke-static {v2, v4, v1, v3}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    .line 1317
    .line 1318
    iget-object v1, v0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 1319
    .line 1320
    if-eqz v1, :cond_3f

    .line 1321
    .line 1322
    invoke-virtual {v1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->hide()V

    .line 1323
    .line 1324
    .line 1325
    iget-object v1, v0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 1326
    .line 1327
    if-eqz v1, :cond_3e

    .line 1328
    .line 1329
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 1330
    .line 1331
    check-cast v1, Landroid/widget/ScrollView;

    .line 1332
    .line 1333
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v1

    .line 1340
    if-eqz v1, :cond_3c

    .line 1341
    .line 1342
    invoke-virtual {v1, v12}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 1343
    .line 1344
    .line 1345
    :cond_3c
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v1

    .line 1349
    iget-object v1, v1, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 1350
    .line 1351
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 1352
    .line 1353
    if-ne v1, v2, :cond_5a

    .line 1354
    .line 1355
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v1

    .line 1359
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v2

    .line 1363
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->sectionWikitextOriginal:Ljava/lang/String;

    .line 1364
    .line 1365
    iput-object v2, v1, Lorg/wikipedia/edit/EditSectionViewModel;->sectionWikitext:Ljava/lang/String;

    .line 1366
    .line 1367
    iget-object v1, v0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 1368
    .line 1369
    if-eqz v1, :cond_3d

    .line 1370
    .line 1371
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 1372
    .line 1373
    check-cast v1, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 1374
    .line 1375
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v2

    .line 1379
    iget-object v2, v2, Lorg/wikipedia/edit/EditSectionViewModel;->sectionWikitext:Ljava/lang/String;

    .line 1380
    .line 1381
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->startInsertImageFlow()V

    .line 1385
    .line 1386
    .line 1387
    goto/16 :goto_17

    .line 1388
    .line 1389
    :cond_3d
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1390
    .line 1391
    .line 1392
    throw v12

    .line 1393
    :cond_3e
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1394
    .line 1395
    .line 1396
    throw v12

    .line 1397
    :cond_3f
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1398
    .line 1399
    .line 1400
    throw v12

    .line 1401
    :cond_40
    new-instance v1, Landroid/util/TypedValue;

    .line 1402
    .line 1403
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v2

    .line 1410
    const v3, 0x1010031

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v2, v3, v1, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1414
    .line 1415
    .line 1416
    move-result v2

    .line 1417
    if-eqz v2, :cond_41

    .line 1418
    .line 1419
    move-object v12, v1

    .line 1420
    :cond_41
    if-eqz v12, :cond_46

    .line 1421
    .line 1422
    iget v1, v12, Landroid/util/TypedValue;->data:I

    .line 1423
    .line 1424
    invoke-virtual {v0, v1}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v1

    .line 1431
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v2

    .line 1438
    new-instance v3, Landroidx/paging/HintHandler;

    .line 1439
    .line 1440
    invoke-direct {v3, v2}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 1441
    .line 1442
    .line 1443
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1444
    .line 1445
    const/16 v4, 0x23

    .line 1446
    .line 1447
    if-lt v2, v4, :cond_42

    .line 1448
    .line 1449
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 1450
    .line 1451
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 1452
    .line 1453
    .line 1454
    goto :goto_12

    .line 1455
    :cond_42
    const/16 v4, 0x1e

    .line 1456
    .line 1457
    if-lt v2, v4, :cond_43

    .line 1458
    .line 1459
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 1460
    .line 1461
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 1462
    .line 1463
    .line 1464
    goto :goto_12

    .line 1465
    :cond_43
    const/16 v4, 0x1a

    .line 1466
    .line 1467
    if-lt v2, v4, :cond_44

    .line 1468
    .line 1469
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 1470
    .line 1471
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 1472
    .line 1473
    .line 1474
    goto :goto_12

    .line 1475
    :cond_44
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 1476
    .line 1477
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 1478
    .line 1479
    .line 1480
    :goto_12
    invoke-virtual {v2}, Lcoil3/util/UtilsKt;->hide()V

    .line 1481
    .line 1482
    .line 1483
    iget-boolean v1, v0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    .line 1484
    .line 1485
    if-eqz v1, :cond_45

    .line 1486
    .line 1487
    new-instance v1, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 1488
    .line 1489
    const/4 v2, 0x6

    .line 1490
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v0, v1}, Lorg/wikipedia/edit/EditSectionActivity;->doExitActionWithConfirmationDialog(Lkotlin/jvm/functions/Function0;)V

    .line 1494
    .line 1495
    .line 1496
    goto/16 :goto_17

    .line 1497
    .line 1498
    :cond_45
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1499
    .line 1500
    .line 1501
    goto/16 :goto_17

    .line 1502
    .line 1503
    :cond_46
    const-string v0, "Attribute not found; ID=16842801"

    .line 1504
    .line 1505
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1506
    .line 1507
    .line 1508
    goto/16 :goto_17

    .line 1509
    .line 1510
    :cond_47
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    throw v12

    .line 1514
    :cond_48
    const-string v0, "editSummaryFragment"

    .line 1515
    .line 1516
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    throw v12

    .line 1520
    :cond_49
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1521
    .line 1522
    .line 1523
    throw v12

    .line 1524
    :cond_4a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1525
    .line 1526
    .line 1527
    throw v12

    .line 1528
    :cond_4b
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1529
    .line 1530
    .line 1531
    throw v12

    .line 1532
    :pswitch_8
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 1533
    .line 1534
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 1535
    .line 1536
    invoke-virtual {v0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 1537
    .line 1538
    .line 1539
    goto/16 :goto_17

    .line 1540
    .line 1541
    :pswitch_9
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 1542
    .line 1543
    check-cast v0, Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 1544
    .line 1545
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->onBackCompleted()V

    .line 1546
    .line 1547
    .line 1548
    goto/16 :goto_17

    .line 1549
    .line 1550
    :pswitch_a
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 1551
    .line 1552
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1553
    .line 1554
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    .line 1556
    .line 1557
    goto/16 :goto_17

    .line 1558
    .line 1559
    :pswitch_b
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 1560
    .line 1561
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    .line 1562
    .line 1563
    const/4 v1, 0x3

    .line 1564
    invoke-static {v1}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    .line 1565
    .line 1566
    .line 1567
    move-result v2

    .line 1568
    const-string v3, "FragmentManager"

    .line 1569
    .line 1570
    if-eqz v2, :cond_4c

    .line 1571
    .line 1572
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1573
    .line 1574
    const-string v4, "handleOnBackPressed. PREDICTIVE_BACK = true fragment manager "

    .line 1575
    .line 1576
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v2

    .line 1586
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    .line 1588
    .line 1589
    :cond_4c
    iget-object v2, v0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 1590
    .line 1591
    iget-object v4, v0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 1592
    .line 1593
    iput-boolean v13, v0, Landroidx/fragment/app/FragmentManagerImpl;->mHandlingTransitioningOp:Z

    .line 1594
    .line 1595
    invoke-virtual {v0, v13}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions(Z)Z

    .line 1596
    .line 1597
    .line 1598
    iput-boolean v11, v0, Landroidx/fragment/app/FragmentManagerImpl;->mHandlingTransitioningOp:Z

    .line 1599
    .line 1600
    iget-object v5, v0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 1601
    .line 1602
    if-eqz v5, :cond_56

    .line 1603
    .line 1604
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1605
    .line 1606
    .line 1607
    move-result v5

    .line 1608
    if-nez v5, :cond_4f

    .line 1609
    .line 1610
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 1611
    .line 1612
    iget-object v6, v0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 1613
    .line 1614
    invoke-static {v6}, Landroidx/fragment/app/FragmentManagerImpl;->fragmentsFromRecord(Landroidx/fragment/app/BackStackRecord;)Ljava/util/HashSet;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v6

    .line 1618
    invoke-direct {v5, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1619
    .line 1620
    .line 1621
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v4

    .line 1625
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1626
    .line 1627
    .line 1628
    move-result v6

    .line 1629
    if-eqz v6, :cond_4f

    .line 1630
    .line 1631
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v6

    .line 1635
    if-nez v6, :cond_4e

    .line 1636
    .line 1637
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v6

    .line 1641
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1642
    .line 1643
    .line 1644
    move-result v7

    .line 1645
    if-nez v7, :cond_4d

    .line 1646
    .line 1647
    goto :goto_13

    .line 1648
    :cond_4d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v0

    .line 1652
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1653
    .line 1654
    throw v12

    .line 1655
    :cond_4e
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 1656
    .line 1657
    .line 1658
    goto/16 :goto_17

    .line 1659
    .line 1660
    :cond_4f
    iget-object v4, v0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 1661
    .line 1662
    iget-object v4, v4, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 1663
    .line 1664
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v4

    .line 1668
    :cond_50
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1669
    .line 1670
    .line 1671
    move-result v5

    .line 1672
    if-eqz v5, :cond_51

    .line 1673
    .line 1674
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v5

    .line 1678
    check-cast v5, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 1679
    .line 1680
    iget-object v5, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1681
    .line 1682
    if-eqz v5, :cond_50

    .line 1683
    .line 1684
    iput-boolean v11, v5, Landroidx/fragment/app/Fragment;->mTransitioning:Z

    .line 1685
    .line 1686
    goto :goto_14

    .line 1687
    :cond_51
    new-instance v4, Ljava/util/ArrayList;

    .line 1688
    .line 1689
    iget-object v5, v0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 1690
    .line 1691
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v5

    .line 1695
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1696
    .line 1697
    .line 1698
    invoke-virtual {v0, v4, v11, v13}, Landroidx/fragment/app/FragmentManagerImpl;->collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v4

    .line 1702
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v4

    .line 1706
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1707
    .line 1708
    .line 1709
    move-result v5

    .line 1710
    if-eqz v5, :cond_53

    .line 1711
    .line 1712
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v5

    .line 1716
    check-cast v5, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 1717
    .line 1718
    iget-object v6, v5, Landroidx/fragment/app/DefaultSpecialEffectsController;->runningOperations:Ljava/util/ArrayList;

    .line 1719
    .line 1720
    invoke-static {v1}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    .line 1721
    .line 1722
    .line 1723
    move-result v7

    .line 1724
    if-eqz v7, :cond_52

    .line 1725
    .line 1726
    const-string v7, "SpecialEffectsController: Completing Back "

    .line 1727
    .line 1728
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    .line 1730
    .line 1731
    :cond_52
    invoke-virtual {v5, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController;->processStart(Ljava/util/ArrayList;)V

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {v5, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController;->commitEffects$fragment_release(Ljava/util/ArrayList;)V

    .line 1735
    .line 1736
    .line 1737
    goto :goto_15

    .line 1738
    :cond_53
    iget-object v4, v0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 1739
    .line 1740
    iget-object v4, v4, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 1741
    .line 1742
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v4

    .line 1746
    :cond_54
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1747
    .line 1748
    .line 1749
    move-result v5

    .line 1750
    if-eqz v5, :cond_55

    .line 1751
    .line 1752
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v5

    .line 1756
    check-cast v5, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 1757
    .line 1758
    iget-object v5, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1759
    .line 1760
    if-eqz v5, :cond_54

    .line 1761
    .line 1762
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1763
    .line 1764
    if-nez v6, :cond_54

    .line 1765
    .line 1766
    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManagerImpl;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v5

    .line 1770
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 1771
    .line 1772
    .line 1773
    goto :goto_16

    .line 1774
    :cond_55
    iput-object v12, v0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 1775
    .line 1776
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 1777
    .line 1778
    .line 1779
    invoke-static {v1}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    .line 1780
    .line 1781
    .line 1782
    move-result v1

    .line 1783
    if-eqz v1, :cond_5a

    .line 1784
    .line 1785
    const-string v1, "Op is being set to null"

    .line 1786
    .line 1787
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    .line 1789
    .line 1790
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1791
    .line 1792
    const-string v4, "OnBackPressedCallback enabled="

    .line 1793
    .line 1794
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1795
    .line 1796
    .line 1797
    iget-boolean v2, v2, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    .line 1798
    .line 1799
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1800
    .line 1801
    .line 1802
    const-string v2, " for  FragmentManager "

    .line 1803
    .line 1804
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    .line 1806
    .line 1807
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1808
    .line 1809
    .line 1810
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v0

    .line 1814
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    .line 1816
    .line 1817
    goto :goto_17

    .line 1818
    :cond_56
    iget-boolean v2, v2, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    .line 1819
    .line 1820
    if-eqz v2, :cond_58

    .line 1821
    .line 1822
    invoke-static {v1}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    .line 1823
    .line 1824
    .line 1825
    move-result v1

    .line 1826
    if-eqz v1, :cond_57

    .line 1827
    .line 1828
    const-string v1, "Calling popBackStackImmediate via onBackPressed callback"

    .line 1829
    .line 1830
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    .line 1832
    .line 1833
    :cond_57
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate()Z

    .line 1834
    .line 1835
    .line 1836
    goto :goto_17

    .line 1837
    :cond_58
    invoke-static {v1}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    .line 1838
    .line 1839
    .line 1840
    move-result v1

    .line 1841
    if-eqz v1, :cond_59

    .line 1842
    .line 1843
    const-string v1, "Calling onBackPressed via onBackPressed callback"

    .line 1844
    .line 1845
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    .line 1847
    .line 1848
    :cond_59
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 1849
    .line 1850
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 1851
    .line 1852
    .line 1853
    :cond_5a
    :goto_17
    return-void

    .line 1854
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onBackProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 10

    .line 1
    new-instance v0, Landroidx/activity/BackEventCompat;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 7
    .line 8
    iget p1, p0, Landroidx/fragment/app/FragmentManager$1;->$r8$classId:I

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :pswitch_0
    goto/16 :goto_2

    .line 14
    .line 15
    :pswitch_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->onBackProgressed(Landroidx/activity/BackEventCompat;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :pswitch_2
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroidx/fragment/app/FragmentManagerImpl;

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    invoke-static {p1}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const-string v2, "FragmentManager"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "handleOnBackProgressed. PREDICTIVE_BACK = true fragment manager "

    .line 40
    .line 41
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 55
    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 61
    .line 62
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x1

    .line 71
    invoke-virtual {p0, v1, v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->collectChangedControllers(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v6, "SpecialEffectsController: Processing Progress "

    .line 103
    .line 104
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget v6, v0, Landroidx/activity/BackEventCompat;->progress:F

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_2
    iget-object v5, v4, Landroidx/fragment/app/DefaultSpecialEffectsController;->runningOperations:Ljava/util/ArrayList;

    .line 120
    .line 121
    new-instance v6, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_3

    .line 135
    .line 136
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    check-cast v7, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 141
    .line 142
    iget-object v7, v7, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->effects:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_3
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/lang/Iterable;

    .line 153
    .line 154
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    move v7, v3

    .line 163
    :goto_1
    if-ge v7, v6, :cond_1

    .line 164
    .line 165
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    check-cast v8, Landroidx/fragment/app/SpecialEffectsController$Effect;

    .line 170
    .line 171
    iget-object v9, v4, Landroidx/fragment/app/DefaultSpecialEffectsController;->container:Landroid/view/ViewGroup;

    .line 172
    .line 173
    invoke-virtual {v8, v0, v9}, Landroidx/fragment/app/SpecialEffectsController$Effect;->onProgress(Landroidx/activity/BackEventCompat;Landroid/view/ViewGroup;)V

    .line 174
    .line 175
    .line 176
    add-int/lit8 v7, v7, 0x1

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_4
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_5

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_5
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    throw p0

    .line 197
    :cond_6
    :goto_2
    return-void

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onBackStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/activity/BackEventCompat;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 10
    .line 11
    iget p1, p0, Landroidx/fragment/app/FragmentManager$1;->$r8$classId:I

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    :pswitch_0
    goto :goto_0

    .line 17
    :pswitch_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->onBackStarted()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_2
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Landroidx/fragment/app/FragmentManagerImpl;

    .line 28
    .line 29
    const/4 p1, 0x3

    .line 30
    invoke-static {p1}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "handleOnBackStarted. PREDICTIVE_BACK = true fragment manager "

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "FragmentManager"

    .line 51
    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Landroidx/fragment/app/FragmentManager$PrepareBackStackTransitionState;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Landroidx/fragment/app/FragmentManager$PrepareBackStackTransitionState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setLifecycleActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->isLifecycleActive:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 6
    .line 7
    iget-boolean p1, p1, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventHandler;->setBackEnabled(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
