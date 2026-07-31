.class public final Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $accountId:Lnet/thunderbird/feature/account/AccountId;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->this$0:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->$accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->$accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->this$0:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p1, p0, v0, p2, v1}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;-><init>(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, p0, v0, p2, v1}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;-><init>(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->$accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$createOutboxFolder$2;->this$0:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 7
    .line 8
    const-string v3, "DefaultOutboxFolderManager"

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 20
    .line 21
    new-instance v5, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v5, v1, v4}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/AccountId;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v3, v2, v5, v4}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v1}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->access$createLocalStore(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/16 v1, 0x12

    .line 39
    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 41
    .line 42
    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/16 v4, 0x1a

    .line 45
    .line 46
    invoke-direct {v2, v4, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p0, v4, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lkotlin/Unit;
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :goto_0
    new-instance v2, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-direct {v2, v1}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v3, p0, v2}, Lnet/thunderbird/core/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    new-instance v2, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-direct {v2, v1}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v3, p0, v2}, Lnet/thunderbird/core/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 79
    .line 80
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 89
    .line 90
    new-instance v0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/AccountId;I)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v3, v2, v0, v4}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v1}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->access$createLocalStore(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    :try_start_1
    const-string p1, "Outbox"

    .line 104
    .line 105
    sget-object v0, Lcom/fsck/k9/mail/FolderType;->OUTBOX:Lcom/fsck/k9/mail/FolderType;

    .line 106
    .line 107
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 108
    .line 109
    new-instance v1, Lcom/fsck/k9/mailstore/LocalStore$$ExternalSyntheticLambda1;

    .line 110
    .line 111
    const/16 v3, 0x64

    .line 112
    .line 113
    invoke-direct {v1, p1, v0, v3, v5}, Lcom/fsck/k9/mailstore/LocalStore$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v5, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Ljava/lang/Long;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 123
    .line 124
    .line 125
    move-result-wide p0

    .line 126
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 127
    .line 128
    new-instance v1, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-direct {v1, p0, p1}, Ljava/lang/Long;-><init>(J)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :catch_2
    move-exception p0

    .line 138
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 139
    .line 140
    invoke-direct {v0, p0, v2}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :goto_3
    return-object v0

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
