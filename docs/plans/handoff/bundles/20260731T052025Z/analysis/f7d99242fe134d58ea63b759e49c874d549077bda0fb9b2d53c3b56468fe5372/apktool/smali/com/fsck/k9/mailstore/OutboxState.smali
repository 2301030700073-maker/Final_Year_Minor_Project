.class public final Lcom/fsck/k9/mailstore/OutboxState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final numberOfSendAttempts:I

.field public final sendError:Ljava/lang/String;

.field public final sendErrorTimestamp:J

.field public final sendState:Lcom/fsck/k9/mailstore/SendState;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/SendState;ILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendState:Lcom/fsck/k9/mailstore/SendState;

    .line 5
    .line 6
    iput p2, p0, Lcom/fsck/k9/mailstore/OutboxState;->numberOfSendAttempts:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendError:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendErrorTimestamp:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/fsck/k9/mailstore/OutboxState;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/mailstore/OutboxState;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendState:Lcom/fsck/k9/mailstore/SendState;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/mailstore/OutboxState;->sendState:Lcom/fsck/k9/mailstore/SendState;

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget v0, p0, Lcom/fsck/k9/mailstore/OutboxState;->numberOfSendAttempts:I

    .line 19
    .line 20
    iget v1, p1, Lcom/fsck/k9/mailstore/OutboxState;->numberOfSendAttempts:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendError:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/fsck/k9/mailstore/OutboxState;->sendError:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendErrorTimestamp:J

    .line 37
    .line 38
    iget-wide p0, p1, Lcom/fsck/k9/mailstore/OutboxState;->sendErrorTimestamp:J

    .line 39
    .line 40
    cmp-long p0, v0, p0

    .line 41
    .line 42
    if-eqz p0, :cond_5

    .line 43
    .line 44
    :goto_0
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 47
    return p0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendState:Lcom/fsck/k9/mailstore/SendState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/fsck/k9/mailstore/OutboxState;->numberOfSendAttempts:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendError:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :goto_0
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    const/16 v1, 0x20

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendErrorTimestamp:J

    .line 30
    .line 31
    ushr-long v4, v2, v1

    .line 32
    .line 33
    xor-long/2addr v2, v4

    .line 34
    long-to-int p0, v2

    .line 35
    add-int/2addr v0, p0

    .line 36
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OutboxState(sendState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendState:Lcom/fsck/k9/mailstore/SendState;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", numberOfSendAttempts="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/fsck/k9/mailstore/OutboxState;->numberOfSendAttempts:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", sendError="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendError:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", sendErrorTimestamp="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/fsck/k9/mailstore/OutboxState;->sendErrorTimestamp:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
