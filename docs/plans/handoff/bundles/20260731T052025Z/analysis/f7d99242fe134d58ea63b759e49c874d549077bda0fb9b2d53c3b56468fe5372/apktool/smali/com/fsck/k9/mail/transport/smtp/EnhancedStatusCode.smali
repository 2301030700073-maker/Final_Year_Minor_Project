.class public final Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final detail:I

.field public final statusClass:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

.field public final subject:I


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->statusClass:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 5
    .line 6
    iput p2, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->subject:I

    .line 7
    .line 8
    iput p3, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->detail:I

    .line 9
    .line 10
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
    instance-of v0, p1, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->statusClass:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->statusClass:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget v0, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->subject:I

    .line 19
    .line 20
    iget v1, p1, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->subject:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget p0, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->detail:I

    .line 26
    .line 27
    iget p1, p1, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->detail:I

    .line 28
    .line 29
    if-eq p0, p1, :cond_4

    .line 30
    .line 31
    :goto_0
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 34
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->statusClass:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

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
    iget v1, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->subject:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget p0, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->detail:I

    .line 15
    .line 16
    add-int/2addr v0, p0

    .line 17
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EnhancedStatusCode(statusClass="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->statusClass:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", subject="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->subject:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", detail="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    iget p0, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedStatusCode;->detail:I

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
