.class public final Lokio/JvmFileHandle;
.super Lokio/FileHandle;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final randomAccessFile:Ljava/io/Closeable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Closeable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lokio/JvmFileHandle;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Lokio/FileHandle;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/Closeable;

    .line 7
    .line 8
    return-void
.end method

.method private final declared-synchronized protectedClose$okio$JvmFileHandle()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/Closeable;

    .line 3
    .line 4
    check-cast v0, Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method private final declared-synchronized protectedClose$okio$NioFileSystemFileHandle()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/Closeable;

    .line 3
    .line 4
    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method private final declared-synchronized protectedRead$okio$JvmFileHandle(J[BII)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/Closeable;

    .line 6
    .line 7
    check-cast v0, Ljava/io/RandomAccessFile;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-ge p1, p5, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/Closeable;

    .line 16
    .line 17
    check-cast p2, Ljava/io/RandomAccessFile;

    .line 18
    .line 19
    sub-int v0, p5, p1

    .line 20
    .line 21
    invoke-virtual {p2, p3, p4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 22
    .line 23
    .line 24
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const/4 v0, -0x1

    .line 26
    if-ne p2, v0, :cond_0

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return v0

    .line 32
    :cond_0
    add-int/2addr p1, p2

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    monitor-exit p0

    .line 37
    return p1

    .line 38
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method

.method private final declared-synchronized protectedRead$okio$NioFileSystemFileHandle(J[BII)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/Closeable;

    .line 6
    .line 7
    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 10
    .line 11
    .line 12
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    :goto_0
    if-ge p2, p5, :cond_1

    .line 18
    .line 19
    iget-object p3, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/Closeable;

    .line 20
    .line 21
    check-cast p3, Ljava/nio/channels/FileChannel;

    .line 22
    .line 23
    invoke-virtual {p3, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 24
    .line 25
    .line 26
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 p4, -0x1

    .line 28
    if-ne p3, p4, :cond_0

    .line 29
    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return p4

    .line 34
    :cond_0
    add-int/2addr p2, p3

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    monitor-exit p0

    .line 39
    return p2

    .line 40
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p1
.end method

.method private final declared-synchronized protectedSize$okio$JvmFileHandle()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/Closeable;

    .line 3
    .line 4
    check-cast v0, Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-wide v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method private final declared-synchronized protectedSize$okio$NioFileSystemFileHandle()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/Closeable;

    .line 3
    .line 4
    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-wide v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method


# virtual methods
.method public final declared-synchronized protectedClose()V
    .locals 1

    .line 1
    iget v0, p0, Lokio/JvmFileHandle;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lokio/JvmFileHandle;->protectedClose$okio$NioFileSystemFileHandle()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-direct {p0}, Lokio/JvmFileHandle;->protectedClose$okio$JvmFileHandle()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized protectedRead(J[BII)I
    .locals 1

    .line 1
    iget v0, p0, Lokio/JvmFileHandle;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct/range {p0 .. p5}, Lokio/JvmFileHandle;->protectedRead$okio$NioFileSystemFileHandle(J[BII)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lokio/JvmFileHandle;->protectedRead$okio$JvmFileHandle(J[BII)I

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

.method public final declared-synchronized protectedSize()J
    .locals 2

    .line 1
    iget v0, p0, Lokio/JvmFileHandle;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lokio/JvmFileHandle;->protectedSize$okio$NioFileSystemFileHandle()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0

    .line 11
    :pswitch_0
    invoke-direct {p0}, Lokio/JvmFileHandle;->protectedSize$okio$JvmFileHandle()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
