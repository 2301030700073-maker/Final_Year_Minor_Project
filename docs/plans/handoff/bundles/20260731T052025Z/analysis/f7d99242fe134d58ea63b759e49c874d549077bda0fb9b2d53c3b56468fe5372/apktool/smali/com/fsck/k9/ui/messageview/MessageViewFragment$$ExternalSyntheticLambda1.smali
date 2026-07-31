.class public final synthetic Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onActivityResult$com$fsck$k9$ui$messageview$MessageViewFragment$$ExternalSyntheticLambda2(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 2
    .line 3
    check-cast p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;

    .line 4
    .line 5
    const-string v0, "account"

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-wide v6, p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;->folderId:J

    .line 11
    .line 12
    iget-object p1, p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;->messageReference:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iput-object v3, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->lastSelectedFolderId:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    monitor-exit v1

    .line 42
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v3, v2

    .line 47
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-wide v3, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual/range {v1 .. v7}, Lcom/fsck/k9/controller/MessagingController;->copyMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v3

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    move-object p0, v0

    .line 74
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0

    .line 76
    :cond_3
    move-object v3, v2

    .line 77
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v3
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 8
    .line 9
    check-cast p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;

    .line 10
    .line 11
    const-string v0, "account"

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-wide v7, p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;->folderId:J

    .line 17
    .line 18
    iget-object p1, p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderResultContract$Result;->messageReference:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p1}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 36
    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    monitor-enter v2

    .line 40
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iput-object v3, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->lastSelectedFolderId:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit v2

    .line 47
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageHomeActivity;->performNavigationAfterMessageRemoval()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iget-wide v4, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual/range {v2 .. v8}, Lcom/fsck/k9/controller/MessagingController;->moveMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;J)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void

    .line 79
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_3
    const-string p0, "fragmentListener"

    .line 84
    .line 85
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v1

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    move-object p0, v0

    .line 91
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p0

    .line 93
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;->onActivityResult$com$fsck$k9$ui$messageview$MessageViewFragment$$ExternalSyntheticLambda2(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 102
    .line 103
    check-cast p1, Landroid/net/Uri;

    .line 104
    .line 105
    if-nez p1, :cond_5

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v2, "content"

    .line 113
    .line 114
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->pendingEmlExport:Z

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    iput-boolean v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->pendingEmlExport:Z

    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v2, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 136
    .line 137
    const/16 v3, 0x19

    .line 138
    .line 139
    invoke-direct {v2, p0, p1, v1, v3}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 140
    .line 141
    .line 142
    const/4 p0, 0x3

    .line 143
    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->currentAttachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 148
    .line 149
    new-instance v1, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessagingController$3()Lcom/fsck/k9/controller/MessagingController;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-direct {v1, v3, v4, p0, v0}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Landroid/content/Context;Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 160
    .line 161
    .line 162
    iget-boolean p0, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable:Z

    .line 163
    .line 164
    if-nez p0, :cond_7

    .line 165
    .line 166
    iget-object p0, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    .line 167
    .line 168
    check-cast p0, Lcom/fsck/k9/mailstore/LocalPart;

    .line 169
    .line 170
    new-instance v0, Landroidx/core/app/ActivityRecreator$1;

    .line 171
    .line 172
    const/16 v3, 0x10

    .line 173
    .line 174
    invoke-direct {v0, v3, v1, p1, v2}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, p0, v0}, Lcom/fsck/k9/mailstore/LocalStore$7;->downloadAttachment(Lcom/fsck/k9/mailstore/LocalPart;Ljava/lang/Runnable;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_7
    new-instance p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;

    .line 182
    .line 183
    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;I)V

    .line 184
    .line 185
    .line 186
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 187
    .line 188
    const/4 v1, 0x1

    .line 189
    new-array v1, v1, [Landroid/net/Uri;

    .line 190
    .line 191
    aput-object p1, v1, v2

    .line 192
    .line 193
    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_8
    const-string p0, "content: URI required"

    .line 198
    .line 199
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_1
    return-void

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
