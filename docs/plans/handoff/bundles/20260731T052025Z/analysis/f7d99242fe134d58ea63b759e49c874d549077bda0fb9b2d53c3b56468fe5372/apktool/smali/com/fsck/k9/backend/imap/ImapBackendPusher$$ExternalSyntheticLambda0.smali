.class public final synthetic Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v11, p1

    .line 13
    check-cast v11, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v5, Lcom/fsck/k9/backend/imap/ImapFolderPusher;

    .line 19
    .line 20
    iget-object v9, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 21
    .line 22
    iget-object v6, v9, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 23
    .line 24
    iget-object v7, v9, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

    .line 25
    .line 26
    iget-object v8, v9, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 27
    .line 28
    iget-object v10, v9, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->accountName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v12, v9, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->idleRefreshTimeoutProvider:Landroidx/work/Configuration$Builder;

    .line 31
    .line 32
    invoke-direct/range {v5 .. v12}, Lcom/fsck/k9/backend/imap/ImapFolderPusher;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;Lcom/fsck/k9/power/AndroidPowerManager;Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;Lcom/fsck/k9/backend/imap/ImapBackendPusher;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Configuration$Builder;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, v9, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolders:Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-interface {p0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-object v5

    .line 41
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object p0, v4, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolderSleeping:Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p0, v4, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolderSleeping:Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 64
    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    iget-boolean p0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->isWaiting:Z

    .line 68
    .line 69
    if-ne p0, v1, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v1, v2

    .line 73
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object p0, v4, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolders:Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Lcom/fsck/k9/backend/imap/ImapFolderPusher;

    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-array p0, v1, [Ljava/lang/Object;

    .line 98
    .line 99
    aput-object p1, p0, v2

    .line 100
    .line 101
    const-string v0, "Canceling ImapBackendPusher retry timer for folder %s"

    .line 102
    .line 103
    invoke-static {v0, p0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p0, v4, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushFolderSleeping:Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 113
    .line 114
    if-eqz p0, :cond_1

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->cancel()V

    .line 117
    .line 118
    .line 119
    :cond_1
    return-object v3

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
