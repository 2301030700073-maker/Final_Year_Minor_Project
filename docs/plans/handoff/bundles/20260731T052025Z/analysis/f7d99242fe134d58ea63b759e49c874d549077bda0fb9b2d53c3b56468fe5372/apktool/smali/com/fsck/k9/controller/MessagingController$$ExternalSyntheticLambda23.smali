.class public final synthetic Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/ArrayList;JI)V
    .locals 0

    .line 1
    iput p8, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$2:J

    .line 8
    .line 9
    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$3:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-wide p6, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$4:J

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;JJI)V
    .locals 0

    .line 17
    iput p8, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$3:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$2:J

    iput-wide p6, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$4:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$3:Ljava/util/ArrayList;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v4, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 14
    .line 15
    iget-wide v6, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$2:J

    .line 16
    .line 17
    iget-wide v9, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$4:J

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v4, v5, v3}, Lcom/fsck/k9/controller/MessagingController;->collectMessagesInThreads(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    sget-object v11, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->MOVE:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 24
    .line 25
    invoke-virtual/range {v4 .. v11}, Lcom/fsck/k9/controller/MessagingController;->moveOrCopyMessageSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;JLcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string v1, "Exception while moving messages"

    .line 31
    .line 32
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v1, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 39
    .line 40
    iget-object v4, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 41
    .line 42
    iget-wide v5, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$2:J

    .line 43
    .line 44
    iget-wide v8, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$4:J

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {v1, v4, v3}, Lcom/fsck/k9/controller/MessagingController;->collectMessagesInThreads(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    sget-object v10, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->COPY:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 51
    .line 52
    move-object v3, v1

    .line 53
    invoke-virtual/range {v3 .. v10}, Lcom/fsck/k9/controller/MessagingController;->moveOrCopyMessageSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;JLcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;)V
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception v0

    .line 58
    const-string v1, "Exception while copying messages"

    .line 59
    .line 60
    new-array v2, v2, [Ljava/lang/Object;

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void

    .line 66
    :pswitch_1
    iget-wide v8, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$4:J

    .line 67
    .line 68
    sget-object v10, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->COPY:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 69
    .line 70
    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 71
    .line 72
    iget-object v4, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 73
    .line 74
    iget-wide v5, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$2:J

    .line 75
    .line 76
    iget-object v7, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$3:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual/range {v3 .. v10}, Lcom/fsck/k9/controller/MessagingController;->moveOrCopyMessageSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;JLcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_2
    iget-wide v1, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$4:J

    .line 83
    .line 84
    sget-object v18, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->MOVE:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 85
    .line 86
    iget-object v11, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 87
    .line 88
    iget-object v12, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 89
    .line 90
    iget-wide v13, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$2:J

    .line 91
    .line 92
    iget-object v15, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda23;->f$3:Ljava/util/ArrayList;

    .line 93
    .line 94
    move-wide/from16 v16, v1

    .line 95
    .line 96
    invoke-virtual/range {v11 .. v18}, Lcom/fsck/k9/controller/MessagingController;->moveOrCopyMessageSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;JLcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
