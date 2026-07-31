.class public final synthetic Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/beetstra/jutf7/Base64Util;


# direct methods
.method public synthetic constructor <init>(Lcom/beetstra/jutf7/Base64Util;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;->f$0:Lcom/beetstra/jutf7/Base64Util;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0xd

    .line 8
    .line 9
    const/16 v4, 0xc

    .line 10
    .line 11
    const-string v5, "archive_marks_as_read"

    .line 12
    .line 13
    iget-object v0, v0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;->f$0:Lcom/beetstra/jutf7/Base64Util;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v7, p1

    .line 19
    .line 20
    check-cast v7, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 21
    .line 22
    move-object/from16 v1, p2

    .line 23
    .line 24
    check-cast v1, Ljava/lang/Long;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v8

    .line 30
    move-object/from16 v1, p3

    .line 31
    .line 32
    check-cast v1, Ljava/util/List;

    .line 33
    .line 34
    move-object/from16 v6, p4

    .line 35
    .line 36
    check-cast v6, Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v11

    .line 42
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v6, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v6, Lcom/fsck/k9/controller/MessagingController;

    .line 51
    .line 52
    invoke-virtual {v6, v7, v1}, Lcom/fsck/k9/controller/MessagingController;->collectMessagesInThreads(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    iget-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 59
    .line 60
    invoke-virtual {v1, v5}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v5, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {v5, v4}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance v4, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {v4, v3}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v5, v4}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->whenEnabledOrNot(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v13, v1

    .line 79
    check-cast v13, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 82
    .line 83
    move-object v6, v0

    .line 84
    check-cast v6, Lcom/fsck/k9/controller/MessagingController;

    .line 85
    .line 86
    invoke-virtual/range {v6 .. v13}, Lcom/fsck/k9/controller/MessagingController;->moveOrCopyMessageSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;JLcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :pswitch_0
    move-object/from16 v15, p1

    .line 91
    .line 92
    check-cast v15, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 93
    .line 94
    move-object/from16 v1, p2

    .line 95
    .line 96
    check-cast v1, Ljava/lang/Long;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v16

    .line 102
    move-object/from16 v18, p3

    .line 103
    .line 104
    check-cast v18, Ljava/util/List;

    .line 105
    .line 106
    move-object/from16 v1, p4

    .line 107
    .line 108
    check-cast v1, Ljava/lang/Long;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 111
    .line 112
    .line 113
    move-result-wide v19

    .line 114
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v1, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 123
    .line 124
    invoke-virtual {v1, v5}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v5, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    invoke-direct {v5, v4}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    invoke-direct {v4, v3}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1, v5, v4}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->whenEnabledOrNot(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    move-object/from16 v21, v1

    .line 143
    .line 144
    check-cast v21, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 147
    .line 148
    move-object v14, v0

    .line 149
    check-cast v14, Lcom/fsck/k9/controller/MessagingController;

    .line 150
    .line 151
    invoke-virtual/range {v14 .. v21}, Lcom/fsck/k9/controller/MessagingController;->moveOrCopyMessageSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;JLcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;)V

    .line 152
    .line 153
    .line 154
    return-object v2

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
