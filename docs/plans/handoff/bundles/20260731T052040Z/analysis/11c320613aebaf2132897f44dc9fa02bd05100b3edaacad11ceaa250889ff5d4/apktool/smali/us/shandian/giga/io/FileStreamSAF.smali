.class public final Lus/shandian/giga/io/FileStreamSAF;
.super Lorg/schabi/newpipe/streams/io/SharpStream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final channel:Ljava/nio/channels/FileChannel;

.field public disposed:Z

.field public final file:Landroid/os/ParcelFileDescriptor;

.field public final in:Ljava/io/FileInputStream;

.field public final out:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "rw"

    .line 5
    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lus/shandian/giga/io/FileStreamSAF;->file:Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p2, Ljava/io/FileInputStream;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lus/shandian/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    .line 24
    .line 25
    new-instance p2, Ljava/io/FileOutputStream;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lus/shandian/giga/io/FileStreamSAF;->out:Ljava/io/FileOutputStream;

    .line 35
    .line 36
    invoke-static {p2}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/io/FileOutputStream;)Ljava/nio/channels/FileChannel;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lus/shandian/giga/io/FileStreamSAF;->channel:Ljava/nio/channels/FileChannel;

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "Cannot get the ParcelFileDescriptor for "

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method


# virtual methods
.method public final available()J
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    int-to-long v0, p0

    .line 8
    return-wide v0

    .line 9
    :catch_0
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0
.end method

.method public final canRead()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final canSeek()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final canWrite()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final close()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lus/shandian/giga/io/FileStreamSAF;->disposed:Z

    .line 3
    .line 4
    iget-object v0, p0, Lus/shandian/giga/io/FileStreamSAF;->file:Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lus/shandian/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lus/shandian/giga/io/FileStreamSAF;->out:Ljava/io/FileOutputStream;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->channel:Ljava/nio/channels/FileChannel;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string v0, "FileStreamSAF"

    .line 27
    .line 28
    const-string v1, "close() error"

    .line 29
    .line 30
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final isClosed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lus/shandian/giga/io/FileStreamSAF;->disposed:Z

    .line 2
    .line 3
    return p0
.end method

.method public final length()J
    .locals 2

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->channel:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final read()I
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final read([B)I
    .locals 0

    .line 8
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    invoke-virtual {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 9
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final rewind()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lus/shandian/giga/io/FileStreamSAF;->seek(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final seek(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->channel:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setLength(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->channel:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final skip(J)J
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final write(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->out:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write([B)V
    .locals 0

    .line 7
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->out:Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 8
    iget-object p0, p0, Lus/shandian/giga/io/FileStreamSAF;->out:Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method
