.class public final Lcom/fsck/k9/controller/MessagingController$4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic val$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic val$listener:Lcom/fsck/k9/controller/MessagingController$8;

.field public final synthetic val$message:Lcom/fsck/k9/mailstore/LocalMessage;

.field public final synthetic val$part:Lcom/fsck/k9/mail/Part;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/mailstore/LocalMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/MessagingController$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$4;->this$0:Lcom/fsck/k9/controller/MessagingController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$4;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$4;->val$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$4;->val$part:Lcom/fsck/k9/mail/Part;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$4;->val$listener:Lcom/fsck/k9/controller/MessagingController$8;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$4;->val$listener:Lcom/fsck/k9/controller/MessagingController$8;

    .line 2
    .line 3
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$4;->val$part:Lcom/fsck/k9/mail/Part;

    .line 4
    .line 5
    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingController$4;->val$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController$4;->this$0:Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$4;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    :try_start_0
    iget-object v0, v4, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, v9, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 17
    .line 18
    invoke-virtual {v2, v8}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 19
    .line 20
    .line 21
    move-result-object v11

    .line 22
    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 23
    .line 24
    iget-object v2, v11, Lcom/fsck/k9/mailstore/LocalStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 25
    .line 26
    iget-object v6, v11, Lcom/fsck/k9/mailstore/LocalStore;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 27
    .line 28
    invoke-direct {v3, v11, v0, v2, v6}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/fsck/k9/controller/ProgressBodyFactory;

    .line 32
    .line 33
    new-instance v6, Landroidx/work/Configuration$Builder;

    .line 34
    .line 35
    const/16 v7, 0x16

    .line 36
    .line 37
    invoke-direct {v6, v7, p0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v6}, Lcom/fsck/k9/controller/ProgressBodyFactory;-><init>(Landroidx/work/Configuration$Builder;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v8}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iget-object v6, v4, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {p0, v0, v6, v5, v2}, Lcom/fsck/k9/backend/api/Backend;->fetchPart(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/ProgressBodyFactory;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 53
    .line 54
    .line 55
    iget-object p0, v11, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 56
    .line 57
    new-instance v2, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 58
    .line 59
    const/16 v7, 0x16

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v10, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v11}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 90
    .line 91
    invoke-virtual {v0}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->loadAttachmentFinished()V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    move-object p0, v0

    .line 97
    goto :goto_1

    .line 98
    :cond_0
    return-void

    .line 99
    :goto_1
    const-string v0, "Exception loading attachment"

    .line 100
    .line 101
    new-array v2, v10, [Ljava/lang/Object;

    .line 102
    .line 103
    invoke-static {p0, v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_1

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 125
    .line 126
    invoke-virtual {v1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->loadAttachmentFailed()V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_1
    const/4 v0, 0x1

    .line 131
    invoke-virtual {v9, v8, p0, v0}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Exception;Z)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
