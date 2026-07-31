.class public final Lapp/k9mail/legacy/mailstore/SaveMessageData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final attachmentCount:I

.field public final date:J

.field public final downloadState:Lcom/fsck/k9/mail/MessageDownloadState;

.field public final encryptionType:Ljava/lang/String;

.field public final internalDate:J

.field public final message:Lcom/fsck/k9/mail/internet/MimeMessage;

.field public final previewResult:Lokio/PriorityQueue;

.field public final subject:Ljava/lang/String;

.field public final textForSearchIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/String;JJLcom/fsck/k9/mail/MessageDownloadState;ILokio/PriorityQueue;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 11
    .line 12
    iput-object p2, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->subject:Ljava/lang/String;

    .line 13
    .line 14
    iput-wide p3, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->date:J

    .line 15
    .line 16
    iput-wide p5, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->internalDate:J

    .line 17
    .line 18
    iput-object p7, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->downloadState:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 19
    .line 20
    iput p8, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->attachmentCount:I

    .line 21
    .line 22
    iput-object p9, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->previewResult:Lokio/PriorityQueue;

    .line 23
    .line 24
    iput-object p10, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->textForSearchIndex:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p11, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->encryptionType:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 12
    .line 13
    iget-object v1, p1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->subject:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->subject:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-wide v0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->date:J

    .line 34
    .line 35
    iget-wide v2, p1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->date:J

    .line 36
    .line 37
    cmp-long v0, v0, v2

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-wide v0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->internalDate:J

    .line 43
    .line 44
    iget-wide v2, p1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->internalDate:J

    .line 45
    .line 46
    cmp-long v0, v0, v2

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->downloadState:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 52
    .line 53
    iget-object v1, p1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->downloadState:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 54
    .line 55
    if-eq v0, v1, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget v0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->attachmentCount:I

    .line 59
    .line 60
    iget v1, p1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->attachmentCount:I

    .line 61
    .line 62
    if-eq v0, v1, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->previewResult:Lokio/PriorityQueue;

    .line 66
    .line 67
    iget-object v1, p1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->previewResult:Lokio/PriorityQueue;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_8

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_8
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->textForSearchIndex:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v1, p1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->textForSearchIndex:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_9

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_9
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->encryptionType:Ljava/lang/String;

    .line 88
    .line 89
    iget-object p1, p1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->encryptionType:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-nez p0, :cond_a

    .line 96
    .line 97
    :goto_0
    const/4 p0, 0x0

    .line 98
    return p0

    .line 99
    :cond_a
    :goto_1
    const/4 p0, 0x1

    .line 100
    return p0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

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
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->subject:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    move v2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_0
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-wide v2, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->date:J

    .line 24
    .line 25
    const/16 v4, 0x20

    .line 26
    .line 27
    ushr-long v5, v2, v4

    .line 28
    .line 29
    xor-long/2addr v2, v5

    .line 30
    long-to-int v2, v2

    .line 31
    add-int/2addr v0, v2

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-wide v2, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->internalDate:J

    .line 35
    .line 36
    ushr-long v4, v2, v4

    .line 37
    .line 38
    xor-long/2addr v2, v4

    .line 39
    long-to-int v2, v2

    .line 40
    add-int/2addr v0, v2

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget-object v2, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->downloadState:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/2addr v2, v0

    .line 50
    mul-int/lit8 v2, v2, 0x1f

    .line 51
    .line 52
    iget v0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->attachmentCount:I

    .line 53
    .line 54
    add-int/2addr v2, v0

    .line 55
    mul-int/lit8 v2, v2, 0x1f

    .line 56
    .line 57
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->previewResult:Lokio/PriorityQueue;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->textForSearchIndex:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_1
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->encryptionType:Ljava/lang/String;

    .line 80
    .line 81
    if-nez p0, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    :goto_2
    add-int/2addr v0, v1

    .line 89
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SaveMessageData(message="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

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
    iget-object v1, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->subject:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", date="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->date:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", internalDate="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->internalDate:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", downloadState="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->downloadState:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", attachmentCount="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->attachmentCount:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", previewResult="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->previewResult:Lokio/PriorityQueue;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", textForSearchIndex="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->textForSearchIndex:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", encryptionType="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ")"

    .line 89
    .line 90
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;->encryptionType:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method
