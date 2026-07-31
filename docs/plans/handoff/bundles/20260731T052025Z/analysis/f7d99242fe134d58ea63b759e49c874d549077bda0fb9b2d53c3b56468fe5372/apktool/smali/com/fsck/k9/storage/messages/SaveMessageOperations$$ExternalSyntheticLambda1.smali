.class public final synthetic Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Lapp/k9mail/legacy/mailstore/SaveMessageData;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/storage/messages/CopyMessageOperations;JJLapp/k9mail/legacy/mailstore/SaveMessageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda1;->f$1:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda1;->f$2:J

    .line 9
    .line 10
    iput-object p6, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda1;->f$3:Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 4
    .line 5
    new-instance v2, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-wide v4, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda1;->f$1:J

    .line 9
    .line 10
    iget-wide v6, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda1;->f$2:J

    .line 11
    .line 12
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v3, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast v1, Lkotlin/Pair;

    .line 24
    .line 25
    iget-object v2, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v8, v2

    .line 28
    check-cast v8, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda1;->f$3:Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 38
    .line 39
    move-wide v9, v6

    .line 40
    move-object v7, v1

    .line 41
    move-wide v1, v4

    .line 42
    move-wide v3, v9

    .line 43
    move-object v6, p0

    .line 44
    move-object v5, p1

    .line 45
    invoke-virtual/range {v0 .. v8}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->replaceMessage(JJLandroid/database/sqlite/SQLiteDatabase;Lapp/k9mail/legacy/mailstore/SaveMessageData;Ljava/lang/Long;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move-wide v6, v3

    .line 49
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
