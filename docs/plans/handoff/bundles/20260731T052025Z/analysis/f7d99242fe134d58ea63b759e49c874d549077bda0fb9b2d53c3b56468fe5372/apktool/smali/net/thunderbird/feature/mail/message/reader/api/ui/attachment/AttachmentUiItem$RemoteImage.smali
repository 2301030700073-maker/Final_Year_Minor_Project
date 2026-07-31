.class public final Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;
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

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/fsck/k9/mail/Part;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->id:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->url:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->filename:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->formattedSize:Ljava/lang/String;

    .line 20
    .line 21
    iput-wide p5, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->size:J

    .line 22
    .line 23
    iput-object p7, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->mimeType:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p8, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->part:Ljava/lang/Object;

    .line 26
    .line 27
    iput-boolean p9, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->downloaded:Z

    .line 28
    .line 29
    iput-boolean p10, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->encrypted:Z

    .line 30
    .line 31
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
    instance-of v1, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;

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
    check-cast p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->id:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->url:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->url:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->filename:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->filename:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->formattedSize:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->formattedSize:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-wide v3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->size:J

    .line 58
    .line 59
    iget-wide v5, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->size:J

    .line 60
    .line 61
    cmp-long v1, v3, v5

    .line 62
    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    return v2

    .line 66
    :cond_6
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->mimeType:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->mimeType:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->part:Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->part:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_8

    .line 86
    .line 87
    return v2

    .line 88
    :cond_8
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->downloaded:Z

    .line 89
    .line 90
    iget-boolean v3, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->downloaded:Z

    .line 91
    .line 92
    if-eq v1, v3, :cond_9

    .line 93
    .line 94
    return v2

    .line 95
    :cond_9
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->encrypted:Z

    .line 96
    .line 97
    iget-boolean p1, p1, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->encrypted:Z

    .line 98
    .line 99
    if-eq p0, p1, :cond_a

    .line 100
    .line 101
    return v2

    .line 102
    :cond_a
    return v0
.end method

.method public final getDownloaded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->downloaded:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getEncrypted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->encrypted:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->filename:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFormattedSize()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->formattedSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getId-c0-oeyA()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPart()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->part:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->id:Ljava/lang/String;

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
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->url:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->filename:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    move v3, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :goto_0
    add-int/2addr v0, v3

    .line 28
    mul-int/2addr v0, v1

    .line 29
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->formattedSize:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/16 v3, 0x20

    .line 36
    .line 37
    iget-wide v4, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->size:J

    .line 38
    .line 39
    ushr-long v6, v4, v3

    .line 40
    .line 41
    xor-long/2addr v4, v6

    .line 42
    long-to-int v3, v4

    .line 43
    add-int/2addr v0, v3

    .line 44
    mul-int/2addr v0, v1

    .line 45
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->mimeType:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    move v3, v2

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    :goto_1
    add-int/2addr v0, v3

    .line 56
    mul-int/2addr v0, v1

    .line 57
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->part:Ljava/lang/Object;

    .line 58
    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    :goto_2
    add-int/2addr v0, v2

    .line 67
    mul-int/2addr v0, v1

    .line 68
    iget-boolean v2, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->downloaded:Z

    .line 69
    .line 70
    const/16 v3, 0x4d5

    .line 71
    .line 72
    const/16 v4, 0x4cf

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    move v2, v4

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    move v2, v3

    .line 79
    :goto_3
    add-int/2addr v0, v2

    .line 80
    mul-int/2addr v0, v1

    .line 81
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->encrypted:Z

    .line 82
    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    move v3, v4

    .line 86
    :cond_4
    add-int/2addr v0, v3

    .line 87
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ", url="

    .line 8
    .line 9
    const-string v2, ", filename="

    .line 10
    .line 11
    const-string v3, "RemoteImage(id="

    .line 12
    .line 13
    iget-object v4, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->url:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3, v0, v1, v4, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, ", formattedSize="

    .line 20
    .line 21
    const-string v2, ", size="

    .line 22
    .line 23
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->filename:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->formattedSize:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-wide v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->size:J

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", mimeType="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->mimeType:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", part="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->part:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", downloaded="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->downloaded:Z

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", encrypted="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;->encrypted:Z

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p0, ")"

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method
