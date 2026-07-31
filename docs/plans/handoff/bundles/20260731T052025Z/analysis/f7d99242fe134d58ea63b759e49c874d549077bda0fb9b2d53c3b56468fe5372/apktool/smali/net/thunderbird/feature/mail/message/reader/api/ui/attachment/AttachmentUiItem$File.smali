.class public final Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;


# instance fields
.field public final downloaded:Z

.field public final encrypted:Z

.field public final filename:Ljava/lang/String;

.field public final formattedSize:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final part:Ljava/lang/Object;

.field public final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/fsck/k9/mail/Part;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->id:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->filename:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->formattedSize:Ljava/lang/String;

    .line 15
    .line 16
    iput-wide p4, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->size:J

    .line 17
    .line 18
    iput-object p6, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->mimeType:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p7, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->part:Ljava/lang/Object;

    .line 21
    .line 22
    iput-boolean p8, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->downloaded:Z

    .line 23
    .line 24
    iput-boolean p9, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->encrypted:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->filename:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->filename:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->formattedSize:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->formattedSize:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-wide v3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->size:J

    .line 47
    .line 48
    iget-wide v5, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->size:J

    .line 49
    .line 50
    cmp-long v1, v3, v5

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->mimeType:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->mimeType:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    return v2

    .line 66
    :cond_6
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->part:Ljava/lang/Object;

    .line 67
    .line 68
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->part:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_7

    .line 75
    .line 76
    return v2

    .line 77
    :cond_7
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->downloaded:Z

    .line 78
    .line 79
    iget-boolean v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->downloaded:Z

    .line 80
    .line 81
    if-eq v1, v3, :cond_8

    .line 82
    .line 83
    return v2

    .line 84
    :cond_8
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->encrypted:Z

    .line 85
    .line 86
    iget-boolean p1, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->encrypted:Z

    .line 87
    .line 88
    if-eq p0, p1, :cond_9

    .line 89
    .line 90
    return v2

    .line 91
    :cond_9
    return v0
.end method

.method public final getDownloaded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->downloaded:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getEncrypted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->encrypted:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->filename:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFormattedSize()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->formattedSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getId-c0-oeyA()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPart()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->part:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->filename:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    :goto_0
    add-int/2addr v0, v3

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->formattedSize:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v3, 0x20

    .line 30
    .line 31
    iget-wide v4, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->size:J

    .line 32
    .line 33
    ushr-long v6, v4, v3

    .line 34
    .line 35
    xor-long/2addr v4, v6

    .line 36
    long-to-int v3, v4

    .line 37
    add-int/2addr v0, v3

    .line 38
    mul-int/2addr v0, v1

    .line 39
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->mimeType:Ljava/lang/String;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    move v3, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :goto_1
    add-int/2addr v0, v3

    .line 50
    mul-int/2addr v0, v1

    .line 51
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->part:Ljava/lang/Object;

    .line 52
    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :goto_2
    add-int/2addr v0, v2

    .line 61
    mul-int/2addr v0, v1

    .line 62
    iget-boolean v2, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->downloaded:Z

    .line 63
    .line 64
    const/16 v3, 0x4d5

    .line 65
    .line 66
    const/16 v4, 0x4cf

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    move v2, v4

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v2, v3

    .line 73
    :goto_3
    add-int/2addr v0, v2

    .line 74
    mul-int/2addr v0, v1

    .line 75
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->encrypted:Z

    .line 76
    .line 77
    if-eqz p0, :cond_4

    .line 78
    .line 79
    move v3, v4

    .line 80
    :cond_4
    add-int/2addr v0, v3

    .line 81
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ", filename="

    .line 8
    .line 9
    const-string v2, ", formattedSize="

    .line 10
    .line 11
    const-string v3, "File(id="

    .line 12
    .line 13
    iget-object v4, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->filename:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3, v0, v1, v4, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->formattedSize:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", size="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-wide v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->size:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", mimeType="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->mimeType:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", part="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->part:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", downloaded="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->downloaded:Z

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", encrypted="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;->encrypted:Z

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p0, ")"

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method
