.class public final Lcom/fsck/k9/mailstore/LocalFolder$14;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedAnimationSpec;
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final this$0:Ljava/lang/Object;

.field public final val$messageId:J

.field public final val$messageIdHeader:Ljava/lang/Object;

.field public final val$messagePartId:J


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messageIdHeader:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;->getDelayMillis()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-interface {p1}, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;->getDurationMillis()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    add-int/2addr p1, p2

    .line 17
    int-to-long p1, p1

    .line 18
    const-wide/32 v0, 0xf4240

    .line 19
    .line 20
    .line 21
    mul-long/2addr p1, v0

    .line 22
    iput-wide p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messagePartId:J

    .line 23
    .line 24
    const-wide/16 p1, 0x0

    .line 25
    .line 26
    iput-wide p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messageId:J

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;JJLjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->this$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messagePartId:J

    iput-wide p4, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messageId:J

    iput-object p6, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messageIdHeader:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 8
    .line 9
    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$6;

    .line 10
    .line 11
    iget-wide v4, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messagePartId:J

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    invoke-direct {v3, v0, v4, v5, v6}, Lcom/fsck/k9/mailstore/LocalFolder$6;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;JI)V

    .line 15
    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-virtual {v2, v7, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 22
    .line 23
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$15;

    .line 24
    .line 25
    invoke-direct {v2, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder$15;-><init>(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v7, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messageId:J

    .line 32
    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    filled-new-array {v3}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "messages_fulltext"

    .line 42
    .line 43
    const-string v5, "docid = ?"

    .line 44
    .line 45
    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->-$$Nest$mhasThreadChildren(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const-string v4, "messages"

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    new-instance v3, Landroid/content/ContentValues;

    .line 58
    .line 59
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v8, "id"

    .line 63
    .line 64
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    .line 70
    .line 71
    iget-wide v0, v0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 72
    .line 73
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "folder_id"

    .line 78
    .line 79
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    .line 81
    .line 82
    const-string v0, "deleted"

    .line 83
    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messageIdHeader:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p0, Ljava/lang/String;

    .line 94
    .line 95
    const-string v0, "message_id"

    .line 96
    .line 97
    invoke-virtual {v3, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string p0, "empty"

    .line 101
    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v3, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 110
    .line 111
    .line 112
    return-object v5

    .line 113
    :cond_0
    invoke-static {v0, p1, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->-$$Nest$mgetEmptyThreadParent(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v6

    .line 117
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    filled-new-array {p0}, [Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string v1, "id = ?"

    .line 126
    .line 127
    invoke-virtual {p1, v4, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :goto_0
    const-wide/16 v2, -0x1

    .line 131
    .line 132
    cmp-long p0, v6, v2

    .line 133
    .line 134
    if-eqz p0, :cond_2

    .line 135
    .line 136
    invoke-static {v0, p1, v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->-$$Nest$mhasThreadChildren(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-eqz p0, :cond_1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_1
    invoke-static {v0, p1, v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->-$$Nest$mgetEmptyThreadParent(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    filled-new-array {p0}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p1, v4, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-wide v6, v2

    .line 159
    goto :goto_0

    .line 160
    :cond_2
    :goto_1
    return-object v5
.end method

.method public getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J
    .locals 0

    .line 1
    const-wide p0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide p0
.end method

.method public getEndVelocity(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 6

    .line 1
    const-wide v1, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/mailstore/LocalFolder$14;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messageIdHeader:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder$14;->repetitionPlayTimeNanos(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    move-object v1, p0

    .line 11
    move-object v4, p3

    .line 12
    move-object v6, p4

    .line 13
    move-object v5, p5

    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/mailstore/LocalFolder$14;->repetitionStartVelocity(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 15
    .line 16
    .line 17
    move-result-object p5

    .line 18
    move-object p0, v0

    .line 19
    invoke-interface/range {p0 .. p5}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messageIdHeader:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder$14;->repetitionPlayTimeNanos(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    move-object v1, p0

    .line 11
    move-object v4, p3

    .line 12
    move-object v6, p4

    .line 13
    move-object v5, p5

    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/mailstore/LocalFolder$14;->repetitionStartVelocity(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 15
    .line 16
    .line 17
    move-result-object p5

    .line 18
    move-object p0, v0

    .line 19
    invoke-interface/range {p0 .. p5}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public isInfinite()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public repetitionPlayTimeNanos(J)J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messageId:J

    .line 2
    .line 3
    add-long v2, p1, v0

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v2, v2, v4

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    return-wide v4

    .line 12
    :cond_0
    add-long/2addr p1, v0

    .line 13
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messagePartId:J

    .line 14
    .line 15
    div-long v2, p1, v0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->this$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Landroidx/compose/animation/core/RepeatMode;

    .line 20
    .line 21
    sget-object v6, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    .line 22
    .line 23
    if-eq p0, v6, :cond_2

    .line 24
    .line 25
    const-wide/16 v6, 0x2

    .line 26
    .line 27
    rem-long v6, v2, v6

    .line 28
    .line 29
    cmp-long p0, v6, v4

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-wide/16 v4, 0x1

    .line 35
    .line 36
    add-long/2addr v2, v4

    .line 37
    mul-long/2addr v2, v0

    .line 38
    sub-long/2addr v2, p1

    .line 39
    return-wide v2

    .line 40
    :cond_2
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    .line 41
    .line 42
    .line 43
    mul-long/2addr v2, v0

    .line 44
    sub-long/2addr p1, v2

    .line 45
    return-wide p1
.end method

.method public repetitionStartVelocity(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messageId:J

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messagePartId:J

    .line 5
    .line 6
    cmp-long p1, p1, v2

    .line 7
    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalFolder$14;->val$messageIdHeader:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v4, p0

    .line 13
    check-cast v4, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    .line 14
    .line 15
    sub-long v5, v2, v0

    .line 16
    .line 17
    move-object v7, p3

    .line 18
    move-object v9, p4

    .line 19
    move-object v8, p5

    .line 20
    invoke-interface/range {v4 .. v9}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    move-object v9, p4

    .line 26
    return-object v9
.end method
