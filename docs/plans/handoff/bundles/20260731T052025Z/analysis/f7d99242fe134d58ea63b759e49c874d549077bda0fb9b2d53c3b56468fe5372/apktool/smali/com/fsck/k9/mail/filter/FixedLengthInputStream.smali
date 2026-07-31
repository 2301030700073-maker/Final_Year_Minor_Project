.class public final Lcom/fsck/k9/mail/filter/FixedLengthInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field public final synthetic $r8$classId:I

.field public final inputStream:Ljava/io/InputStream;

.field public length:I

.field public numberOfBytesRead:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->inputStream:Ljava/io/InputStream;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->length:I

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iput v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->numberOfBytesRead:I

    .line 15
    .line 16
    new-instance v1, Ljava/io/PushbackInputStream;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->inputStream:Ljava/io/InputStream;

    .line 23
    .line 24
    iput v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->numberOfBytesRead:I

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->$r8$classId:I

    .line 27
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->inputStream:Ljava/io/InputStream;

    .line 29
    iput p2, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->length:I

    return-void
.end method

.method private synthetic transferTo$com$fsck$k9$mail$filter$FixedLengthInputStream(Ljava/io/OutputStream;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private synthetic transferTo$org$apache$james$mime4j$io$EOLConvertingInputStream(Ljava/io/OutputStream;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/io/InputStream;->available()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->remainingBytes()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->inputStream:Ljava/io/InputStream;

    .line 11
    .line 12
    check-cast p0, Ljava/io/PushbackInputStream;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->close()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iget-object v2, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->inputStream:Ljava/io/InputStream;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, Ljava/io/PushbackInputStream;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget v3, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->numberOfBytesRead:I

    .line 19
    .line 20
    and-int/lit8 v4, v3, 0x1

    .line 21
    .line 22
    const/16 v5, 0xd

    .line 23
    .line 24
    const/16 v6, 0xa

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    if-ne v0, v5, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eq v3, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    if-eq v3, v6, :cond_3

    .line 40
    .line 41
    invoke-virtual {v2, v6}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    and-int/lit8 v1, v3, 0x2

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    if-ne v0, v6, :cond_3

    .line 50
    .line 51
    iget v1, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->length:I

    .line 52
    .line 53
    if-eq v1, v5, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2, v6}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 56
    .line 57
    .line 58
    move v1, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    move v1, v0

    .line 61
    :goto_1
    iput v1, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->length:I

    .line 62
    .line 63
    :goto_2
    return v1

    .line 64
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->remainingBytes()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eq v0, v1, :cond_5

    .line 76
    .line 77
    iget v1, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->numberOfBytesRead:I

    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    iput v1, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->numberOfBytesRead:I

    .line 82
    .line 83
    :cond_5
    move v1, v0

    .line 84
    :goto_3
    return v1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public read([B)I
    .locals 2

    iget v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 85
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->read([BII)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public read([BII)I
    .locals 2

    iget v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->remainingBytes()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->remainingBytes()I

    move-result v0

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 88
    iget p2, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->numberOfBytesRead:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->numberOfBytesRead:I

    :cond_2
    move v1, p1

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public remainingBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->length:I

    .line 2
    .line 3
    iget p0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->numberOfBytesRead:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public skip(J)J
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->remainingBytes()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-long v0, v0

    .line 16
    cmp-long v2, p1, v0

    .line 17
    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    move-wide p1, v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->inputStream:Ljava/io/InputStream;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    cmp-long v0, p1, v0

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    iget v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->numberOfBytesRead:I

    .line 34
    .line 35
    long-to-int v1, p1

    .line 36
    add-int/2addr v0, v1

    .line 37
    iput v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->numberOfBytesRead:I

    .line 38
    .line 39
    :cond_1
    return-wide p1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->inputStream:Ljava/io/InputStream;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget p0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->length:I

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v3, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v1, v3, v4

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    aput-object p0, v3, v1

    .line 33
    .line 34
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v1, "FixedLengthInputStream(in=%s, length=%d)"

    .line 39
    .line 40
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->transferTo$org$apache$james$mime4j$io$EOLConvertingInputStream(Ljava/io/OutputStream;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0

    .line 11
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->transferTo$com$fsck$k9$mail$filter$FixedLengthInputStream(Ljava/io/OutputStream;)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
