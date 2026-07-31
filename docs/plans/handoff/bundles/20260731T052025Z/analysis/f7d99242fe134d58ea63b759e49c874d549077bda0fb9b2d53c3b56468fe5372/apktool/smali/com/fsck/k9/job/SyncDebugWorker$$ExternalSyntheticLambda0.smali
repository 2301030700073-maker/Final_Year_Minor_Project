.class public final synthetic Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "Could not cancel remote search future."

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "Remote search in progress, attempting to abort..."

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "Could not abort remote search before going back"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "failed to fetch IMAP prefix due to network error. skipping db migration"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "failed to fetch IMAP prefix due to authentication error. skipping db migration"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "No Imap Prefix detected, skipping db migration"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "fetching IMAP prefix"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "Creating Storage database"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    const-string p0, "Loading preferences from DB into Storage"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    const-string p0, "Committing preference changes"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    const-string p0, "Failed to save preferences"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    const-string p0, "hasPendingMessages: Couldn\'t check for pending messages."

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    const-string p0, "Failed to create Outbox folder."

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    const-string p0, "Creating Outbox folder."

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    const-string p0, "getOutboxFolderId: Couldn\'t find Outbox folder."

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    sget-object p0, Lcom/fsck/k9/controller/MessagingController;->SYNC_FLAGS:Ljava/util/EnumSet;

    .line 52
    .line 53
    const-string p0, "Error while loading remote message"

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_f
    sget-object p0, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->MOVE:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_10
    sget-object p0, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->MOVE_AND_MARK_AS_READ:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_11
    const-string p0, "refreshFolderList() called"

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_12
    sget p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->$r8$clinit:I

    .line 66
    .line 67
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :pswitch_13
    sget-object p0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 75
    .line 76
    const-string p0, "Switching to single pane view due to fold"

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_14
    sget-object p0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 80
    .line 81
    const-string p0, "Switching to split view due to unfold"

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_15
    sget-object p0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 85
    .line 86
    const-string p0, "The account property is null. Skipping drawer configuration. "

    .line 87
    .line 88
    return-object p0

    .line 89
    :pswitch_16
    invoke-static {}, Lcoil3/util/ServiceLoaderComponentRegistry;->$r8$lambda$pXyiAwaUQzxpRfR3V2HK_dqwf8M()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :pswitch_17
    invoke-static {}, Lcoil3/util/ServiceLoaderComponentRegistry;->$r8$lambda$rCNNmXdWcAQ1pDqLHEKqVpwkpK0()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_18
    invoke-static {}, Lcoil3/network/okhttp/OkHttpNetworkFetcher;->$r8$lambda$fNHtAdBrlgzymHZqEq__tepvJGA()Lcoil3/network/CacheStrategy;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :pswitch_19
    invoke-static {}, Lcoil3/network/okhttp/OkHttpNetworkFetcher;->$r8$lambda$-SRcTy86tfg9z6Q8LCarYjYbEEI()Lcoil3/network/ConcurrentRequestStrategy;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_1a
    invoke-static {}, Lcoil3/network/okhttp/OkHttpNetworkFetcher;->$r8$lambda$30hOvToTBQw-6dxUl1EgDenm8yY()Lcoil3/network/CacheStrategy;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_1b
    invoke-static {}, Lcoil3/network/okhttp/OkHttpNetworkFetcher;->$r8$lambda$-Z81nTYwJAiM9v6O6nq65E44J5Q()Lcoil3/network/CacheStrategy;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :pswitch_1c
    const-string p0, "Failed to export log"

    .line 120
    .line 121
    return-object p0

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
