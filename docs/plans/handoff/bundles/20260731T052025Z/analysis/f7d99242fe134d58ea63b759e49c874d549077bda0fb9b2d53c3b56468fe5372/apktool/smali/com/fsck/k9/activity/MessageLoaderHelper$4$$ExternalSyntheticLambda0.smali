.class public final synthetic Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->f$2:J

    .line 8
    .line 9
    iput-object p5, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

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
    .locals 14

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->f$2:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v6, v5

    .line 15
    check-cast v6, Lcom/fsck/k9/controller/MessagingController;

    .line 16
    .line 17
    move-object v7, v4

    .line 18
    check-cast v7, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 19
    .line 20
    iget-wide v8, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->f$2:J

    .line 21
    .line 22
    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    .line 23
    .line 24
    :try_start_0
    new-instance v12, Lcom/fsck/k9/helper/MutableBoolean;

    .line 25
    .line 26
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v10, 0x1

    .line 30
    const/4 v11, 0x0

    .line 31
    invoke-virtual/range {v6 .. v12}, Lcom/fsck/k9/controller/MessagingController;->synchronizeMailboxSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lcom/fsck/k9/helper/MutableBoolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object p0, v0

    .line 40
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :pswitch_0
    check-cast v5, Lcom/fsck/k9/controller/MessagingController;

    .line 45
    .line 46
    check-cast v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 47
    .line 48
    move-object v9, v3

    .line 49
    check-cast v9, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 50
    .line 51
    new-instance v10, Lcom/fsck/k9/helper/MutableBoolean;

    .line 52
    .line 53
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-wide v6, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$4$$ExternalSyntheticLambda0;->f$2:J

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    move-object v13, v5

    .line 60
    move-object v5, v4

    .line 61
    move-object v4, v13

    .line 62
    invoke-virtual/range {v4 .. v10}, Lcom/fsck/k9/controller/MessagingController;->synchronizeMailboxSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lcom/fsck/k9/helper/MutableBoolean;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_1
    check-cast v5, Lcom/fsck/k9/controller/MessagingController;

    .line 67
    .line 68
    check-cast v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 69
    .line 70
    check-cast v3, Ljava/util/List;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 90
    .line 91
    :try_start_1
    iget-object v0, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v5, v4, v1, v2, v0}, Lcom/fsck/k9/controller/MessagingController;->loadMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-virtual {v5, v4, v0, v6, v3}, Lcom/fsck/k9/controller/MessagingController;->saveDraft(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-eqz v3, :cond_1

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->destroy()V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    goto :goto_3

    .line 112
    :cond_1
    :goto_1
    iget-object v0, v5, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_0

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :goto_3
    const/4 v3, 0x0

    .line 135
    new-array v3, v3, [Ljava/lang/Object;

    .line 136
    .line 137
    const-string v6, "Error loading message. Draft was not saved."

    .line 138
    .line 139
    invoke-static {v0, v6, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    return-void

    .line 144
    :pswitch_2
    check-cast v5, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 145
    .line 146
    check-cast v4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 147
    .line 148
    check-cast v3, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    .line 149
    .line 150
    invoke-interface {v5, v4, v1, v2, v3}, Landroidx/camera/camera2/pipe/Request$Listener;->onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :pswitch_3
    check-cast v5, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 155
    .line 156
    check-cast v4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 157
    .line 158
    check-cast v3, Landroidx/camera/camera2/pipe/RequestFailure;

    .line 159
    .line 160
    invoke-interface {v5, v4, v1, v2, v3}, Landroidx/camera/camera2/pipe/Request$Listener;->onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_4
    check-cast v5, Lcom/fsck/k9/activity/MessageCompose$12;

    .line 165
    .line 166
    check-cast v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 167
    .line 168
    check-cast v3, Ljava/lang/String;

    .line 169
    .line 170
    iget-object p0, v5, Lcom/fsck/k9/activity/MessageCompose$12;->this$0:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p0, Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 173
    .line 174
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 175
    .line 176
    iget-object v4, v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v1, v2, v4, v3}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(JLjava/lang/String;Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_3

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 186
    .line 187
    if-nez v0, :cond_4

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 191
    .line 192
    const/4 v1, 0x1

    .line 193
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManagerImpl;->destroyLoader(I)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 197
    .line 198
    const/4 v1, 0x2

    .line 199
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManagerImpl;->destroyLoader(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->cancelAndClearCryptoOperation()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeLocalMessageLoader()V

    .line 206
    .line 207
    .line 208
    :goto_4
    return-void

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
