.class public final synthetic Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic f$0:Lapp/k9mail/legacy/mailstore/SaveMessageData;

.field public final synthetic f$1:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/legacy/mailstore/SaveMessageData;Lcom/fsck/k9/storage/messages/CopyMessageOperations;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;->f$0:Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;->f$1:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;->f$2:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v6, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;->f$0:Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 2
    .line 3
    iget-object v0, v6, Lapp/k9mail/legacy/mailstore/SaveMessageData;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    iget-object v0, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;->f$1:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 9
    .line 10
    new-instance v3, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v5, v1

    .line 14
    move-object v7, v2

    .line 15
    iget-wide v1, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;->f$2:J

    .line 16
    .line 17
    iget-object v8, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v3, v4, v1, v2, v8}, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;-><init>(IJLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v7, v4, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lkotlin/Pair;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    iget-object v3, p0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    iget-object p0, p0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v7, p0

    .line 41
    check-cast v7, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-object v5, p1

    .line 47
    invoke-virtual/range {v0 .. v8}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->replaceMessage(JJLandroid/database/sqlite/SQLiteDatabase;Lapp/k9mail/legacy/mailstore/SaveMessageData;Ljava/lang/Long;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_0
    move-object p0, p1

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/fsck/k9/storage/messages/ThreadHeaders;

    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget-object v4, v5, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 65
    .line 66
    const-string v7, "In-Reply-To"

    .line 67
    .line 68
    invoke-virtual {v4, v7}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v7}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Ljava/lang/String;

    .line 80
    .line 81
    const-string v9, "References"

    .line 82
    .line 83
    invoke-virtual {v4, v9}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/lang/String;

    .line 95
    .line 96
    invoke-direct {p1, v3, v7, v4}, Lcom/fsck/k9/storage/messages/ThreadHeaders;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v1, v2, p1}, Lokio/Path$Companion;->doMessageThreading(Landroid/database/sqlite/SQLiteDatabase;JLcom/fsck/k9/storage/messages/ThreadHeaders;)Lcom/fsck/k9/storage/messages/ThreadInfo;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p0, v5}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->saveMessageParts(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/internet/MimeMessage;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    const/4 v9, 0x0

    .line 108
    if-eqz p1, :cond_1

    .line 109
    .line 110
    iget-object v5, p1, Lcom/fsck/k9/storage/messages/ThreadInfo;->messageId:Ljava/lang/Long;

    .line 111
    .line 112
    move-object v7, v5

    .line 113
    :goto_0
    move-object v5, p0

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    move-object v7, v9

    .line 116
    goto :goto_0

    .line 117
    :goto_1
    invoke-virtual/range {v0 .. v8}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->saveMessage(JJLandroid/database/sqlite/SQLiteDatabase;Lapp/k9mail/legacy/mailstore/SaveMessageData;Ljava/lang/Long;Ljava/lang/String;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    iget-object p0, p1, Lcom/fsck/k9/storage/messages/ThreadInfo;->threadId:Ljava/lang/Long;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    move-object p0, v9

    .line 127
    :goto_2
    if-nez p0, :cond_5

    .line 128
    .line 129
    if-eqz p1, :cond_3

    .line 130
    .line 131
    iget-wide v0, p1, Lcom/fsck/k9/storage/messages/ThreadInfo;->rootId:J

    .line 132
    .line 133
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    goto :goto_3

    .line 138
    :cond_3
    move-object p0, v9

    .line 139
    :goto_3
    if-eqz p1, :cond_4

    .line 140
    .line 141
    iget-object v9, p1, Lcom/fsck/k9/storage/messages/ThreadInfo;->parentId:Ljava/lang/Long;

    .line 142
    .line 143
    :cond_4
    invoke-static {v5, v3, v4, p0, v9}, Lokio/Path$Companion;->createThreadEntry(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Long;Ljava/lang/Long;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    invoke-static {v5, v3, v4, v6}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->createOrReplaceFulltextEntry(Landroid/database/sqlite/SQLiteDatabase;JLapp/k9mail/legacy/mailstore/SaveMessageData;)V

    .line 147
    .line 148
    .line 149
    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0
.end method
