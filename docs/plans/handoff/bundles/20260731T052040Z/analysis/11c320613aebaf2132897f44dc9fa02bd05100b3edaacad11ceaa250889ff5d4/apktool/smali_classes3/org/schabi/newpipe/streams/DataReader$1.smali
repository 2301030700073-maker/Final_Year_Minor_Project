.class public final Lorg/schabi/newpipe/streams/DataReader$1;
.super Ljava/io/InputStream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/DataReader;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->$r8$classId:I

    .line 23
    iput-object p1, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canRead()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p0, "SharpStream is not readable"

    .line 17
    .line 18
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method private synthetic transferTo$org$schabi$newpipe$streams$DataReader$1(Ljava/io/OutputStream;)J
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

.method private synthetic transferTo$org$schabi$newpipe$streams$io$SharpInputStream(Ljava/io/OutputStream;)J
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
.method public final available()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;->available()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/32 v2, 0x7fffffff

    .line 15
    .line 16
    .line 17
    cmp-long p0, v0, v2

    .line 18
    .line 19
    if-lez p0, :cond_0

    .line 20
    .line 21
    const p0, 0x7fffffff

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    long-to-int p0, v0

    .line 26
    :goto_0
    return p0

    .line 27
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/streams/DataReader;

    .line 28
    .line 29
    iget p0, p0, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 30
    .line 31
    return p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/streams/DataReader;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/io/InputStream;->markSupported()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 3

    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->$r8$classId:I

    iget-object p0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    .line 41
    check-cast p0, Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;->read()I

    move-result p0

    return p0

    .line 42
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/streams/DataReader;

    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    move-result v0

    if-lez v0, :cond_1

    .line 44
    iget v2, p0, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    :cond_1
    move p0, v0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read([B)I
    .locals 2

    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 39
    iget-object p0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([B)I

    move-result p0

    return p0

    :pswitch_0
    const/4 v0, 0x0

    .line 40
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/schabi/newpipe/streams/DataReader$1;->read([BII)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([BII)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/streams/DataReader;

    .line 16
    .line 17
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/streams/DataReader;->read([BII)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget p2, p0, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 33
    .line 34
    sub-int/2addr p2, p1

    .line 35
    iput p2, p0, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 36
    .line 37
    move p0, p1

    .line 38
    :goto_0
    return p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final skip(J)J
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->skip(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    return-wide p0

    .line 15
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/streams/DataReader;

    .line 16
    .line 17
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    const-wide/16 p0, 0x0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    int-to-long v0, v0

    .line 26
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    long-to-int p1, p1

    .line 35
    iget p2, p0, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 36
    .line 37
    sub-int/2addr p2, p1

    .line 38
    iput p2, p0, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 39
    .line 40
    int-to-long p0, p1

    .line 41
    :goto_0
    return-wide p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/DataReader$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/DataReader$1;->transferTo$org$schabi$newpipe$streams$io$SharpInputStream(Ljava/io/OutputStream;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0

    .line 11
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/DataReader$1;->transferTo$org$schabi$newpipe$streams$DataReader$1(Ljava/io/OutputStream;)J

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
